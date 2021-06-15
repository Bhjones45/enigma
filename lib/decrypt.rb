require './lib/enigma'
require './lib/rearrange'
require './lib/message'
require './lib/key'
require 'date'

enigma = Enigma.new

txt_file = File.open(ARGV[0], "r")
incoming_text = txt_file.read
txt_file.close

decrypt_text = enigma.decrypt(incoming_text, ARGV[2], ARGV[3])

writer = File.open(ARGV[1], "w")
writer.write(decrypt_text[:decryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{decrypt_text[:key]} and the date #{decrypt_text[:date]}"
