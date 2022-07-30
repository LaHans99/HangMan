#Concurrency:The state of the game
defmodule Game do
  use GenServer

  def start_link, do: GenServer.start_link(Game, [])

  #Set-up for initial state.
  def init(_state) do
    {:ok, {"osito", "", "", 9}}
  end

  def score_guess(pid, guess) do
    GenServer.cast(pid, {:score_guess, guess})
  end

  #fire and forget, noreply
  def handle_cast({:score_gues, guess}, {word, correct, wrong, attempts} = state) do
    IO.inspect(guess)
    {:noreply, guess}
  end


end
