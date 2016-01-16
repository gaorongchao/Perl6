# 1
## 1.1翻译来源
perl6intro.com/#_introduction

## 行业术语
Perl 6：是一个一门语言。

Rakudo：Perl 6 的编译器。

Rakudobrew:是Perl6的安装管理工具，下面安装我们就会用到。

Panda:负责Perl6 的模块安装工作。


## 安装Perl 6
### Linux下的安装：
```
1、安装Rakudobrew:https://github.com/tadzik/rakudobrew
2、安装Rakudo:按照以上步骤按照Rakudobrew以后，运行以下命令：rakudobrew build moaar.
3、安装Panda:在命令行运行以下命令：rakudobrew build-panda
```
### Windows 下的安装
```
1、从以下网址：http://rakudo.org/downloads/start/ 下载最新的.MSI版本，
2、安装完成以后，把C:\rakudo\bin 添加到环境变量中。
```
### docker 
```
1、下载官方的docker镜像:docker pull rakudo-star
2、利用这个镜像启动一个容器：docker run -it rakudo-star
```

## 运行Perl 6 程序
有两种方式可以运行该程序
第一:REPL,交互式编程环境。
第二：把代码写到文件中，然后后缀推荐用.pl6，从命令行中运行，perl filename.pl6.


REPL大部分时候用来运行部分简单的程序。对于大部分多于一行的程序，还是推荐写在文件里，然后运行。


## 编辑器
这篇文章的作者推荐了Atom，大家随意。

## 1.6 Hello World!
```
say 'hello world';
```

### 1.7 语法概述
Perl 6 很自由，在大多数时候，你可以随意使用空白。
语句：
表达式：

