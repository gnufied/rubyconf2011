require "memprof"

$: << File.join(File.dirname(__FILE__),"..")

require "leaky_code"

Memprof.start()
leaky_code = LeakyCode.new()
leaky_code.start_allocating()


puts "---------- Before GC ----------"
Memprof.stats()

puts "---------- After GC ----------"
GC.start()

Memprof.stats()


puts "---------- Allocate some more ----------"
leaky_code.start_allocating()

puts "---------- Before GC ----------"
Memprof.stats()

puts "---------- After GC ----------"
GC.start()

Memprof.stats()


