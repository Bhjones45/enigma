class Rearrange
  attr_reader :message,
              :key,
              :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
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

  # def rearranged_encrypted_a
  #   character_index
end
