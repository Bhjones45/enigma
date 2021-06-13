class Key
  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def input_key
    @key.split('').map do |key|
      key.to_i
    end
  end
end
