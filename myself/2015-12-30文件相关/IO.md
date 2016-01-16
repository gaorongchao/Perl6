# Perl6 文件相关内容
以下内容，主要来源于以下网页的提取。
http://doc.perl6.org/type/IO 
还有下面：
https://doc.perl6.org/language/io

昨天我们简单说了'slurp' 和'spurt'这两个读文件和写文件的函数。
但是 Perl6 相关还有很多的相关函数。
## print 函数 
标准输出，和 Perl5 一样。也就是需要手动加上换行符。
```
print "Hi there!\n";
```
## say 函数 
第一点是say可以自动在末尾加上换行符。
第二点是可以直接打印数组和hash。
那肯定有人问了，print不是也可以打印吗？那我们就看看他们的区别：
```
my @array = qw/1 2 53 31/;
print @array; # 结果：125331
say @array;   # 结果：[1 2 53 31]

my %hash = a=>1, b=>2, c=>3;
print %hash; # a       1c      3b      2
say %hash; # a => 1, b => 2, c => 3 

```
## note 函数 
note 和say差不多，不过他只会在标准错误输出中打印他的结果。
```
if ("path/to/pirate/treasure".IO.e) {
say "Found pirate treasure!";
}
else {
note "Could not find pirate treasure.  Are you sure it exists?";
}
```
## dd 函数 
ddshi Data Dumper的简版。
```
my $a = 42;
my %hash = "a" => 1, "b" => 2, "c" => 3;
dd %hash, $a;
# 结果
# Hash %hash = {:a(1), :b(2), :c(3)}
# Int $a = 42
```
## prompt 函数 
prompt是用来输出一段文字，并且会等待用户输入点什么东西，然后以Enter结束。
一下脚本将你输入的文字赋值给$name，当然$name 是不带着换行符的。
```
my $name = prompt("Hi, What's your name?");
say $name;
```
如果放到以前Perl5会怎么做呢？
```
print "hello,what's your name\n";
my $name = <>;
print "your name is $name\n";
```
## open 函数
### 文件的读写模式
open 有几种读写模式：:r,:w,:a,:rw
:r 是只读模式,类似 perl5 中的'<'
:w 是只写模式,如果文件不存在，就创建，如果存在就覆盖。类似Perl5中的'>';
: a 是追加模式,如果文件不存在就创建文件，如果存在就在文件的后面追加内容。类似Per5中的'>>';


```
# 打开一个句柄,:r是只读模式，所以不能够往下面的$fh中写入文件
my $fh=open("a.txt",:r);


# 查看句柄的的信息
say $fh; # IO::Handle<a.txt>(opened, at octet 0))>


say $fh.get(); # 读取文件的第一行
say $fh.get(); # 读取文件的第二行
$fh.close; # 关闭句柄

# 一行行的读取整个文件
$fh=open("a.txt",:r);
while (my $line = $fh.get())
{
	say $line;
}
$fh.close;
# 当然你也可以像以前一样close $fh;

# 还可以这么玩
for 'a.txt'.IO.lines -> $line {
	say $line;
}
# 当然你也可以把所有行存入一个数组

```
### 文件的编码选项
```
# 二进制方式打开
open my $fh = open("a.txt",:bin);
# 选择编码的方式
# 默认是unicode
my $fh = open("a.txt", enc => "Unicode");
# utf8
my $fh = open("a.txt", enc => "utf8");
my $fh = open("a.txt", enc => "utf-8");
# latin1
my $fh = open("a.txt", enc => "latin1");
```

### 换行符
这个选项用来指明文本的EOL(end of line);
默认的是'\n','\r\n','\r'

```
# explicitly use CR-LF as EOL character
my $fh = open("a.txt", nl => "\r\n");)
```
### chomp
在perl5 中我们都知道chomp($line);
可以去掉一行中的换行符，在这里功能也一样
默认是去掉的，当然你也可以设置为不去掉。
```
# do not remove newline characters from input
my $fh = open("path/to/file", chomp => False);
say $fh.get();     # returns line including newline char))
```
## slurp 函数,文件读取
```
# 用slurp 一次性的读取整个文件到变量中
my $text_contents = slurp 'a.txt';
say $text_contents;
# 也可以这样


```
## 写入文件
### 一行行写
```
my $fh = open('b.txt',:w);
my @array = [1,2,4,32];
for @array -> $i {
	# 这两种方式都可以
	$fh.print("$i\n");
	$fh.say($i);
}
$fh.close;

```
### spurt 函数
简单粗暴的方式
```
my @array = [1,2,4,32];
spurt 'c.txt',@array;
# spurt也有几个参数
# :append 追加在文件的后面
my @array = [1,2,4,32];
spurt 'c.txt',@array,:append;

```
## shell 函数
运行系统命令
```
my @files=shell 'ls -ls';
say @files;
my $date = shell 'date';
say $date;
```

## 文件和文件夹
say dir 
say dir "/Documents";
mkdir 创建文件夹
rmdir 删除文件夹
IO.e checks if the directory/file exist.
IO.f checks if the path is a file.
IO.d checks if the path is a directory.
