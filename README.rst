======
SaveVM
======

.. note::

   **Archived / historical project.** SaveVM is no longer maintained.
   This repository is preserved as a record of a small workaround written
   for an openSUSE + VirtualBox shutdown problem around 2014.

What it did
===========

SaveVM was a small Bash script intended to protect running VirtualBox virtual
machines when the Linux host was shutting down.

Before poweroff it used ``VBoxManage`` to find running VMs and execute
``controlvm <vm> savestate`` for each one, allowing VirtualBox to restore them
later instead of having them interrupted by the host shutdown.

The original motivation was this openSUSE/VirtualBox issue:

https://bugzilla.novell.com/show_bug.cgi?id=830675

Historical implementation
=========================

The workaround installed itself through ``/etc/init.d/halt.local`` and logged
saved VMs to ``/var/log/savevm.log``.

That implementation belongs to the SysV-init compatibility era and should not
be considered a current Linux shutdown integration. Modern Linux distributions,
including openSUSE, use systemd. A modern implementation would need to be
designed as an appropriate systemd unit and tested against current VirtualBox
versions.

Project status
==============

The original script is intentionally left unchanged as historical code.

An attempt to migrate the idea to systemd was started but never completed
(see issue #1). Since the original use case is no longer active for the author,
the project is now closed rather than being rewritten for a platform it is no
longer used on.

The repository remains public for historical/reference purposes.

Timeline
========

* 2014: initial Bash workaround and ``halt.local`` integration.
* 2016: last repository activity.
* 2026: project formally closed as historical/unmaintained.
