in_file = open("/media/kaleem/Entertainment/Dexfiles/file.txt", "a")
with open("/media/kaleem/Entertainment/Dexfiles/Dexdr_output/dex.log") as f:
    for line in f:
        if "data offset:" in line:
           a=(line.split('offset:', 1)[-1]).rstrip()
with open("/media/kaleem/Entertainment/Dexfiles/Dexdr_output/dex.log") as f:
    for line in f:
        if "map offset:" in line:
           b=(line.split('offset:', 1)[-1]).rstrip()
c=(int(b,16)-int(a,16))
starting_point=int(a,16)
ending_point=(2*c)
counter=0;
with open("/media/kaleem/Entertainment/Dexfiles/m.txt") as g:
    while (counter < starting_point):
         c = g.read(2)
         counter=counter+1
   
    counter=0;
    while (counter < ending_point):
          dz=g.read(2)
          with open("/media/kaleem/Entertainment/Dexfiles/Instructions.txt") as I:
           for line in I:
             if dz in line:
              cz=line.split()
              count = 0
              in_file.write(cz[0]),
              while count <= (len( cz) -1)-2:
                  ind=int(cz[count+2])/4
                  count1 = 1
                  while count1 <= ind:
                    g.read(1),
                    count1=count1 + 1
                    counter=counter + 1;
                  count = count + 1
          counter=counter+2;
               

               
              
              


