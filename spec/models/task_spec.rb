require 'spec_helper'

describe Task do

  context "#test_function" do
    it "return default string" do
      t = Task.create title: 'Trol'
      t.test_function.should == "#{t.title}-#{Task::DEFAULT_STRING}"
    end

    it "return value with arg" do
      t = Task.create title: 'Trol'
      t.test_function('Olololo').should == "#{t.title}-#{Task::DEFAULT_STRING}+Olololo"
    end
  end
end
