require "stringio"

buffer = StringIO.new
$stdout = buffer

puts "this would ordinarily be displayed right away"

$stdout = STDOUT
buffer.rewind

puts "the buffer captured: #{buffer.read}"