======
SaveVM
======

A solution on VirtualBox's VMS before the host go poweroff.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The idea is to make a simple solution to prevent Virtual Machines to shutdown or break when the host is going down.

This is a small "solution" add the script path to /etc/init.d/halt.local this is not the idea but is just for now.

The idea is to run it manually the first time to see how it works:

<pre>
 ./savevm.sh 
missing: fixing for next time!
Doing savestate of opensuse11.3 at jue oct 16 17:29:42 UYST 2014
0%...10%...20%...30%...40%...50%...60%...70%...80%...90%...100%
Doing savestate of windows at jue oct 16 17:29:42 UYST 2014
0%...10%...20%...30%...40%...50%...60%...70%...80%...90%...100%
Doing savestate of maria at jue oct 16 17:29:42 UYST 2014
0%...10%...20%...30%...40%...50%...60%...70%...80%...90%...100%
</pre>

UPDATE(s)!
~~~~~~~~~~

* Add small base script (bash).
* Now it writes itself on halt.local. 16/10/14
