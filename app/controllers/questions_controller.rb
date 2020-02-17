class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question.end_with?('.')
      @answer = 'Great!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end
