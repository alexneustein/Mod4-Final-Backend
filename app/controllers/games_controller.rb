class GamesController < ApplicationController
  # before_action :set_game

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  # GET /games/1
  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  # POST /games
  def create
    @game = Game.new(topic_id: game_params['topic_id'])
    # byebug
    if @game.save
        @topic = Topic.find(@game.topic_id)
        @possible_prompts = @topic.prompts

        10.times do
          makePrompt(@possible_prompts)
        end

      render json: @game, status: :created, location: @game

    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    def makePrompt(possibilities)
      newprompt = GamePrompt.create(game_id: @game.id, prompt_id: possibilities.sample.id)
    end

    def game_params
      params.require(:game).permit(:id, :winner_id, :topic_id)
    end

end
