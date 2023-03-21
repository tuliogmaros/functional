defmodule Functional do

  def helloWithoutPipes do
    user_data = %{name: "tulio", age: "24", occupation: "jr developer"}
    IO.inspect(user_data)
    user_data = %{name: "tulio", age: "28", occupation: "developer full"}
  end

  def hello do
    %{name: "tulio", age: 28}
    |> putMap(:name, "maroz")
    |> IO.inspect()
    |> putMap(:age, 30)
    |> IO.inspect()
    |> deleteMapValue(:name)
  end

  def mapSample do
    %{name: "tulio", age: 28}
    ##|> putMap(:name, "maroz")
    |> Enum.map(fn {key, value} -> value end)
  end

  def song do
    %{name: "a function"}
    |> IO.inspect()
    |> putMap(:name, "to start")
    |> IO.inspect()
    |> putMap(:name, "a song...")
  end

  defp putMap(map, key, value), do: Map.put(map, key, value)

  defp deleteMapValue(map, key), do: Map.delete(map, key)

end
