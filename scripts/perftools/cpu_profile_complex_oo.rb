require "perftools"

$: << File.join(File.dirname(__FILE__),"..")

require "more_complex_oo"

PerfTools::CpuProfiler.start("/tmp/more_complex_oo") do
  MoreComplex.new().start()
end
