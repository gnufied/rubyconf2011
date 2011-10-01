require "memprof"

Memprof.start()
class Blah
end

class Foo
  attr_accessor :name, :age
  attr_accessor :blah
  attr_accessor :sex, :tag, :emacs
  attr_accessor :window, :linux
end

class Bar
  @@foo = {}
  def self.create_foos
    1.times do |i|
      a = Foo.new()
      c = Blah.new()
      a.name = "hello_#{i}"
      a.age = i
      a.blah = c
      a.sex = 20
      a.tag = 30
      a.emacs = 40
      a.window = 50
      a.linux = "GNU/Linux"

      @@foo["key_#{i}"] = a
    end
  end
end
Bar.create_foos

Memprof.dump_all("foo.json")

Memprof.stop()



