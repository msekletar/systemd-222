#  This file is part of systemd.
#
#  systemd is free software; you can redistribute it and/or modify it
#  under the terms of the GNU Lesser General Public License as published by
#  the Free Software Foundation; either version 2.1 of the License, or
#  (at your option) any later version.

# See tmpfiles.d(5) for details

L /etc/os-release - - - - ../usr/lib/os-release
L /etc/localtime - - - - ../usr/share/zoneinfo/UTC
L+ /etc/mtab - - - - ../proc/self/mounts
m4_ifdef(`ENABLE_RESOLVED',
L! /etc/resolv.conf - - - - ../run/systemd/resolve/resolv.conf
)m4_dnl
C /etc/nsswitch.conf - - - -
m4_ifdef(`HAVE_PAM',
C /etc/pam.d - - - -
)m4_dnl