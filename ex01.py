f = open("./virtual.txt","r")
f2 = open("./virtual2.txt","w")
lines = f.readlines()
for line in lines:
    line = '\"' + line
    line = line.replace('\n','\",\n')
    f2.writelines(line)
f.close()
f2.close()