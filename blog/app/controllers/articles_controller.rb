class ArticlesController < ApplicationController
    def new
    end
    def show
        @article = Article.find(param[:id])
    end
    def create
        @article = Article.mnew(params[:article])
        @article.save
        redirect_to @article
    end
end
