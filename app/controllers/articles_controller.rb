class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article =  Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article(?1: :\u_)params)

        if @article.save
            redirect(?1: :\u_)to @article
        else
            render 'new'
        end
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article(?1: :\u_)params)
            redirect(?1: :\u_)to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect(?1: :\u_)to articles(?1: :\u_)path
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
