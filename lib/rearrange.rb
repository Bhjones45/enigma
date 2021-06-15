class Rearrange
  attr_reader :message,
              :new_key

  def initialize(message, key, date)
    @message = Message.new(message)
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
    encrypt_characters(@message.rearrange_characters_a, @new_key.final_shift_a)
  end

  def rearrange_encrypted_b
    encrypt_characters(@message.rearrange_characters_b, @new_key.final_shift_b)
  end

  def rearrange_encrypted_c
    encrypt_characters(@message.rearrange_characters_c, @new_key.final_shift_c)
  end

  def rearrange_encrypted_d
    encrypt_characters(@message.rearrange_characters_d, @new_key.final_shift_d)
  end

  def hidden_message
    encrypt = rearrange_encrypted_a.zip(rearrange_encrypted_b, rearrange_encrypted_c, rearrange_encrypted_d)
    encrypt.flatten.join
  end

  def decrypt_characters(rearrange_characters, final_shift)
    rearrange_characters.map do |character|
      if alphabet.include?(character)
        offset = alphabet.reverse.find_index(character)
        alphabet.reverse.rotate(final_shift)[offset]
      else
        character
      end
    end
  end

  def rearrange_decrypted_a
    decrypt_characters(@message.rearrange_characters_a, @new_key.final_shift_a)
  end

  def rearrange_decrypted_b
    decrypt_characters(@message.rearrange_characters_b, @new_key.final_shift_b)
  end

  def rearrange_decrypted_c
    decrypt_characters(@message.rearrange_characters_c, @new_key.final_shift_c)
  end

  def rearrange_decrypted_d
    decrypt_characters(@message.rearrange_characters_d, @new_key.final_shift_d)
  end

  def uncover_message
    decrypt = rearrange_decrypted_a.zip(rearrange_decrypted_b, rearrange_decrypted_c, rearrange_decrypted_d)
    decrypt.flatten.join
  end
end
