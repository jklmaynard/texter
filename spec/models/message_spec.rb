require 'rails_helper'

describe Message, :vcr => true do

  it { should belong_to :address }

  it "doesn't save the message if twilio gives an error" do
    message = Message.new(:body => 'hi', :to => '1111111', :from => '5309240083')
    message.save.should be false
  end
end
