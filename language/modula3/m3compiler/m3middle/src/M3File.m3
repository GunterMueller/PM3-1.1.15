(* Copyright (C) 1994, Digital Equipment Corporation           *)
(* All rights reserved.                                        *)
(* See the file COPYRIGHT for a full description.              *)
(*                                                             *)
(* File: M3File.m3                                             *)
(* Last modified on Sun Mar  3 17:54:04 PST 1996 by heydon     *)
(*      modified on Mon Apr 17 09:01:53 PDT 1995 by kalsow     *)

UNSAFE MODULE M3File;

IMPORT FS, File, OSError, Text;

TYPE
  BufPtr = UNTRACED REF ARRAY BufferLength OF File.Byte;

PROCEDURE Read (f: File.T; VAR(*OUT*)buf: Buffer; len: BufferLength): INTEGER
  RAISES {OSError.E} =
  VAR ptr: BufPtr;
  BEGIN
    IF (NUMBER (buf) <= 0 OR len <= 0) THEN RETURN 0 END;
    ptr := LOOPHOLE (ADR (buf[0]), BufPtr);
    RETURN f.read (SUBARRAY (ptr^, 0, MIN (len, NUMBER (buf))),
                   mayBlock := TRUE);
  END Read;

PROCEDURE Copy (src, dest: TEXT) RAISES {OSError.E} =
  VAR
    rd, wr : File.T := NIL;
    len    : INTEGER;
    buf    : ARRAY [0..4095] OF File.Byte;
  BEGIN
    TRY
      rd := FS.OpenFileReadonly (src);
      wr := FS.OpenFile (dest);
      LOOP
        len := rd.read (buf);
        IF (len <= 0) THEN EXIT; END;
        wr.write (SUBARRAY (buf, 0, len));
      END;
    FINALLY
      IF (wr # NIL) THEN wr.close (); END;
      IF (rd # NIL) THEN rd.close (); END;
    END;
  END Copy;

PROCEDURE CopyText (src, dest: TEXT;  eol: TEXT) RAISES {OSError.E} =
  VAR
    rd, wr  : File.T := NIL;
    in_len  : INTEGER;
    out_len : INTEGER;
    ch      : File.Byte;
    in_buf  : ARRAY [0..1023] OF File.Byte;
    out_buf : ARRAY [0..1023] OF File.Byte;
    eol_buf : ARRAY [0..7] OF File.Byte;
    eol_last: INTEGER;
  BEGIN
    eol_last := Text.Length (eol) - 1;
    FOR i := 0 TO eol_last DO eol_buf[i] := ORD(Text.GetChar (eol, i)); END;
    TRY
      rd := FS.OpenFileReadonly (src);
      wr := FS.OpenFile (dest);
      out_len := 0;
      LOOP
        in_len := rd.read (in_buf);
        IF (in_len <= 0) THEN EXIT; END;
        FOR i := 0 TO in_len-1 DO
          IF (out_len >= NUMBER (out_buf)) THEN
            wr.write (out_buf);
            out_len := 0;
          END;
          ch := in_buf [i];
          IF (ch = ORD ('\r')) THEN
            (* eat it. *)
          ELSIF (ch = ORD ('\n')) THEN
            FOR i := 0 TO eol_last DO
              IF (out_len >= NUMBER (out_buf)) THEN
                wr.write (out_buf);
                out_len := 0;
              END;
              out_buf [out_len] := eol_buf[i];
              INC (out_len);
            END;
          ELSE
            out_buf [out_len] := ch;
            INC (out_len);
          END;
        END;
      END;
      IF (out_len > 0) THEN wr.write (SUBARRAY (out_buf, 0, out_len)); END;
    FINALLY
      IF (wr # NIL) THEN wr.close (); END;
      IF (rd # NIL) THEN rd.close (); END;
    END;
  END CopyText;

PROCEDURE IsEqual (a, b: TEXT): BOOLEAN RAISES {OSError.E} =
  VAR
    f1, f2     : File.T := NIL;
    buf1, buf2 : ARRAY [0..1023] OF File.Byte;
    len1, len2 : INTEGER;
  BEGIN
    TRY
      f1 := FS.OpenFileReadonly (a);
      f2 := FS.OpenFileReadonly (b);
      IF (f1.status().size # f2.status().size) THEN RETURN FALSE; END;
      LOOP
        len1 := f1.read (buf1);
        len2 := f2.read (buf2);
        IF (len1 # len2) THEN RETURN FALSE; END;
        IF (len1 <= 0)   THEN RETURN TRUE;  END;
        FOR i := 0 TO len1-1 DO
          IF buf1[i] # buf2[i] THEN RETURN FALSE END;
        END;
      END;
    FINALLY
      IF f1 # NIL THEN f1.close () END;
      IF f2 # NIL THEN f2.close () END;
    END;
  END IsEqual;

PROCEDURE IsDirectory (path: TEXT): BOOLEAN =
  VAR s: File.Status;
  BEGIN
    TRY
      s := FS.Status (path);
      RETURN (s.type = FS.DirectoryFileType);
    EXCEPT OSError.E =>
      RETURN FALSE;
    END;
  END IsDirectory;

PROCEDURE IsReadable (path: TEXT): BOOLEAN =
  (* We don't really check for readablitiy, just for existence *)
  BEGIN
    TRY
      EVAL FS.Status (path);
      RETURN TRUE;
    EXCEPT OSError.E =>
      RETURN FALSE;
    END;
  END IsReadable;

BEGIN
END M3File.

