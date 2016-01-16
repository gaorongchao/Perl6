use LWP::Simple;

#my $html = LWP::Simple.get('http://www.itoumi.com/bxt/productList.json?tabType=0&pageNum=1&pageSize=1&orderParam=yearIrr&orderRule=desc');
my $html = LWP::Simple.get('http://www.baidu.com');

spurt 'baidu.html' ,$html;

say $html;
