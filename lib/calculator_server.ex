defmodule CalculatorServer do
  use GenServer

  @impl true
  def init(_), do: {:ok, 0}

  @impl true
  def handle_call(:view, _from, current_value) do
    {:reply, current_value, current_value}
  end

  @impl true
  def handle_cast({:add, value}, current_value) do
    {:noreply, current_value + value}
  end

  def handle_cast({:sub, value}, current_value) do
    {:noreply, current_value - value}
  end

  def handle_cast({:mult, value}, current_value) do
    {:noreply, current_value * value}
  end

  def handle_cast({:div, value}, current_value) do
    {:noreply, current_value / value}
  end

  @impl true
  def handle_info(:hi, current_value) do
    IO.puts("Hi!")
    {:noreply, current_value}
  end
end
