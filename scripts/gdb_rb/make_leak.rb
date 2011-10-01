$: << File.join(File.dirname(__FILE__),"..")

require "leaky_code"

$leaky_code = LeakyCode.new()

loop do
  $leaky_code.start_allocating
  sleep(20)
end

