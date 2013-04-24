class Task < ActiveRecord::Base
  attr_accessible :body, :title

  validates_presence_of :title

  DEFAULT_STRING = "Test data"
  def test_function
    "#{title}-#{DEFAULT_STRING}"
  end
end
