defmodule Stack.Application do
  use Application

  def start(_start_type, _start_args) do
    children = [
      {Stack, []}
    ]

    {:ok, _super_pid} = Supervisor.start_link(children, strategy: :one_for_one)

  end
end
