class PostsController < ApplicationController
  def index
    @q1="好きな果物は？"
    @questions=Question.all
    @choices=Choice.all
  end

  def show
    @question= Question.find_by(id: params[:id])
    @choices= Choice.where(question_id: params[:id])
  end

  def new
    @choice_how_many = 3;
  end

  def create
    post=Question.new(title: params[:title])
    post.save
    choice1=Choice.new(question_id: post.id, choice: params[:choice1],count:0)
    choice2=Choice.new(question_id: post.id, choice: params[:choice2],count:0)
    choice3=Choice.new(question_id: post.id, choice: params[:choice3],count:0)
    choice1.save
    choice2.save
    choice3.save
    redirect_to action: 'index'
  end

  def vote
    choices=Choice.find_by(question_id: params[])
    selected=Choice.new(question_id: params[:name])
    redirect_to action: 'index'
  end
end
