
已加入的

|原名|中文|
|:----|:----|
|luci-app-accesscontrol  | 访问时间控制
|luci-app-arpbind  	     | IP/MAC绑定
|luci-app-autoreboot  	 | 定时重启
|luci-app-ddns   	     | 动态域名 DNS（集成阿里DDNS客户端）
|luci-app-diskman        | 磁盘管理
|luci-app-alist          | alist
|luci-app-filetransfer   | 文件传输（可web安装ipk包）
|luci-app-firewall   	 | 添加防火墙
|luci-app-frpc           | 内网穿透客户端
|luci-app-frps           | 内网穿透服务端
|luci-app-netdata        | Netdata 实时监控（图表）
|luci-app-nlbwmon   	 | 网络带宽监视器
|luci-app-ramfree  	     | 释放内存
|luci-app-sfe  	         | Turbo ACC网络加速（集成FLOW,BBR,NAT,DNS...
|luci-app-cifs-mount     | 支持smb挂载
|luci-app-upnp           | 通用即插即用UPnP（端口自动转发）
|luci-app-watchcat  	 | 断网检测功能与定时重启
|luci-app-adguardhome    | AdGuard Home
|luci-app-openclash      | Open Clash
|luci-app-oaf            | 应用过滤
|luci-app-wireguard      | wireguard
|luci-app-ssr-plus       | 科学上网
|luci-app-ttyd           | 网页终端
|luci-app-zerotier       | zerotier
|                        |
|Utilities --> Shells --> bash | bash
|Utilities --> Editors --> vim-full | vim-full
|Utilities --> Terminal --> tmux | tmux
|Utilities --> lrzsz      | lrzsz
|Network --> iperf3       | iperf3 局域网测速

必须项

```
Target System  -> QEMU ARM Virtual Machine
Subtarget      -> QEMU ARMv8 Virtual Machine (cortex-a53)
Target Profile -> Default
Target Images  -> tar.gz


Kernel modules -> Wireless Drivers -> kmod-brcmfmac(SDIO)
                                   -> kmod-brcmutil
                                   -> kmod-cfg80211
                                   -> kmod-mac80211


Languages -> Perl
             -> perl-http-date
             -> perlbase-file
             -> perlbase-getopt
             -> perlbase-time
             -> perlbase-unicode
             -> perlbase-utf8


Network -> WirelessAPD -> hostapd-common
                       -> wpa-cli
                       -> wpad-basic
        -> iw


Utilities -> Compression -> bsdtar、pigz
          -> Disc -> blkid、fdisk、lsblk、parted
          -> Filesystem -> attr、btrfs-progs(Build with zstd support)、chattr、dosfstools、
                           e2fsprogs、f2fs-tools、f2fsck、lsattr、mkf2fs、xfs-fsck、xfs-mkfs
          -> Shells -> bash
          -> acpid、coremark、coreutils(-> coreutils-base64、coreutils-nohup)、gawk、getopt、
             losetup、pv、tar、uuidgen
```