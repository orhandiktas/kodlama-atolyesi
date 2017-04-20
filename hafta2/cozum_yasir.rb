# boşlukları hesaplamak için
def first_space(turn, half)
	return (turn-half).abs
end
# yıldızları hesaplamak için
def first_star
	return 1
end
def last_star(n, turn)
	return (turn == n || turn == 1)?0:1
end
def last_space(n,turn,half)
	# buraya kural gelecek
	return ( n - 2 ) - 2*( half - turn ).abs
end
# verilen char'ı, n kere basar
def kere_bas(n, chr = ' ')
	n.times{ print chr }
end

def make_empty_diamond(n)
	# yarı nokta hesaplanır
	half = (n+1)/2

	1.upto(n) do |turn|
		kere_bas( first_space(turn, half))
		kere_bas( first_star, '*')
		kere_bas( last_space(n,turn, half))
		kere_bas( last_star(n, turn), '*')
		puts
	end		
end

make_empty_diamond 5
