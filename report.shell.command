1/ hung@Tora:~$ echo hello world
hello world

2/ hung@Tora:~$ passwd
Changing password for hung.
(current) UNIX password: 
Enter new UNIX password: 
Retype new UNIX password: 
passwd: password updated successfully

3/ hung@Tora:~$ hostname
Tora

4/ hung@Tora:~$ arch
x86_64

5/ hung@Tora:~$ uname -a
Linux Tora 4.4.0-31-generic #50-Ubuntu SMP Wed Jul 13 00:07:12 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux

6/ hung@Tora:~$ dmesg
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Initializing cgroup subsys cpuacct
[    0.000000] Linux version 4.4.0-31-generic (buildd@lgw01-16) (gcc version 5.3.1 20160413 (Ubuntu 5.3.1-14ubuntu2.1) ) #50-Ubuntu SMP Wed Jul 13 00:07:12 UTC 2016 (Ubuntu 4.4.0-31.50-generic 4.4.13)
[    0.000000] Command line: BOOT_IMAGE=/vmlinuz-4.4.0-31-generic root=/dev/mapper/ubuntu--vg-root ro quiet splash
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   Centaur CentaurHauls

7/ hung@Tora:~$ uptime
 00:33:49 up 24 min,  1 user,  load average: 0,53, 0,41, 0,39

8/ hung@Tora:~$ who am i

9/ hung@Tora:~$ whoami
hung

10/ hung@Tora:~$ who
hung     tty7         2017-02-10 00:09 (:0)

11/ hung@Tora:~$ id
uid=1000(hung) gid=1000(hung) groups=1000(hung),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),113(lpadmin),128(sambashare)

12/ hung@Tora:~$ last
hung     tty7         :0               Fri Feb 10 00:09    gone - no logout
reboot   system boot  4.4.0-31-generic Fri Feb 10 00:09   still running
hung     tty7         :0               Thu Feb  9 23:20 - down   (00:47)
reboot   system boot  4.4.0-31-generic Thu Feb  9 23:20 - 00:07  (00:47)

wtmp begins Thu Feb  9 23:20:32 2017
13/ hung@Tora:~$ finger
Login     Name             Tty      Idle  Login Time   Office     Office Phone
hung      NGuyen Vu Hung   tty7       26  Feb 10 00:09 (:0)

14/ hung@Tora:~$ w
 00:36:53 up 27 min,  1 user,  load average: 0,58, 0,40, 0,38
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
hung     tty7     :0               00:09   27:24   1:18   0.14s /sbin/upstart -

15/ hung@Tora:~$ date
Thứ sáu, 10 Tháng hai năm 2017 00:43:11 ICT

