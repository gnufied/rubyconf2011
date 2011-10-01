$: << File.join(File.dirname(__FILE__),"..")

require "leaky_code"

leaky_code = LeakyCode.new()
GC::Profiler.enable()

100.times do
  leaky_code.start_allocating()
  puts GC::Profiler.report()
end
