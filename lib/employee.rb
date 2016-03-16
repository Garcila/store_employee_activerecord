class Employee < ActiveRecord::Base

	belongs_to :store

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :hourly_rate, numericality: {within: (40..200)}
  #validates :  employee must always have a store
end