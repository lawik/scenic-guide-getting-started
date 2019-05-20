defmodule MyElixir.Scene.Home do
  use Scenic.Scene

  alias Scenic.Graph
  # alias Scenic.ViewPort

  import Scenic.Components
  # import Scenic.Primitives

  @text_size 24

  def init(_, _opts) do
    graph =
      Graph.build(font: :roboto, font_size: @text_size)
      |> button("Click me", id: :sample_button_1, t: {32, 32})

    {:ok, graph, push: graph}
  end

  def filter_event({:click, :sample_button_1}, _from, state) do
    new_text = DateTime.to_iso8601(DateTime.utc_now())

    state =
      state
      |> Graph.modify(:sample_button_1, &button(&1, new_text))

    {:halt, state, push: state}
  end
end
