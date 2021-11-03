defmodule ListLength do


  def call(lista) do
    contador(lista, 0)
  end

  defp contador([], total), do: total


  defp contador([head | tail ], total) do
    total = total  + 1

    contador(tail, total)
  end

end
