(* Copyright (C) 1994, Digital Equipment Corporation *)
(* All rights reserved.                              *)
(* See the file COPYRIGHT for a full description.    *)

(* This interface exports the configuration information
   used by m3build and quake.  These constants were defined
   when Modula-3 was installed. *)

INTERFACE M3Config;

CONST  (* misc. configuration *)
  M3_VERSION       = "1.1.15";
  M3_VERSION_DATE  = "Tue Sep  5 17:16:07 EDT 2000";
  TARGET    = "LINUXLIBC6";
  OS_TYPE   = "POSIX";
  WORD_SIZE = "32BITS";
  BUILD_DIR = "LINUXLIBC6";
  PATH_SEP  = "/";

CONST (* installation directories *)
  BIN_INSTALL   = "/usr/local/pm3/bin";
  LIB_INSTALL   = "/usr/local/pm3/lib/m3/LINUXLIBC6";
  DOC_INSTALL   = "/usr/local/pm3/doc/pm3";
  PKG_INSTALL   = "/usr/local/pm3/lib/m3/pkg";
  MAN_INSTALL   = "/usr/local/pm3/man";
  EMACS_INSTALL = "/usr/local/pm3/lib/elisp";
  HTML_INSTALL  = "/usr/local/pm3/lib/m3/www";

(* On some systems (e.g. AFS) you must install public files
   in a different place from where you use them.  The paths
   below specify where to find the installed files. *)

CONST
  BIN_USE   = "/usr/local/pm3/bin";
  LIB_USE   = "/usr/local/pm3/lib/m3/LINUXLIBC6";
  DOC_USE   = "/usr/local/pm3/doc/pm3";
  PKG_USE   = "/usr/local/pm3/lib/m3/pkg";
  MAN_USE   = "/usr/local/pm3/man";
  EMACS_USE = "/usr/local/pm3/lib/elisp";
  HTML_USE  = "/usr/local/pm3/lib/m3/www";

END M3Config.
