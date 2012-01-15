class Answer < ActiveRecord::Base
  
  attr_accessible :content
  
  belongs_to :question
  belongs_to :survey

  has_many :responses
  
end
