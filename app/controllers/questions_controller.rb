class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @statement = params[:question]
    @answer = "I don't care, get dressed and go to work!"
    if @statement.downcase.include?("i am going to work")
      @answer = "Great!"
    elsif @statement.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    end
  end
end
