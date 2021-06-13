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

  def date_squared
    @offset.to_i ** 2
  end

  def date_squared_string
    date_squared.to_s
  end

  def new_offset
    date_squared_string.split('').map do |offset|
      offset.to_i
    end
  end
end
