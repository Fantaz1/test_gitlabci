class Task < ActiveRecord::Base
  attr_accessible :body, :title

  validates_presence_of :title

  DEFAULT_STRING = "Test data"
  def test_function value=nil
    str = "#{title}-#{DEFAULT_STRING}"
    str += "+#{value}" if value.present?
    str
  end
end
