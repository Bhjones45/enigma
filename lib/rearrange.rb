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

  def rearrange_encrypted_b
    encrypted_characters(@message.rearrange_characters_b, @new_key.final_shift_b)
  end

  def rearrange_encrypted_c
    encrypted_characters(@message.rearrange_characters_c, @new_key.final_shift_c)
  end

  def rearrange_encrypted_d
    encrypted_characters(@message.rearrange_characters_d, @new_key.final_shift_d)
  end
end
