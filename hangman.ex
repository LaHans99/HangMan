defmodule Hangman do
  @moduledoc """
  Documentation for `Hangman`.
  """
  @doc """

  """
  #Works with a tuple.
  # def score_guess({word, correct, wrong, attempts}, guess) do
  #   #Using ~ to check if word contains correct value:
  #     if word =~ guess do
  #       if correct =~ guess do
  #         {word, correct, wrong, attempts}
  #       else
  #         {word, correct<>guess, wrong, attempts}
  #       end
  #   else
  #       if wrong =~ guess do
  #         {word, correct, wrong, attempts}
  #       else
  #         {word, correct, wrong<>guess, attempts - 1}
  #       end
  #   end
  # end

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
      IO.puts("Prueba con otra letra")
      new_guess=IO.gets("Ingrese una nueva letra")
      recursive_man(word, String.trim(new_guess), Enum.join(wordrevel, ""))
    end
  else
    IO.puts("Game over")
  end
end


end


# if String.length(word)==0 do
#   IO.puts("End")
# else
# #ejecucon de la func
#   if String.at(word, 0)==guess do
#     IO.puts("En efecto")
#    # recursive_man( wt, spaces[1:], guess)
#   end
# end
