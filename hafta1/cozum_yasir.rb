# boşlukları hesaplamak için
def calc_space(turn, half)
	return (turn-half).abs
end
# yıldızları hesaplamak için
def calc_star(turn, half)
	return 2*(half-(turn-half).abs)-1
end
# verilen char'ı, n kere basar
def kere_bas(n, chr = ' ')
	n.times{ print chr }
end

def make_diamond(n)
	# yarı nokta hesaplanır
	half = (n+1)/2

	1.upto(n) do |turn|
		kere_bas(calc_space(turn, half))
		kere_bas(calc_star(turn, half), '*')
		puts
	end		
end

make_diamond 5
