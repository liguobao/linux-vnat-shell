# linux 虚拟网卡设置

## 命令

```shell

sudo ifconfig eno1:2 192.168.10.10 up

sudo ifconfig eno1:2 down

```

## 使用教程

- find_default_nat_name 寻找当前系统的默认网卡，可能是eth0/eno1

- create_echo_vnat 创建一个虚拟网卡，创建结果写入echo_vnat.txt文件中

## 相关资料

- [理解Linux虚拟网卡设备tun/tap的一切](https://www.junmajinlong.com/virtual/network/all_about_tun_tap/)
- [Linux添加虚拟网卡的多种方法](https://blog.51cto.com/11811268/1896308)
- [Linux 虚拟网卡技术：Macvlan](https://cloud.tencent.com/developer/article/1495440)
- [如何在 Linux 上检查网卡信息](https://linux.cn/article-12165-1.html)
- [Configuring virtual network interfaces in Linux](https://linuxconfig.org/configuring-virtual-network-interfaces-in-linux)
-[Working with Network Interfaces in Java](https://www.baeldung.com/java-network-interfaces)