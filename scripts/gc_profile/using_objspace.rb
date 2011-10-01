require "objspace"

$: << File.join(File.dirname(__FILE__),"..")
require "more_complex_oo"


MoreComplex.new().start()

p ObjectSpace.count_objects_size

p ObjectSpace.count_nodes
p ObjectSpace.count_tdata_objects
