defmodule ExMon do
  def createP layer(name, move_avg, move_rnd, move_heal) do
    ExMon.Player.build(name, move_rnd, move_avg, move_heal)
  end
end
