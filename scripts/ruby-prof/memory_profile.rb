require "ruby-prof"

$: << File.join(File.dirname(__FILE__),"..")

require "more_complex_oo"

result = RubyProf.profile do
  MoreComplex.new().start()
end

p RubyProf::MEMORY

RubyProf.measure_mode = RubyProf::MEMORY

# Print a graph profile to text
printer = RubyProf::GraphHtmlPrinter.new(result)
fl = File.open("data.html","w")
printer.print(fl, :min_percent => 0)
fl.close()


