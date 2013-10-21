class User < ActiveRecord::Base
  attr_accessible :name, :surname, :DateOfBirth, :PlaceOfBirth, :city, :country, :posts_attributes
  has_many :posts
  accepts_nested_attributes_for :posts
  
  validates :name, :surname, :DateOfBirth, :PlaceOfBirth, :city, :country, presence: true
  validates :name, uniqueness: {scope: :surname, scope: :DateOfBirth, scope: :PlaceOfBirth, scope: :city,scope: :country, message: "User already exists"}
  validates :country, inclusion: {in: %w(France Italy Germany Spain Luxemburg Belgium Sweden), message: "The country %{value} is uncorrect"}
  validates :name, :surname, :PlaceOfBirth, :city, :country, format: {with: /\A[a-zA-Z]+\z/, message: "Only characters!"}
  end
