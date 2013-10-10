class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(params[:answers])

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def new
    @question = Question.new
  end

end