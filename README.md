OS Experiment 4 by PB15111599
=============================

利用 CVE-2016-5195 提权，分别修改 /etc/bash.bashrc 和SUID文件 /usr/bin/passwd 。 最终，除了完成指定任务外会完全恢复所修改的文件和状态。 

## 测试时需确保在ubuntu 16.04 x86_64环境中，具体而言
* /etc/bash.bashrc文件存在，并且root shell会自动执行之
* /usr/bin/passwd文件存在，并且权限是默认的4755：-rwsr-xr-x
* 上述文件长度分别大于各自注入的指令长
* 当前用户具有修改执行run.sh时文件夹的权利
* 其余默认满足但一般不会有变化的条件，如执行在64位系统上

