#!/usr/bin/env ruby

def bosluklu_yaz(bosluk, c)
  print c
  bosluk.times { print ' ' }
  print c
  bosluk.times { print ' ' }
  puts c
end

def defa_yaz(n,c)
  n.times { print c }
  puts
end

def pencere(sayi, c)
  bosluk = sayi - 2
  duz_cizgi = (bosluk)*2 + 3
  ara_yildiz = (sayi-3)/2
  defa_yaz duz_cizgi, c
  ara_yildiz.times { bosluklu_yaz bosluk, c }
  defa_yaz duz_cizgi, c
  ara_yildiz.times { bosluklu_yaz bosluk, c }
  defa_yaz duz_cizgi, c
end

def main
  pencere ARGV[0].to_i, '*'
end

main
