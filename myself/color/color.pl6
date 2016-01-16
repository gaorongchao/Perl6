use Color;
my $white        = Color.new(255, 255, 255);
my $almost_black = Color.new('#111');
say Color.new(:hsv<152 80 50>).hex; # convert HSV to HEX
say "$white is way lighter than $almost_black";

my $lighter_pink = Color.new('#ED60A2').lighten(20);
my $lighter_pink = Color.new('#ED60A2') ◐ 20; # same as above

my $saturated_pink = Color.new('#ED60A2').saturate(20);
my $saturated_pink = Color.new('#ED60A2') 🞉 20; # same as above

# Create an inverted colour scheme:
$_ = .invert for @colours_in_my_colourscheme;

use Color::Operators; # this gives us some ops to use on Color objects
my $gray = $white / 2;
say $gray.hex; # prints "#808080"
say $almost_black + 25; # prints "42, 42, 42"
