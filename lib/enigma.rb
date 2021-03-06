class Enigma

  def date_now
    Date.today.strftime('%d%m%y')
  end

  def key_generate
    (0..9).to_a.sample(5).join
  end

  def encrypt(message, key = key_generate, date = date_now)
    {
      encryption: encrypt_message(message, key, date),
      key: key,
      date: date
    }
  end

  def encrypt_message(message, key, date)
    rearrange = Rearrange.new(message.downcase, key, date)
    rearrange.hidden_message
  end

  def decrypt(message, key = key_generate, date = date_now)
    {
      decryption: decrypt_message(message, key, date),
      key: key,
      date: date
    }
  end

  def decrypt_message(message, key = key_generate, date = date_now)
    rearrange = Rearrange.new(message.downcase, key, date)
    rearrange.uncover_message
  end
end
