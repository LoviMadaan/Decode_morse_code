@morse_code_to_character = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
    }
def decode_char(morse_code)
    @morse_code_to_character[morse_code]
end


def decode_word(words)
    @words_array = words.split
    @decoded_word = ''
    @words_array.each do
     |word|
     @decoded_word += decode_char(word)
    end
     print "#{@decoded_word}"
end

# decode_word("-- -.--")

def decode(message)
    @message_array = message.split("   ")
    
    @message_array.each do 
        |messages|
    @decoded_messages = decode_word(messages)
    end
    return @decoded_messages
end
puts decode("-- -.--   -. .- -- .") 