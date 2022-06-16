class QuestionsController < ApplicationController
  before_action :set_test, only: %i[new create index]
  before_action :set_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    questions = @test.questions.map { |question| question.title.to_s }
    render plain: questions.join(', ')
  end

  def new
    @question = @test.questions.build
  end

  def create
    @question = @test.questions.build question_params
    if @question.save
      redirect_to test_questions_path(@test)
    else
      render :new
    end
  end

  def show
    render plain: @question.title
  end

  def destroy
    @question.destroy
    redirect_to test_questions_path(@test), notice: 'Question has been deleted'
  end

  private

  def question_params
    params.require(:question).permit(:title)
  end

  def set_test
    @test = Test.find(params[:test_id])
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end
end
