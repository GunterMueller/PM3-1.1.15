(* Copyright (C) 1994, Digital Equipment Corporation                         *)
(* Digital Internal Use Only                                                 *)
(* All rights reserved.                                                      *)
(*                                                                           *)
(* Last modified on Mon May 30 19:00:57 PDT 1994 by najork                   *)
(*       Created on Mon May 30 19:00:44 PDT 1994 by najork                   *)


INTERFACE GroupGOProxy;

FROM GroupGO IMPORT T;

(* The Proxy Maker (PM) procedure for GroupGO.T is 
   registered by assigning it to MkProxyT. *)

VAR 
  MkProxyT : PROCEDURE (x : T) := NIL;

END GroupGOProxy.
