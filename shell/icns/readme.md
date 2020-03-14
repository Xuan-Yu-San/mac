# 处理icns文件的shell脚本
## png(1024*1024) --> icns
1. 下载.sh脚本
2. 存放到/usr/local/bin中
3. 赋予权限
```sh
$ chmod 777 /usr/local/bin/icns.sh
```
4. 使用
```sh
$ cd {图片所在目录}
$ icns.sh
{图片名称} {生成图片名称}
```
## icns --> png(1024*1024)
