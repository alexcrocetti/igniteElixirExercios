defmodule FiltroLista do
  def call(lista) do
    filtroStr(lista)
  end



  defp filtroStr(lista) do
    #Recurso Flatmap para varrer a lista e executar uma condicional
    ##https://hexdocs.pm/elixir/1.12/Enum.html#flat_map/2

    l = Enum.flat_map(lista, fn string ->
      IO.inspect(Integer.parse(string))
      case Integer.parse(string) do
        # transform to integer
        {int, _rest} -> [int]
        # skip the value
        :error -> []
      end
    end)

    filtroImpares(l)

  end


  defp filtroImpares(lista) do
    #Recurso Filter para remover os elementos que não antender a condição (impar)
    ##https://hexdocs.pm/elixir/1.12/Enum.html#filter/2
     impares = Enum.filter(lista, fn x -> rem(x,2 ) != 0 end)

     impares
  end


end



## Verificacao de impares
#Enum.all?([2, 4, 6], fn x -> rem(x, 2) == 0 end)
#Integer.parse("three")
