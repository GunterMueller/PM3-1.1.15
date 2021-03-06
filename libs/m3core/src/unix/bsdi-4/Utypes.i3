(* Copyright (C) 1994, Digital Equipment Corporation.         *)
(* All rights reserved.                                       *)
(* See the file COPYRIGHT for a full description.             *)
(*                                                            *)
(* Last modified on Sat Jan  7 14:47:05 PST 1995 by kalsow    *)
(*      modified on Sat Apr 16 by rrw1000@hermes.cam.ac.uk    *)
(*      modified on Mon Jan 11 14:34:58 PST 1993 by muller    *)
(* ow Sun Nov  6 17:12:47 MET 1994                            *)

INTERFACE Utypes;

FROM Ctypes IMPORT 
	long, unsigned_long, int, unsigned_int, short, unsigned_short,
        char, unsigned_char;

(*** <sys/types.h> ***)

(*
 * Basic system types and major/minor device constructing/busting macros.
 *)

(* major part of a device *)
PROCEDURE major (x: int): int;

(* minor part of a device *)
PROCEDURE minor (x: int): int;

(* make a device number *)
PROCEDURE makedev (x, y: int): dev_t;

TYPE
  u_char  = unsigned_char;
  u_short = unsigned_short;
  u_int   = unsigned_int;
  uint    = unsigned_int;               (* sys V compatibility *)
  u_long  = unsigned_long;
  ushort  = unsigned_short;             (* sys III compat *)

  int8_t    = char;
  u_int8_t  = u_char;
  int16_t   = short;
  u_int16_t = u_short;
  int32_t   = int;
  u_int32_t = u_int;
  int64_t   = RECORD val: ARRAY [0..1] OF int32_t; END;
  u_int64_t = int64_t;

(* #ifdef vax *)
  struct__physadr = RECORD r: ARRAY [0..0] OF int; END;
  physadr         = UNTRACED REF struct__physadr;

  struct_label_t = RECORD val: ARRAY [0..13] OF int; END;
  label_t        = struct_label_t;
(*#endif*)

  quad         = int64_t;
  quad_t       = int64_t;
  daddr_t      = int32_t; 
  caddr_t      = ADDRESS;
  ino_t        = u_int32_t;
  swblk_t      = int32_t;
  size_t       = unsigned_int;
  time_t       = long;
  dev_t        = u_int32_t;
  off_t        = int32_t;       (* Really int64_t, but we wrap all uses *)
  off_pad_t    = int32_t;       (* Padding to fill out off_t to 64 bits *)
  key_t        = long;
  clock_t      = u_long;
  mode_t       = u_int16_t;
  nlink_t      = u_int16_t;
  uid_t        = u_int32_t;
  pid_t        = int;
  gid_t        = u_int32_t;

  tcflag_t     = u_long;
  cc_t         = u_char;
  speed_t      = long;

CONST
  NBBY = 8;                           (* number of bits in a byte *)

  (*
   * Select uses bit masks of file descriptors in longs.
   * These macros manipulate such bit fields (the filesystem macros use chars).
   * FD_SETSIZE may be defined by the user, but the default here
   * should be >= NOFILE (param.h).
   *)
  FD_SETSIZE = 256;

  (* How many things we'll allow select to use. 0 if unlimited *)
  MAXSELFD = 256;

TYPE
  fd_mask        = long;
 
CONST
  NFDBITS = BYTESIZE (fd_mask) * NBBY;      (* bits per mask (power of 2!)*)
  NFDSHIFT = 5;                             (* Shift based on above *)

PROCEDURE howmany (x, y: int): int;

TYPE
  struct_fd_set = RECORD
       fds_bits: ARRAY [0 .. 
                        (FD_SETSIZE + NFDBITS - 1) DIV NFDBITS -1] OF fd_mask;
    END;
  fd_set = struct_fd_set;

PROCEDURE FD_SET   (n: int; p: UNTRACED REF fd_set): int;
PROCEDURE FD_CLEAR (n: int; p: UNTRACED REF fd_set): int;
PROCEDURE FD_ISSET (n: int; p: UNTRACED REF fd_set): int;
PROCEDURE FD_ZERO  (p: UNTRACED REF fd_set);

END Utypes.
