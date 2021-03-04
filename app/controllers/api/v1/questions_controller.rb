class Api::V1::QuestionsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [:index, :show]
  before_action :set_question, only: [:show, :update, :destroy]

  # def index
  #   # might not be needeed
  #   @questions = policy_scope(Question)
  # end

  def show
  end

  def create
    @question = Question.new(question_params)
    @question.test = Test.find(params[:test_id])
    @question.answered = false

    authorize @question
    if @question.save!
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @question.update!(question_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    if @question.destroy!
      render :show
    else
      render_error
    end
  end

  private

  def question_params
    params.require(:question).permit(:question, :correct_answer)
  end

  def set_question
    @question = Question.find(params[:id])
    authorize @question
  end

  def render_error
    render json: { errors: @question.errors.full_message },
           status: :unprocessable_entity
  end
end
