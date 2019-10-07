# <font color=#599991>Mac配置手册</font>

## <font color=#5BBBBB>1. 建立mac系统账号（主账号、备用账号）</font>

## <font color=#5BBBBB>2. 启用苹果账号</font>
&ensp; | first acount: | second acount:
-|-|-
acount:|<p><font color=#CCCCCC>#######</font>@qq.com</p>|<font color=#CCCCCC>#######</font>@163.com</p>
password:|<font color=#777777>*************</font>|<font color=#777777>*************</font>

## <font color=#5BBBBB>3. 常用Applications</font>
   - 办公软件<br>
    a. WPS<br>
   - 社交软件<br>
    a.wechat、QQ<br>
   - 浏览器<br>
    a. chrome<br>
   - 解压软件<br>
    a. iZip Unarchiver<br>
   - 绘画软件<br>
    a. MediBangPaintPro<br>
    b. wacom配置<br>
   - 代码编辑软件<br>
    a. Xcode-beta<br>
    b. Visual Studio Code<br>
   - Adobe系列软件<br>
    a. Lr、Ai、Ps<br>
    b. An、Pr、Ae<br>
    c. Dw<br>
    d. Id<br>
    e. Adobe Acrobat Reader DC<br>
   - Autodesk系列软件
   - 夜神手机模拟器
   - MagicaVoxel
   - ……

## <font color=#5BBBBB>4. 终端安装</font>
1. 安装brew
    ```shell
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
    ```
2. 更新vim
    ```shell
    brew install vim
    ```
3. 安装npm
    ```shell
    brew install npm
    ```
4. 安装cnpm
    ```shell
    npm install -g cnpm --registry=https://registry.npm.taobao.org
    ```
5. 安装git
    ```shell
    brew install git
    ```
    建仓库
    ```shell
    cd <--指定文件夹路径-->
    git init
    git clone <--https://github.com/User/repositories.git-->
    ```
6. 配置svn
    ```shell
    cd <--指定文件夹路径-->
    svnadmin create <--指定文件夹路径-->
    cd <--conf文件夹所在路径-->
    vim svnserve.conf
    ```
    在文本里取消相应注释
    修改前|修改后
    -|-
    # anon-access = read|anon-access = read
    # auth-access = write|auth-access = write
    # password-db = passwd|password-db = passwd
    # authz-db = authz|authz-db = authz
    ```shell
    vim passwd
    ```
    在文本里[users]下方添加用户名和密码
    ```vim
    [users]
    firstuser = psw1
    seconduser = psw2
    #user 为 账号
    #psw 为 密码
    ```
    ```shell
    vim authz
    ```
    在文本里[groups]下方添加组别并注明权限
    ```vim
    [groups]
    topgroup=user1,user2
    # 用户1与用户2在topgroup组别里
    [/]#可修改为其它资源库对象
    @topgroup rw
    # topgroup组别享有所有资源库的读写权
    ```
    ```shell
    svnserve -d -r <--svn所在路径-->
    cd <--svn所在路径-->
    svn checkout //<--https://github.com/User/repositories.git-->
    ```
    &copy; jianshu.com 愤怒的折袖丶
7. something for python such as
    ```
    pip install xlrd
    pip install xlwt
    pip install xlutils
    ```
8. other such as rename
    ```shell
    brew install rename
    ```


## <font color=#5BBBBB>5. 虚拟机|双系统</font>
1. 虚拟机

    <a href='http://www.baidu.com/baidu.php?url=af0000aF4eAvq9HI8k98CVBYwm_E33hJq-8ilH47WtobAKrkAwRjiFJdAHhpPsbuEi16g3aotWL98I-1ivUwh5CMIofIZOLE0iN9Cta1jq8RlQ9_Ld5TV0-28rvTyzMQhNySinrluGDyTpgPl_pPQvDVQp7h2tgtQdhCskc-Pkb_5VB0-Lwosiv_Wg870h8b13c7ouCbn4Fcgevgz6.Db_ipymxQVIhqhKnPiTvW2Bjw-Y_ssQDk_eQPLA1x_4X5QIJyAp7B8E_LU-0.U1Yz0ZDqUy7WYrMD3oEl_QQg_ZIGUWDs0ZKGm1Ys0ZfqUy7W_QQg_PjGkr2eS6KGUHYznjf0u1dEugK1n0KdpHdBmy-bIykV0ZKGujYk0APGujY1rjc0UgfqnH0kPdtknjD4g1nknWKxn1msnfKopHYs0ZFY5H6LnsK-pyfqnHfYPdtznH03nNtzrHRzndtzrHRvr7tzrHcznNtznWDvn0KBpHYkPHNxnHR3g1csP0KVm1YkrjnYrjfYn1D4g1Dsnj7xnH0zg100TgKGujYs0Z7Wpyfqn0KzuLw9u1Ys0A7B5HKxn0K-ThTqn0KsTjYs0A4vTjYsQW0snj0snj0s0AdYTjYs0AwbUL0qn0KzpWYs0Aw-IWdsmsKhIjYs0ZKC5H00ULnqn0KBI1YknfK8IjYs0ZPl5fK9TdqGuAnqTZnVmLf0pywW5Nwj0ZwdT1Y1rj6LnjTdPHTdrjDvPW64njR10ZF-TgfqnHRLnjfvn1RsPjn1n0K1pyfqmHcsnHfsnH0snjDsP1wBnfKWTvYqwWfLPHm3nYfzrDuAPYFKfsK9m1Yk0ZK85H00TydY5H00Tyd15H00XMfqn0KVmdqhThqV5HKxn7tsg100uA78IyF-gLK_my4GuZnqn7tsg1n4rjTzPHKxn0Ksmgwxuhk9u1Ys0AwWpyfqn0K-IA-b5iYk0A71TAPW5H00IgKGUhPW5H00Tydh5HDv0AuWIgfqn0KGTvP_5H00XMK_Ignqn0K9uAu_myTqnfK_uhnqn0KEIjYs0AqzTZfqnanscznsc10WnansQW0snj0snansczns0APzm1YYnW6s&word=mac虚拟机安装win10&ck=7422.14.9999.388.330.440.153.548&shh=www.baidu.com&sht=84053098_3_dg&us=2.0.1.0.5.2586.0'>如果确实安装不了（没有广告费）</a>
2. 双系统
   
    <a href='https://raw.githubusercontent.com/Xuan-Yu-San/mac/master/doublesystem/index.html'>安装教程</a>

## <font color=#5BBBBB>6. 库建立</font>
- 标准配置库
  1. 字体库
  2. 图片库
  3. 图标库
  4. 动图库
  5. 音乐库
  6. 视频库
- 事项库
  1. 备忘录库
  2. 密码库
  3. 会员库
  4. 资料库
- 软件库存取库
  1.  办公软件模版库
  2.  各软件对应存储库
- 代码库
  1.  python代码库
  2.  c++代码库
  3.  Web代码库
- 学习库
  1.  日语学习库
  2.  英语学习库
- 共享库
  1. git
  2. svn
- 兴趣库

## <font color=#5BBBBB>7. ...args</font>


