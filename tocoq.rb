#!/usr/bin/env ruby

$table = {
	⊤: 'True',
	⊥: 'False',
	∧: '/\\',
	∨: '\\/',
	¬: '~',
	→: '->',
	↔: '<->',
	⊢: '->',
	⊨: '->',
}.map { |k, v| [k, v.to_s] }.to_h

def convert(str)
	conv = ''
	for i in 0...str.length
		if $table.has_key?(str[i].chr.to_sym)
			conv << $table.fetch(str[i].chr.to_sym)
		else
			conv << str[i].chr
		end
	end
	return conv
end

def output(str)
	puts str
	IO.popen('pbcopy', 'w') { |f| f << str }
end


if !ARGV.empty?
	str = ARGV.join(' ')
	conv = convert(str)
	output(conv)
	return
end

while true
	print '>> '
	str = gets.chomp
	if str == 'exit' || str == 'quit'
		return
	end
	conv = convert(str)
	output(conv)
end
