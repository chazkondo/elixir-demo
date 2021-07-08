defmodule Games.Entities.Game do
    @enforce_keys [:name, :year, :producer]
    defstruct [:name, :year, :producer]
end