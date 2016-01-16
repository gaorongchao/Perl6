use v6;

# 获取列表的最后一个元素
sub last_elem(@list){
	@list[*-1];
}

say last_elem(<a b c d e>)
