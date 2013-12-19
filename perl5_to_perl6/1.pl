my $five = 5;
print "an interpolating string, just like in perl $five\n";
say 'say() adds a newline to the output, just like in perl 5.10';
my @array = 1, 2, 3, 'foo';
my $sum = @array[0] + @array[1];
if $sum > @array[2] 
{
      say "not executed";
}
my $number_of_elems = @array.elems;     # or +@array
my $last_item = @array[*-1];
my %hash = foo => 1, bar => 2, baz => 3;
say %hash{'bar'};                       # 2
say %hash<bar>;                         # same with auto-quoting
# this is an error: %hash{bar}
# (it tries to call the subroutine bar(), which is not declared
