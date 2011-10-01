$: << File.join(File.dirname(__FILE__),'..')

require "rrprof"
require "more_complex_oo"

@more_complex_oo = MoreComplex.new()

100.times do
  @more_complex_oo.start()
end

sleep(20)

100.times do
  @more_complex_oo.start()
end
