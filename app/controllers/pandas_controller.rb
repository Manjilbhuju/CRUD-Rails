class PandasController < ApplicationController
  before_action :set_panda, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /pandas or /pandas.json
  def index
    @pandas = Panda.all
  end

  # GET /pandas/1 or /pandas/1.json
  def show
  end

  # GET /pandas/new
  def new
    # panda = Panda.new
    @panda = current_user.pandas.build
  end

  # GET /pandas/1/edit
  def edit
  end

  # POST /pandas or /pandas.json
  def create
    # panda = Panda.new(panda_params) 
    @panda = current_user.pandas.build(panda_params)

    respond_to do |format|
      if @panda.save
        format.html { redirect_to panda_url(@panda), notice: "Panda was successfully created." }
        format.json { render :show, status: :created, location: @panda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @panda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pandas/1 or /pandas/1.json
  def update
    respond_to do |format|
      if @panda.update(panda_params)
        format.html { redirect_to panda_url(@panda), notice: "Panda was successfully updated." }
        format.json { render :show, status: :ok, location: @panda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @panda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pandas/1 or /pandas/1.json
  def destroy
    @panda.destroy

    respond_to do |format|
      format.html { redirect_to pandas_url, notice: "Panda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @panda = current_user.pandas.find_by(id: params[:id])
    redirect_to pandas_path, notice: "Not Authorized to Edit This Panda" if @panda.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panda
      @panda = Panda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def panda_params
      params.require(:panda).permit(:first_name, :last_name, :email, :group, :user_id)
    end
end
