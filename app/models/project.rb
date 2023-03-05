class Project < ActiveRecord::Base
    attr_accessor :title
    has_many :tasks
  end
