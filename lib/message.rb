class Message
  attr_reader :message

  def initialize(message)
    @message = message.split('')
  end

  def character_index(num)
    characters = @message.each_with_index.map do |character, index|
      if index % 4 == num
        character
      end
    end
    characters.compact
  end

  def rearrange_characters_a
    character_index(0)
  end

  def rearrange_characters_b
    character_index(1)
  end

  def rearrange_characters_c
    character_index(2)
  end

  def rearrange_characters_d
    character_index(3)
  end
end
