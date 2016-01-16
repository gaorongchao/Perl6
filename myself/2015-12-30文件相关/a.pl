print "hello,what's your name\n";
my $name = <>;
print "your name is $name\n";

my	$in_in = "";
open  my $in, '<', $in_in or die "Fail open $in_in file\n";
while(my $line=<$in>)
{
	chomp $line;
}
close  $in;
