defmodule ExMon do
  alias ExMon.{Game, Player}
  alias ExMon.Game.Status

  @computer_name "Joad"

  def create_player(name, move_avg, move_rnd, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:mouseGamerPunch, :notebookBackflipKick, :heal)
    |>Game.start(player)

    Status.print_round_message()
  end

  def make move(move) do
    Actions.fetch_move(move)
  end
end
