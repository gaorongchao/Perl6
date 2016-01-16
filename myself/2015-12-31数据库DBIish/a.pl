use DBIish;
my $dbh =DBIish.connect('mysql',:host<localhost>,:port(3306),:database<elvis_store>,:user<root>,:password<3884788588>);
my $sth = $dbh.do(q:to/STATEMENT/);
select * from t2
  );
  STATEMENT

$sth.execute;
my $row = $sth.fetchrow_arrayref();
