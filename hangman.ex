defmodule Hangman do
#hannia ortega samaniego.   A01283410
#guillermo daniel ceballos anguiano A01732113
  @moduledoc """
  Documentation for `Hangman`.
  """
  @doc """

  """


def helper_man([],_guess,[]) do
      []
    end
    #func que convierte string a lista
    def helper_man([hda|tla], guess, [hd_word|tl_word]) do
      cond do
        hd_word != "_" -> [hd_word] ++ helper_man(tla, guess, tl_word)
        hda == guess -> [hda] ++ helper_man(tla, guess, tl_word)
        hda != guess -> ["_"] ++ helper_man(tla, guess, tl_word)
      end
end

#Recursive hangman:
def recursive_man(word, guess, wordrevel) do
      IO.puts("word: #{word}")
      IO.puts("guess: #{guess}")
      IO.puts("wordrevel: #{wordrevel}")
      awnser = String.codepoints(word)
      #condicion de terminado
      if word != wordrevel  do
        if String.contains?(word, guess) do
          wordrevel = String.codepoints(wordrevel)
          wordrevel = Hangman.helper_man(awnser, guess, wordrevel)
          IO.puts(wordrevel)
          new_guess=IO.gets("Ingrese una nueva letra")
          recursive_man(word, String.trim(new_guess), Enum.join(wordrevel, ""))
        else
          wordrevel = String.codepoints(wordrevel)
          IO.puts("Prueba con otra letra")
          new_guess=IO.gets("Ingrese una nueva letra")
          recursive_man(word, String.trim(new_guess), Enum.join(wordrevel, ""))
        end
      else
        IO.puts("Game over")
      end
    end


end

