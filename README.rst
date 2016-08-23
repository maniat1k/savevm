======
SaveVM
======

A solution on VirtualBox's VMS before the host go poweroff.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The idea is to make a simple solution to prevent Virtual Machines to shutdown or break when the host is going down.
https://bugzilla.novell.com/show_bug.cgi?id=830675

This is a small "solution" add the script path to /etc/init.d/halt.local this is not the idea but is just for now.

How-to use.
~~~~~~~~~~~
Run it manually the first time to see how it works: the script will right itself on /etc/init.d/halt.local to start doing what it supost to do.
Remember the savestate of the machines will be saved on a temporal file on /tmp, but the automatic starttup is as always worked on virtualbox.



UPDATE(s)!
~~~~~~~~~~

* Add small base script (bash).
* Now it writes itself on halt.local. 16/10/14
