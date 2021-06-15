require './lib/enigma'
require './lib/rearrange'
require './lib/message'
require './lib/key'
require 'date'

enigma = Enigma.new

txt_file = File.open(ARGV[0], "r")
incoming_text = txt_file.read
txt_file.close

encrypt_text = enigma.encrypt(incoming_text)

puts encrypt_text
writer = File.open(ARGV[1], "w")
writer.write(encrypt_text[:encryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{hidden_message[:key]} and the date #{hidden_message[:date]}"
