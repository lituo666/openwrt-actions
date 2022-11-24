# openwrt actions

支持的设备有：X64、电犀牛R68S、电犀牛R66S、斐讯N1

不支持IPv6

## 使用说明

`all-openwrt-ci.yml` 可以同时编译多个固件。

常用工具

```
Administration -> htop
Network -> iperf3
Network -> SSH -> openssh-sftp-server
Utilities -> Editors -> vim-full
Utilities -> tree
```

添加 helloworld

```
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
```

添加 OpenClash

```
git clone --depth=1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash
```

添加 AdGuard Home

```
git clone --depth=1 https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
```

添加应用过滤

```
git clone --depth=1 https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
```

添加Alist

```
git clone --depth=1 https://github.com/sbwml/luci-app-alist package/alist
```

添加晶晨宝盒

```
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic
```

更新对应插件

```
git -C package/helloworld pull
git -C package/luci-app-openclash pull
git -C package/luci-app-adguardhome pull
git -C package/OpenAppFilter pull
git -C package/alist pull
git -C package/luci-app-amlogic pull
```