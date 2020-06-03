defmodule Calculator do
  def start do
    GenServer.start_link(CalculatorServer, [])
  end

  def view(server_pid) do
    GenServer.call(server_pid, :view)
  end

  def add(server_pid, value), do: GenServer.cast(server_pid, {:add, value})
  def sub(server_pid, value), do: GenServer.cast(server_pid, {:sub, value})
  def mult(server_pid, value), do: GenServer.cast(server_pid, {:mult, value})
  def div(server_pid, value), do: GenServer.cast(server_pid, {:div, value})
end
