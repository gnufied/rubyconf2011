class MoreComplex
  def initialize
    @data = {}
  end

  def start
    make_strings
    upcase_strings
    symbolize_keys
  end

  def make_strings
    100_000.times do |i|
      @data["key_#{i}"] = "Hello world #{i}"
    end
  end

  def upcase_strings
    @data.each do |key,value|
      @data[key] = value.upcase
    end
  end

  def symbolize_keys
    new_hash = {}
    @data.each do |key,value|
      new_hash[key.to_sym] = value
    end
    @data = new_hash
  end

end

