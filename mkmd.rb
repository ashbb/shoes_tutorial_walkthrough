# mkmd.rb

def read_src name
  IO.readlines('./src/' + name).collect{|c| "\t" + c}
end

file = 'README.md'
lines = IO.readlines(file)
open(file, 'w') do |f|
  lines.each do |line|
    new_line = line
    line.sub(/^# *(.*\.rb)/){new_line = read_src($1)}
    f.puts new_line
  end
end
