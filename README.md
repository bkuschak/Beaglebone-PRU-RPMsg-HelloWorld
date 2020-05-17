
# Beaglebone-PRU-RPMsg-HelloWorld
Exchange messages between PRU (Programmable Real-Time Unit) and Linux System using RemoteProc and RPMsg

This project runs on: Linux beaglebone 4.4.91-ti-r133 #1 SMP Tue Oct 10 05:18:08 UTC 2017 armv7l GNU/Linux  
Also tested on Debian Buster: Linux version 4.19.94-ti-r42 (voodoo@x3-am57xx-beagle-x15-2gb) #1buster SMP PREEMPT Tue Mar 31 19:38:29 UTC 2020

How to use:

Copy the content of this repository in the folder debian@beaglebone:~/src/Beaglebone-PRU-RPMsg-HelloWorld/  
Or clone it: 
```
mkdir -p src && cd src && git clone <this_repo>
```

Navigate to the src/Beaglebone-PRU-RPMsg-HelloWorld folder, and type:

```
make clean          // (to delete the old executable files)
make                // (to compile the Linux user space program)
sudo make install   // (to install the programs for PRU0 and PRU1)
sudo ./startpru.sh  // (to load the PRU firmware)
sudo ./hello        // (to start the Linux user space program - sudo might be unnecessary)
```

The user space program hello sends a message to each PRU from where the message is returned and printed to the console.

This project is based on the TI PRU examples

 https://git.ti.com/pru-software-support-package/pru-software-support-package/trees/master

and the project

Beaglebone: remoteproc "Hello,World" by Andrew B. Wright
http://theduchy.ualr.edu/?p=996

There were problems to run the program on the latest debian 2017-10-10 Stretch IoT build and the latest TI pru-software-support-package.
Alex Bagehot managed to get it running with the latest distributions
https://groups.google.com/forum/#!category-topic/beagleboard/support/4P9NdglojBo

His recommendations proved to work.
