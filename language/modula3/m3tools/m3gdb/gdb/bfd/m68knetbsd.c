/* BFD back-end for NetBSD/m68k a.out-ish binaries.
   Copyright (C) 1990, 91, 92, 94, 95, 1997 Free Software Foundation, Inc.

This file is part of BFD, the Binary File Descriptor library.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

#define BYTES_IN_WORD	4
#define TARGET_IS_BIG_ENDIAN_P

#define TARGET_PAGE_SIZE 0x2000

#define DEFAULT_ARCH	bfd_arch_m68k
#define MACHTYPE_OK(mtype) \
  ((mtype) == M_68020 || (mtype) == M_68K_NETBSD || (mtype) == M_68K4K_NETBSD \
   || (mtype) == M_UNKNOWN)

#define MY(OP) CAT(m68knetbsd_,OP)
/* This needs to start with a.out so GDB knows it is an a.out variant.  */
#define TARGETNAME "a.out-m68k-netbsd"

#include "netbsd.h"