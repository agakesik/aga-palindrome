require "test_helper"

class AgaPalindromeTest < Minitest::Test
  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end


  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam".palindrome?
  end

  def test_integer_palidrome
    assert 12421.palindrome?
  end

  def test_integer_non_palindrome
    refute 1245.palindrome?
  end



end
