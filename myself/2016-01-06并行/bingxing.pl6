my @array1 = (0..49999);
my @array2 = (2..50001);

my $promise1 = start @array1.map( {$_ + 1} );
#my $promise2 = start @array2.map( {$_ - 1} );

my @result1 = await $promise1;
#my @result2 = await $promise2;

#say @result1 == @result2;

say now - INIT now;
