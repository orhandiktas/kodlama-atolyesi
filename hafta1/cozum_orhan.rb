#FIXME: Çift sayı girildiğinde kayma var

def yildiz (n)
  # i: üst yarısında, yazdırılacak * sayısı  -  i+=2
  i=1
  # b: üst yarısında, yazdırılacak boşluk (" ") sayısını hesaplamak için  -  b+=1
  b=1
  while i<=n
    bosluk=n-((n+1)/2)+1-b
      1.upto(bosluk) do |a| print " " end
      1.upto(i) do |a| print "*" end
      puts
    i+=2
    b+=1
  end
 
  # i: alt yarısında, yazdırılacak * sayısı  -  i-=2
  i=n-2
  # b: alt yarısında, yazdırılacak boşluk (" ") sayısı  -  b+=1
  b=1
  
  while i>=1
    # bosluk=b
      1.upto(b) do |a| print " " end
      1.upto(i) do |a| print "*" end
      puts
    i-=2
    b+=1
  end
  gets
end


yildiz 23