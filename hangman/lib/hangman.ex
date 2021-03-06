defmodule Hangman do #API

  alias Hangman.Impl.Game
  alias Hangman.Type

  #To keep internal state private, alias Game.t type to a new public type, just called game
  #@opaque is used to say that the internals of the type should remain private from
  #anyone who imports it
  # alias Game.t type to a new public type, just called game
  @opaque game :: Game.t
  
  @spec new_game() :: game 
  defdelegate new_game, to: Game
  ##used defdelegate to avoid implementation code in API
  #def new_game do
  #  Game.new_game()
  #end

  #created make move function and delegate it in implementation module
  @spec make_move(game, String.t) :: {game, Type.tally}
  defdelegate make_move(game, guess), to: Game


  @spec tally(game)  :: Type.tally()
  defdelegate tally(game), to: Game

end
