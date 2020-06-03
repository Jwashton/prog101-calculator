defmodule CalculatorServerTest do
  use ExUnit.Case, async: true
  import CalculatorServer

  test "adds a value" do
    assert {:noreply, 12} = handle_cast({:add, 7}, 5)
  end
end
