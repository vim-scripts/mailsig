To install, place mail_sig.vim in your ftplugin directory, and getsig
somewhere on your $PATH.  getsig must be marked as executable (UNIX
systems).

The getsig program reads your ~/.sigs file, and prints out a brief
description of each signature with a number.  The Vim plugin then
prompts for the signature number you wish to insert.  getsig -h prints
the list of descriptions, and getsig -s signum prints out the
specified signature.  Calling of getsig is automatically handled by
the plugin file.

The format of the ~/.sigs file is a text file, each line of which is a
2-element Python list.  The first element is a string brief
description of the signature, and the second element is the signature
itself.  All standard escape sequences are supported (the lines are
actually just passed on to the Python interpreter). Each entry must be
on exactly one line. E.g., 

['Views on life', 'Views on life:\nAccording to an optimist, the glass is half full.\nAccording to a pessimist, the glass is half empty.\nAccording to an engineer, the glass is twice the size it needs to be.']
['EMACS error', 'From /usr/include/sys/errno.h:\n#define EMACS      666       /* Editor too large */']
['Lost my mind', 'I haven\'t lost my mind - it\'s backed up on tape somewhere.\n                -- OpenBSD fortune database']

It should work out-of-the-box on any UNIX system with Python (should
work on anything >= 1.5) and Vim > 6.0 (I've tested it on OpenBSD and
Gentoo Linux), but has only been tested in a console Vim.  It does NOT
need Python support compiled into Vim.  If someone gets it working on
GVim (don't know if anything needs to change), or in Windows, let me
know and I'll update it accordingly!

Mike Dean klaatu@evertek.net
