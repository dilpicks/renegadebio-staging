class ArticleAuthorsController < ApplicationController
  before_action :set_article_author, only: %i[ show edit update destroy ]

  # GET /article_authors or /article_authors.json
  def index
    @article_authors = ArticleAuthor.all
  end

  # GET /article_authors/1 or /article_authors/1.json
  def show
  end

  # GET /article_authors/new
  def new
    @article_author = ArticleAuthor.new
  end

  # GET /article_authors/1/edit
  def edit
  end

  # POST /article_authors or /article_authors.json
  def create
    @article_author = ArticleAuthor.new(article_author_params)

    respond_to do |format|
      if @article_author.save
        format.html { redirect_to article_author_url(@article_author), notice: "Article author was successfully created." }
        format.json { render :show, status: :created, location: @article_author }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_authors/1 or /article_authors/1.json
  def update
    respond_to do |format|
      if @article_author.update(article_author_params)
        format.html { redirect_to article_author_url(@article_author), notice: "Article author was successfully updated." }
        format.json { render :show, status: :ok, location: @article_author }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_authors/1 or /article_authors/1.json
  def destroy
    @article_author.destroy

    respond_to do |format|
      format.html { redirect_to article_authors_url, notice: "Article author was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_author
      @article_author = ArticleAuthor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_author_params
      params.fetch(:article_author, {})
    end
end
