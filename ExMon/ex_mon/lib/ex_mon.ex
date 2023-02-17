defmodule ExMon do
  alias ExMon.Player

  def createP layer(name, move_avg, move_rnd, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end
end
