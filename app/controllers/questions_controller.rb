class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # If the message is I am going to work, the coach will answer Great!
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    elsif params[:question].last == '?'
      @answer = 'will answer Silly question, get dressed and go to work!'
    # coach will answer I don't care, get dressed and go to work!
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
