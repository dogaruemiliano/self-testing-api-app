class Api::V1::TestsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_test, only: [:show, :update, :destroy]

  def index
    @tests = policy_scope(Test)
  end

  def show
  end

  def create
    @test = Test.new(test_params)
    @test.user = current_user
    authorize @test
    if @test.save!
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @test.update(test_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    if @test.destroy!
      render :show
    else
      render_error
    end
  end

  private

  def test_params
    params.require(:test).permit(:name)
  end

  def set_test
    @test = Test.find(params[:id])
    authorize @test
  end

  def render_error
    render json: { errors: @test.errors.full_message },
           status: :unprocessable_entity
  end
end
