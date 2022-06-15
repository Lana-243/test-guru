class QuestionsController < ApplicationController
  before_action :set_question

  def index
    respond_to do |format|
      format.html { render plain: "All questions" }
      format.text { render text: { questions: Questions.all } }
    end
  end

  def show
    render test_question
  end

  def destroy
    @question.destroy

    redirect_to test_questions, notice: "Question has been deleted"
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def set_test
    @test = Test.find(params[:id])
  end
end
