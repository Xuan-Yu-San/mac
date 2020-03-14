# 处理icns文件的shell脚本
## png(1024*1024) --> icns && icns --> png(1024*1024)
1. 下载`.sh`脚本
2. 存放到`/usr/local/bin`中
3. 赋予权限
```sh
$ chmod 777 /usr/local/bin/icns.sh
```
4. 使用
```sh
$ cd {文件所在目录}
$ icns.sh
{输入文件名称} {输出文件名称(不需要后缀)}
```
根据文件后缀生成文件，生成的文件在原文件所在目录

5. 效果

![img](./demo.png)
