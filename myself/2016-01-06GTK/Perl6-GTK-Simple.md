# Perl GTK::Simple
以下内容在Ubuntu:14.04下测试成功。

晚上闲来无事，在看Perl 6 的模块，看到一个GTK::Simple，索性就按照他的例子尝试了一下。
https://modules.perl6.org/在

## 安装GTK3 library
```
sudo apt-get install libgtk-3-dev
```

## 试用
https://github.com/perl6/gtk-simple

上面的网址里面有几个小例子，下载下来，然后运行就可以了。
当然比较简陋。
然后我照着上面的例子，自己摸索了一下，后面会不断更新。
```
use v6;
use lib 'lib';
use GTK::Simple;


# 新建一个app，并且命名
my GTK::Simple::App $app .= new(title => "门");


# 设置app页面的内容
# GTK::Simple::VBox
# GTK::Simple::Button
$app.set_content(
    GTK::Simple::VBox.new(
				# Button是按钮
        my $button = GTK::Simple::Button.new(label => "开门"),
        my $second = GTK::Simple::Button.new(label => "关门"),
				# Label 是文本
				my $label = GTK::Simple::Label.new(text => "开门or关门"),
				my $label1 = GTK::Simple::Label.new(text => "点'开门'上面的文本就变成开门，点'关门'就是本对话框关闭"),
				# CheckButton是单选框
				my $check_button_man = GTK::Simple::CheckButton.new(label => "男"),
				my $check_button_woman = GTK::Simple::CheckButton.new(label => "女")
    )
);

$app.border_width = 100;

# 打开的时候设置'关门'按钮不可以点击
$second.sensitive = False;

# 点击'开门'的时候,只能点一次，点击一次以后，就不可点击，而关门则可以点击。
$button.clicked.tap({ .sensitive = False; $second.sensitive = True ;$label.text = "开门"});


# 点击退出app
$second.clicked.tap({ $app.exit; });

$app.run;
```

下面的程序用使用了格框。
```
use v6;
use lib 'lib';
use GTK::Simple;
my GTK::Simple::App $app .= new(title => "门");
$app.set_content(
		GTK::Simple::Grid.new(
		[0,0,1,1] => GTK::Simple::Button.new(label => "左上"),
		[1,0,1,1] => GTK::Simple::Button.new(label => "右上"),
		[0,1,1,1] => GTK::Simple::Button.new(label => "左下"),
		[1,1,1,1] => GTK::Simple::Button.new(label => "右下"),
		)
);
```
