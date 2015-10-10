class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
  end

  # GET /questions/new
  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.build
  end

  # GET /questions/1/edit
  def edit
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
  end

  # POST /questions
  # POST /questions.json
  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.build(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to [@question.survey,@question], notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: [@question.survey,@question] }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])

    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to [@question.survey,@question], notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: [@question.survey,@question] }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
    @question.destroy
    respond_to do |format|
      format.html { redirect_to survey_questions_path(@survey), notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:question, :survey_id)
    end
end
