class SpellsController < ApplicationController
  before_action :set_spell, only: [:show, :edit, :update, :destroy]

  # GET /spells
  # GET /spells.json
  def index
    @spells = Spell.all
  end

  # GET /spells/1
  # GET /spells/1.json
  def show
  end

  # GET /spells/new
  def new
    @spell = Spell.new
  end

  # GET /spells/1/edit
  def edit
  end

  # POST /spells
  # POST /spells.json
  def create
    @spell = Spell.new(spell_params)

    if @spell.save
      redirect_to @spell, notice: 'Spell was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /spells/1
  # PATCH/PUT /spells/1.json
  def update
    if @spell.update(spell_params)
      redirect_to @spell, notice: 'Spell was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /spells/1
  # DELETE /spells/1.json
  def destroy
    @spell.destroy
    redirect_to spells_url, notice: 'Spell was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell
      @spell = Spell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spell_params
      params.require(:spell).permit(:name, :level, :range, :school, :casting_time, :duration, :description_short, :description_long)
    end
end
