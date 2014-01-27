class ApplicationDatabasesController < ApplicationController
  before_action :set_application_database, only: [:show, :edit, :update, :destroy]

  # GET /application_databases
  # GET /application_databases.json
  def index
    @application_databases = ApplicationDatabase.all
  end

  # GET /application_databases/1
  # GET /application_databases/1.json
  def show
  end

  # GET /application_databases/new
  def new
    @application_database = ApplicationDatabase.new
  end

  # GET /application_databases/1/edit
  def edit
  end

  # POST /application_databases
  # POST /application_databases.json
  def create
    @application_database = ApplicationDatabase.new(application_database_params)

    respond_to do |format|
      if @application_database.save
        format.html { redirect_to @application_database, notice: 'Application database was successfully created.' }
        format.json { render action: 'show', status: :created, location: @application_database }
      else
        format.html { render action: 'new' }
        format.json { render json: @application_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_databases/1
  # PATCH/PUT /application_databases/1.json
  def update
    respond_to do |format|
      if @application_database.update(application_database_params)
        format.html { redirect_to @application_database, notice: 'Application database was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @application_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_databases/1
  # DELETE /application_databases/1.json
  def destroy
    @application_database.destroy
    respond_to do |format|
      format.html { redirect_to application_databases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_database
      @application_database = ApplicationDatabase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_database_params
      params.require(:application_database).permit(:name, :user, :password, :database_id)
    end
end
