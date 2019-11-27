class SpellListsController < ApplicationController
  before_action :set_spell_list, only: [:show, :edit, :update, :destroy]

  # GET /spell_lists
  # GET /spell_lists.json
  def index
    @spell_lists = SpellList.all
  end

  # GET /spell_lists/1
  # GET /spell_lists/1.json
  def show
  end

  # GET /spell_lists/new
  def new
    @spell_list = SpellList.new
  end

  # GET /spell_lists/1/edit
  def edit
  end

  # POST /spell_lists
  # POST /spell_lists.json
  def create
    @spell_list = SpellList.new(spell_list_params)

    if @spell_list.save
      redirect_to @spell_list, notice: 'Spell List was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /spell_lists/1
  # PATCH/PUT /spell_lists/1.json
  def update
    if @spell_list.update(spell_list_params)
      redirect_to @spell_list, notice: 'Spell List was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /spell_lists/1
  # DELETE /spell_lists/1.json
  def destroy
    @spell_list.destroy
    redirect_to spell_lists_url, notice: 'Spell List was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell_list
      @spell_list = SpellList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spell_list_params
      params.require(:spell_list).permit(:user_list_id, :spell_id)
    end
end
