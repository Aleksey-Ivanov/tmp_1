# ruby calc.rb powered by Aleksey Ivanov
print 'Enter the 1-st znachenie = '
zn_1 = gets.chomp.to_f


print 'Enter the operator : '
operator = gets.chomp

raise "Error! :operator" unless ['+','-','/','*'].include?(operator)

print 'Enter the 2-nd znachenie = '
zn_2 = gets.chomp.to_f

if ( (operator == '/') && (zn_2 == 0) )
  puts "-"*26
	puts "- Error! :delenie na 0  -"
	puts "-"*26
else
	puts
	puts "#{zn_1}".rjust(10)
	puts operator+"#{zn_2}".rjust(9)
	puts "-"*10
	puts eval("#{zn_1}#{operator}#{zn_2}").to_s.rjust(10)
end
