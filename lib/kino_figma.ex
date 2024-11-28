defmodule KinoFigma do
  @moduledoc """
  A simple Kino for display Figma files on Livebook.
  """
  use Kino.JS

  def new(type, file_id, opts \\ []) do
    width = opts[:width] || "100%"
    height = opts[:height] || "450"

    iframe = """
    <iframe
      style="border: 1px solid rgba(0, 0, 0, 0.1);"
      width="#{width}"
      height="#{height}"
      src="https://embed.figma.com/#{type}/#{file_id}?embed-host=share"
      allowfullscreen
    ></iframe>
    """

    Kino.JS.new(__MODULE__, iframe)
  end

  def design(file_id, opts \\ []) do
    new("design", file_id, opts)
  end

  def board(file_id, opts \\ []) do
    new("board", file_id, opts)
  end

  def slides(file_id, opts \\ []) do
    new("slides", file_id, opts)
  end

  def deck(file_id, opts \\ []) do
    new("deck", file_id, opts)
  end

  def proto(file_id, opts \\ []) do
    new("proto", file_id, opts)
  end

  asset "main.js" do
    """
    export function init(ctx, iframe) {
      ctx.root.innerHTML = iframe;
    }
    """
  end
end
