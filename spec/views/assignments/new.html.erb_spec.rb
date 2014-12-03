require 'rails_helper'

RSpec.describe "assignments/new", :type => :view do
  before(:each) do
    assign(:assignment, Assignment.new(
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders new assignment form" do
    render

    assert_select "form[action=?][method=?]", assignments_path, "post" do

      assert_select "input#assignment_name[name=?]", "assignment[name]"

      assert_select "input#assignment_code[name=?]", "assignment[code]"
    end
  end
end
