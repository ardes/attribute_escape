require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))

describe "AttributeEscapeHelper" do
  include AttributeEscapeHelper
  
  describe '#attribute_escape' do
    it 'should replace double quotes with single quotes' do
      attribute_escape('"G\'day"').should == "'G'day'"
    end
    
    it 'should replace ampersands with "and"' do
      attribute_escape("Hello & Goodbye").should == 'Hello and Goodbye'
    end
    
    it "should escape any dangerous html codes" do
      attribute_escape("<foo />").should == '&lt;foo /&gt;'
    end
  end
end