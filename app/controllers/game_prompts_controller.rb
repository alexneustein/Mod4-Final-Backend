class GamePromptsController < ApplicationController
  # before_action :set_game_prompt, only: [:show, :update, :destroy]

  # GET /game_prompts
  # GET /game_prompts.json
  def index
    @game_prompts = GamePrompt.all
  end

  # GET /game_prompts/1
  # GET /game_prompts/1.json
  def show
  end

  # POST /game_prompts
  # POST /game_prompts.json
  def create
    @game_prompt = GamePrompt.new(game_prompt_params)

    if @game_prompt.save
      render :show, status: :created, location: @game_prompt
    else
      render json: @game_prompt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_prompts/1
  # PATCH/PUT /game_prompts/1.json
  def update
    if @game_prompt.update(game_prompt_params)
      render :show, status: :ok, location: @game_prompt
    else
      render json: @game_prompt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_prompts/1
  # DELETE /game_prompts/1.json
  def destroy
    @game_prompt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_prompt
      @game_prompt = GamePrompt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_prompt_params
      params.require(:game_prompt).permit(:game_id, :prompt_id)
    end
end
