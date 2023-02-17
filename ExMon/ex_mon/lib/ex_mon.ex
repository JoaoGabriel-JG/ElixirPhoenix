defmodule ExMon do
  alias ExMon.{Game, Player}

  @computer_name "Joadson"

  def create_player(name, move_avg, move_rnd, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:mouseGamerPunch, :notebookBackflipKick, :heal)
    |>Game.start(player)
  end
end
