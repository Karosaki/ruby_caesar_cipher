# Cipher must take a string and the shift factor, and then output the modified string

# Notes
# Converting a string into a number
# Wrapping from z -> a
# Keep the case
# Ignore spaces

testing_string = "Testingstring"

bytes_array = testing_string.bytes
modified_array = bytes_array.map {|character| character + 5}
converted_m_array = modified_array.map {|character| character.chr}
converted_m_array = converted_m_array.join('')

print bytes_array
print "\n"
print modified_array
print "\n"
print testing_string
print "\n"
print converted_m_array


def caesar_cipher(string, shift)
end