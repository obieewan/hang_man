defmodule HangmanImplGameTest do
  use ExUnit.Case

  alias Hangman.Impl.Game

  test "new game returns structure" do
    game = Game.new_game

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "new game returns correct word" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert Enum.all?(game.letters, fn codepoint -> String.match?(codepoint, ~r/[a-z]/) end)

  end




end

