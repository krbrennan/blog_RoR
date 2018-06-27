class ArticlesController < ApplicationController
  before_action :ensure_signed_in

  def new
    @article = Article.new
    @article.link_id = params[:link_id]
    @article.body = params[:body]
    @article.date = params[:date]
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update

  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = current_user.articles.all
  end

  def create
    # @article = Article.new(article_params)
    @article = current_user.articles.new(article_params)
    # @article.user_id = current_user.id
    @article.title = params[:title]
    @article.link_id = params[:link_id]
    if @article.save
      redirect_to article_url(@article)
    else
      flash.now[:errors] = @article.errors.full_messages
    # redirect_to article_url(article.link_id)
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to link_url(article.link_id)
  end

  def article_params
    params.require(:article).permit(:title, :body, :url, :user_id, :link_id)
  end
end
