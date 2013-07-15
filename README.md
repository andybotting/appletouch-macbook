This is a Makefile for simple building and installation of the appletouch
driver used in older PowerBook/MacBook/MacBook Pro machines:

* PowerBooks Feb 2005, iBooks G4
* PowerBooks Oct 2005
* Core Duo MacBook & MacBook Pro
* Core2 Duo MacBook & MacBook Pro
* Core2 Duo MacBook3,1

Specifically, I use this on a 2007 MacBookPro2,2 which greatly enhances the
trackpad.

It replaces the default settings with these values to reduce the see-saw or
zig-zag nature of the trackpad by default

#define ATP_FUZZ 0
#define ATP_THRESHOLD 3

The installation path may be specific to Arch Linux only, but the general
concept should work on any distribution with kernel headers installed.

This method was originally described in this Ubuntu forums post:
 * http://ubuntuforums.org/showthread.php?t=813884&page=6#post11973897
