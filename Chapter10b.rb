# encoding: utf-8
$nestingDepth = 0
$indent = '  '

def log desc
	puts $indent*$nestingDepth + '<---開始'
  puts $indent*$nestingDepth + desc
	$nestingDepth += 1
  yield
  yield
	$nestingDepth -= 1
	puts $indent*$nestingDepth + '終了--->'
end

log 'test' do
  log 'BBQ' do
  	true
  end
end
