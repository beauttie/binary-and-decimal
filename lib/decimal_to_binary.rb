# A method named `decimal_to_binary` that receives an integer as input and
# outputs a binary number as an array filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index of the array's length minus 1.
# Calculate and return the binary value for this decimal number using
# the algorithm you devised in class.
def decimal_to_binary(decimal_num)
  reverse_array = []
  quotient = decimal_num

  until quotient == 0 do
    reverse_array << quotient % 2
    quotient /= 2
  end

  # binary_array = reverse_array.reverse
  # Reverse elements of array
  binary_array = []
  reverse_array.length.times { |i| binary_array[i] = reverse_array[reverse_array.length - i - 1] }

  return binary_array
end