======
SaveVM
======

A solution on VirtualBox's VMS before the host go poweroff.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The idea is to make a simple solution to prevent Virtual Machines to shutdown or break when the host is going down.

This is a small "solution" add the script path to /etc/init.d/halt.local this is not the idea but is just for now.

TODO list
~~~~~~~~~~

* Add small base script (bash). (added)
* Work around with systemd on OpenSUSE: You can read about it here: http://www.forosuse.org/forosuse/showpost.php?p=164799&postcount=4 (is in spanish) 
