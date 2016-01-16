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
$app.run;
