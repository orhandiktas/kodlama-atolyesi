#!/usr/bin/env ruby

n = ARGV[0].to_i
bosluk = (n/2).to_i
yildiz = 1

while(yildiz <= n)
	bosluk.times do  print ' ' end
	yildiz.times do  print '*' end
	puts
	bosluk-=1
	yildiz+=2
end

yildiz-=4
bosluk+=2

while(yildiz > 0)
	bosluk.times do  print ' ' end
	yildiz.times do  print '*' end
	puts
	bosluk +=1
	yildiz-= 2
end
