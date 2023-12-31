class ArticleTypesController < ApplicationController
  before_action :set_article_type, only: %i[ show edit update destroy ]

  # GET /article_types or /article_types.json
  def index
    @article_types = ArticleType.all
  end

  # GET /article_types/1 or /article_types/1.json
  def show
  end

  # GET /article_types/new
  def new
    @article_type = ArticleType.new
  end

  # GET /article_types/1/edit
  def edit
  end

  # POST /article_types or /article_types.json
  def create
    @article_type = ArticleType.new(article_type_params)

    respond_to do |format|
      if @article_type.save
        format.html { redirect_to article_type_url(@article_type), notice: "Article type was successfully created." }
        format.json { render :show, status: :created, location: @article_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_types/1 or /article_types/1.json
  def update
    respond_to do |format|
      if @article_type.update(article_type_params)
        format.html { redirect_to article_type_url(@article_type), notice: "Article type was successfully updated." }
        format.json { render :show, status: :ok, location: @article_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_types/1 or /article_types/1.json
  def destroy
    @article_type.destroy

    respond_to do |format|
      format.html { redirect_to article_types_url, notice: "Article type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_type
      @article_type = ArticleType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_type_params
      params.fetch(:article_type, {})
    end
end
