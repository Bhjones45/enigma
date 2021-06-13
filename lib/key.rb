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
    end.last(4)
  end

  def join_key(number1, number2)
    input_key[number1..number2].join.to_i + new_offset[number1]
  end

  def final_shift_a
    join_key(0, 1)
  end

  def final_shift_b
    join_key(1, 2)
  end

  def final_shift_c
    join_key(2, 3)
  end

  def final_shift_d
    join_key(3, 4)
  end
end
