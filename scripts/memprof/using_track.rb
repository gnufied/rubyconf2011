require "memprof"

Memprof.track{
  100.times{ "abc" }
  100.times{ 1.23 + 1 }
  100.times{ Module.new }
}
