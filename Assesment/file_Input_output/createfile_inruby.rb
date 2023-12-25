aFile = File.new("Test1.txt","a+")  
if aFile
  aFile.syswrite("This is Ruby language file handling\n")
end
aFile.close

File.open("Test1.txt","r+") do |f|
  f.each_line do |line|
    puts line
  end  
end
