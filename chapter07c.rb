# encoding: utf-8

lineWidth = 80
index = [
	['数', '1'],
	['文字', '23'],
	['変数', '47']
]

puts '目 次'.center lineWidth
index.each_with_index {|value, key|
	chapter_num = key.to_i + 1
	chapter = chapter_num.to_s + '章: ' + value[0]
	page = 'p.' + value[1]
	puts chapter.ljust(lineWidth/2) + page.rjust(lineWidth/2)
}
