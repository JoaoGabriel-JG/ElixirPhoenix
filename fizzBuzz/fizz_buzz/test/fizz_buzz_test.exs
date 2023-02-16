defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "When a valid file is provided, returns the converted list" do
      expected_response = {:ok, [2, :buzz, :buzz, :fizz, :fizzbuzz, :fizz, 22, :fizzbuzz]}

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "When an invalid file is provided, returns an error" do
      expected_response = {:error, "Error reading the file: enoent"}

      assert FizzBuzz.build("invalid.txt") == expected_response
    end
  end 
end
