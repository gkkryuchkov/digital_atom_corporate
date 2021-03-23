class SimpleFilesController < ApplicationController
  before_action :set_simple_file, only: %i[ show edit update destroy ]

  # GET /simple_files or /simple_files.json
  def index
    @simple_files = SimpleFile.where(category: 0)
    @simple_spec_files = SimpleFile.where(category: 1)
  end

  # GET /simple_files/1 or /simple_files/1.json
  def show
  end

  # GET /simple_files/new
  def new
    @simple_file = SimpleFile.new
  end

  # GET /simple_files/1/edit
  def edit
  end

  # POST /simple_files or /simple_files.json
  def create
    @simple_file = SimpleFile.new(simple_file_params)

    respond_to do |format|
      if @simple_file.save
        format.html { redirect_to @simple_file, notice: "Simple file was successfully created." }
        format.json { render :show, status: :created, location: @simple_file }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @simple_file.errors, status: :unprocessable_entity }
      end
    end
  end
  def deliver_document
    @simple_file = SimpleFile.find(params[:simple_file_id])
    # returns a link to a file, attached to key
    attachment = ActiveStorage::Attachment.find(params[:id])
    file = attachment.blob
    send_file(ActiveStorage::Blob.service.send(:path_for, file.key),
              type: file.content_type, filename: file.filename.to_s,
              disposition: 'inline', key_id: attachment.record_id)
  end
  # PATCH/PUT /simple_files/1 or /simple_files/1.json
  def update
    respond_to do |format|
      if @simple_file.update(simple_file_params)
        format.html { redirect_to @simple_file, notice: "Simple file was successfully updated." }
        format.json { render :show, status: :ok, location: @simple_file }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @simple_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_files/1 or /simple_files/1.json
  def destroy
    @simple_file.destroy
    respond_to do |format|
      format.html { redirect_to simple_files_url, notice: "Simple file was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_file
      @simple_file = SimpleFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def simple_file_params
      params.require(:simple_file).permit(:name, :desc, :category)
    end
end
