class Rearrange
  attr_reader :message,
              :new_key

  def initialize(message, key, date)
    @message = message
    @new_key = Key.new(key, date)
  end

  def alphabet
    ("a".."z").to_a << " "
  end

  def character_index(num)
    message_string = @message.split('')
    characters = message_string.each_with_index.map do |character, index|
      if index % 4 == num
        character
      end
    end
    characters.compact
  end

  def rearrange_characters_a
    character_index(0)
  end

  def rearrange_characters_a
    character_index(1)
  end

  def rearrange_characters_a
    character_index(2)
  end

  def rearrange_characters_a
    character_index(3)
  end

  def encrypt_characters(rearrange_characters, final_shift)
    rearrange_characters.map do |character|
      if alphabet.include?(character)
        offset = alphabet.find_index(character)
        alphabet.rotate(final_shift)[offset]
      else
        character
      end
    end
  end

  def rearrange_encrypted_a
    encrypted_characters(@message.rearrange_characters_a, @new_key.final_shift_a)
  end

end
