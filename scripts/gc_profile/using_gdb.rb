require "objspace"

$: << File.join(File.dirname(__FILE__),"..")
require "leaky_code"

$leaky_code = LeakyCode.new()

sleep(5)
$leaky_code.start_allocating()
GC.start()

sleep(2)


