def calc_star(stat, print_count)
  ( stat ) ? print_count +1 : 1;
end

def calc_space(stat, print_count)
  ( stat ) ? 0 : print_count;
end
def calc_last_star
  1
end
def star_space(stat, half)
  bas( calc_star(stat, half), '*')
  bas( calc_space(stat, half), ' ')
end
def bas(n, chr = ' ')
  n.times{ print "#{chr}" }
end
def window( n )
  n -= 1 if n.even?
  half = ( n + 1 ) / 2
  print_count = 2*(half-2)
  1.upto(n) do |num|
    stat = (num == 1 || num == half || num == n )
    star_space( stat, print_count )
    star_space( stat, print_count )
    bas(calc_last_star, '*')
    puts
  end
end

window(7)
