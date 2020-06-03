defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "initializes to the expected value" do
    {:ok, calc} = Calculator.start()

    assert Calculator.view(calc) == 0
  end

  test "adding a number" do
    {:ok, calc} = Calculator.start()
    Calculator.add(calc, 7)

    assert Calculator.view(calc) == 7
  end
end
