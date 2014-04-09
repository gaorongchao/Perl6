# Perl6 学习
## 第一章：Perl 6 如何安装
* 在window下：

现在Perl 6还在不断更新版本。
从官网上下载一个MSI文件，双击安装就可以了：
http://rakudo.org/downloads/star/
安装完成以后，把安装的路径添加到Path中。具体添加方法，自己百度。
添加好以后，在命令行中输入perl6 a.pl就可以运行程序了。


* linux下
从网站上下载rakudo-star---.tar.gz,解压以后，文件中README.txt.
按照说明安装即可。

报错:查看一下报错信息中缺少的模块，比如我这里缺少了Fatal.pm


## Perl 6 如何运行程序
Perl 6 的解释器就是我们从上面网址中下载得的：rakudo。
把perl6.exe添加到环境变量中。默认的安装路径是
```
c:\rakudo\bin\ 
```
Linux下直接
```
% perl6 
```
### 如何运行程序
#### 交互提示模式下编写代码
我们在window打开命令行界面，输入perl6，不加任何的参数，就可以出来一个交互式的编程环境。

####  脚本运行方式
只需要切换到有脚本文件夹perl6 a.pl
就可以得到运行结果。和以前perl5一样。

## First：Using Perl6翻译

