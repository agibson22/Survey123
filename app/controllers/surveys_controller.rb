class SurveysController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => [:edit, :destroy]
  before_filter :researcher_user, :only => [:edit, :create, :destroy, :my_surveys]
  
  def index
    @surveys = Survey.all
  end
  # for the first question in the current survey, how many answers are there?
  def show
    @survey = Survey.find(params[:id])
    @questions = Question.find(:all, :order => 'question_order')
    @first_question_id = Question.first(:conditions => { :survey_id => @survey.id }).id
    @answer_count = Answer.count(:conditions => { :question_id => @first_question_id })
    @survey_id = @survey.id
  end
  
  def new
    @survey = Survey.new
    2.times do
      question = @survey.questions.build
      2.times { question.answers.build }
    end
  end
  
  def create
    @survey = current_user.surveys.build(params[:survey])
    if @survey.save
      flash[:success] = "Successfully created survey."
      redirect_to @survey
    else
      flash[:notice] = "Survey NOT Created"
      render :action => 'new'
    end
  end
  
  def edit
    @survey = Survey.find(params[:id])
  end
  
  def update
    @survey = Survey.find(params[:id])
    if @survey.update_attributes(params[:survey])
      flash[:notice] = "Successfully updated survey."
      redirect_to @survey
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    flash[:notice] = "Successfully destroyed survey."
    redirect_to surveys_url
  end
  
  def my_surveys
    @surveys = current_user.surveys.all
    #@title = @user.name " | My Surveys"
  end
  
  def responses
    @survey = Survey.find(params[:id])
  end
  
  def respond
    responses = params[:responses].first
    user = current_user
    @survey = Survey.find(params[:survey_id])
    tosave = []
    responses.each do |r|
      answers = r.last
      answers.each do |a|
        response = Response.new
        response.question_id = r.first
        response.answer_id = a
        tosave << response
      end
    end
    tosave.each do |r|
      r.user = user
      r.survey = @survey
      r.save!
    end
    flash[:notice] = "Thanks for Submitting Your Survey"
    redirect_to surveys_url
  end
  
  private
  
  def authorized_user
    @survey = current_user.surveys.find_by_id(params[:id])
    if current_user.admin? == false
      redirect_to root_path if @survey.nil?
    end
  end
  
  #def responses_report
   # @survey = Survey.find(params[:id])
    #@responses = @survey.responses_report_responses
    #response_to |format| do
    #  format.html # respones_report.html
    #  # format.xml { render :xml => @responses }
    #  format.csv do 
    #    timestamp = Time.now.strftime('%Y-%m-%d_%H:%M:%S')
    #    @filename = "respones_report_#{timestamp}.csv"
    #  end # responses_report.csv.csvbuilder
    #end
  #end
  
end