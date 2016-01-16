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
				my $label1 = GTK::Simple::Label.new(text => "点开门上面的文本就变成开门，点关门就是本对话框关闭"),
				# CheckButton是单选框
				my $check_button_man = GTK::Simple::CheckButton.new(label => "男"),
				my $check_button_woman = GTK::Simple::CheckButton.new(label => "女")
    ),
);

$app.border_width = 100;

# 打开的时候设置'关门'按钮不可以点击
$second.sensitive = False;

# 点击'开门'的时候,只能点一次，点击一次以后，就不可点击，而关门则可以点击。
$button.clicked.tap({ .sensitive = False; $second.sensitive = True ;$label.text = "开门"});


# 点击退出app
$second.clicked.tap({ $app.exit; });

$app.run;
