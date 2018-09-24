require 'rails_helper'

RSpec.describe Topic, :type => :model do
  it "is not valid without a title" do
    topic = Topic.new(title: nil)
    expect(topic).to_not be_valid
  end

end
