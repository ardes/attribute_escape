require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))

describe "AttributeEscapeHelper" do
  include AttributeEscapeHelper
  
  describe '#attribute_escape' do
    it 'should replace double quotes with single quotes' do
      attribute_escape('"G\'day"').should == "'G'day'"
    end
  end
end