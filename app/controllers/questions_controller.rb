class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @coach_answer = @answers[2]
    return unless params[:ask].present?

    @repeat_question_test = params[:ask]
    if @repeat_question_test == 'I am going to work'
      @coach_answer = @answers[0]
    elsif @repeat_question_test[-1] == '?'
      @coach_answer = @answers[1]
    end
  end
end
