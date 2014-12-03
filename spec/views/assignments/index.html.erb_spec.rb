require 'rails_helper'

RSpec.describe "assignments/index", :type => :view do
  before(:each) do
    assign(:assignments, [
      Assignment.create!(
        :name => "Name",
        :code => "Code"
      ),
      Assignment.create!(
        :name => "Name",
        :code => "Code"
      )
    ])
  end

  it "renders a list of assignments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
