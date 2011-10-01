class LeakyCode
  def initialize
    @data = {}
  end

  def start_allocating
    size = @data.size
    new_size = size + 10_000
    (size..new_size).each do |i|
      @data["hello_world#{i}"] = "#{random_data}_#{i}"
    end
  end

  def random_data
    t =<<-EOF
      hhhhhhhhhhhhhhhhhhhh
      hhhhhhhhhhhhhhhhhhhh
      hhhhhhhhhhhhhhhhhhhh
      hhhhhhhhhhhhhhhhhhhh
      hhhhhhhhhhhhhhhhhhhh
      hhhhhhhhhhhhhhhhhhhh
    EOF
  end
end
