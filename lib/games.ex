defmodule Games do

  alias Games.Entities.Game
  # @all_games [
  #   %{name: "Bravely Default 2", publisher: "Square Enix", year: "2021"},
  #   %{name: "Starcraft 2", publisher: "Blizzard", year: "2010"}
  # ]

  @db_path "games.bin"

  def all_games, do: load_or_create()

  defp load_or_create do
    if File.exists?(@db_path) do
      :erlang.binary_to_term(File.read!(@db_path))
    else
      starting_value = []
      File.write!(@db_path, :erlang.term_to_binary(starting_value))
      starting_value
    end
  end

  def all_games, do: @all_games

  def add(game) do
    new_list = [game | all_games()]
    File.write!(@db_path, :erlang.term_to_binary(new_list))
    new_list
  end
end
