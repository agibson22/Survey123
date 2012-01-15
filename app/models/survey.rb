class Survey < ActiveRecord::Base
  
  attr_accessible :name, :description, :questions_attributes
  
  has_many :questions, :dependent => :destroy
  has_many :answers, :through => :questions
  has_many :responses
  
  belongs_to :user
  
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :user_id
  
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, 
                                            :allow_destroy => true
end