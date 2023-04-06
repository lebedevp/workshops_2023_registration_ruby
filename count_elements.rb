class CountElements
  def initialize(array)
    @array = array
  end

  def perform
    hash = {}
    @array.each { |element| hash[element] = @array.count(element) }
    hash
  end
end
