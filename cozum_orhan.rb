def yildiz (n)
  i=1
  b=1
  while i<=n
    bosluk=n-((n+1)/2)+1-b
      1.upto(bosluk) do print " " end
      print "*"
      1.upto(i-2) do  print " " end
      if (i != 1) then print "*" end
      puts
    i+=2
    b+=1
  end
 
 i=n-2
 b=1
  
  while i>=1
    # bosluk=b
      1.upto(b) do print " " end
      print "*"
      1.upto(i-2) do print " " end
      if (i != 1) then print "*" end
      puts
    i-=2
    b+=1
  end
  gets
end


yildiz 27 
