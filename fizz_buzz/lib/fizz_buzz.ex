defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({ :ok, result }) do
    result
    |> String.split(",")   # "1,2,3,4" -> ["1", "2", "3", "4"]
    |> Enum.map(&String.to_integer/1)    # ["1", "2", "3", "4"] -> [1, 2, 3, 4]
  end

  def handle_file_read({ :error, reason }), do: "Error reading the file: #{reason}"
end
