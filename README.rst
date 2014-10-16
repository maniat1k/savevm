======
SaveVM
======

A solution on VirtualBox's VMS before the host go poweroff.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The idea is to make a simple solution to prevent Virtual Machines to shutdown or break when the host is going down.

This is a small "solution" add the script path to /etc/init.d/halt.local this is not the idea but is just for now.

UPDATE(s)!
~~~~~~~~~~

* Add small base script (bash).
* Now it writes itself on halt.local. 16/10/14
