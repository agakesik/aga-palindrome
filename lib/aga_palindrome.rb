require "aga_palindrome/version"

module AgaPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[][a-z]\d]/i).join.downcase
    end
end

class String
  include AgaPalindrome
end

class Integer
  include AgaPalindrome
end
