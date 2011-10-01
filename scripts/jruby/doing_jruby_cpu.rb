$: << File.join(File.dirname(__FILE__),"..")

require "more_complex_oo"

100.times do
  MoreComplex.new().start()
  sleep(10)
end


