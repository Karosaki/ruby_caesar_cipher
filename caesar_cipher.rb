# Cipher must take a string and the shift factor, and then output the modified string

# Notes
# Converting a string into a number
# Wrapping from z -> a
# Keep the case
# Ignore spaces

def caesar_cipher(string, shift)
    bytes_array = string.bytes

    shifted_array = bytes_array.map do |character|
        # variables for clarity as to why character need to wrap around to 'a'
        result = character + shift
    
        # lower case bounds
        upper_limit_lc = 122
        lower_limit_lc = 96
    
        # upper case bounds
        upper_limit_uc = 90
        lower_limit_uc = 64
    
        # if the character is a space
        if character == 32
            character += 0
        # lower case letters
        elsif character > lower_limit_lc && character <= upper_limit_lc
            # wrap around
            if result > upper_limit_lc
                character = lower_limit_lc + (result - upper_limit_lc)
            else
            character = character + shift
            end
        # upper case letters
        elsif character > lower_limit_uc && character <= upper_limit_uc
            # wrap around
            if result > upper_limit_uc
                character = lower_limit_uc + (result - upper_limit_uc)
            else
            character = character + shift
            end

        end
    end
    # convert the array back into a string
    converted_shifted = shifted_array.map {|character| character.chr}
    result = converted_shifted.join('')
    puts "Original string: #{string}"
    puts "Encrypted string: #{result}"
end

answer = caesar_cipher("This is the string", 4)
answer
