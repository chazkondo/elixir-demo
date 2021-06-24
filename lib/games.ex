defmodule Games do
  @all_games [
    %{name: "Bravely Default 2", publisher: "Square Enix", year: "2021"},
    %{name: "Starcraft 2", publisher: "Blizzard", year: "2010"}
  ]

  def all_games, do: @all_games
end
