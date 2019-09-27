# frozen_string_literal: true

class ArticlesController < ApplicationController
  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # POST /articles/create
  def create
    @articles = Article.new(name: params[:article][:name],
                            lastname: params[:article][:lastname],
                            age: params[:article][:age])
    if @articles.save
      redirect_to @articles
    else
      render :new
    end
  end
end
