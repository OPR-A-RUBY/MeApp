class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
    # render plain: params[:article].inspect
  end  

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end

