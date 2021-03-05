require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        name: "Name",
        age: 2,
        reason_for_interest: "MyText",
        interests: "MyText",
        discussion_topics: "MyText",
        country: nil,
        gender: nil,
        sexuality: nil,
        identity: nil,
        mentor: false,
        mentee: false,
        mentor_public: false,
        mentee_public: false,
        mentor_availability: false,
        mentee_availability: false
      ),
      Profile.create!(
        name: "Name",
        age: 2,
        reason_for_interest: "MyText",
        interests: "MyText",
        discussion_topics: "MyText",
        country: nil,
        gender: nil,
        sexuality: nil,
        identity: nil,
        mentor: false,
        mentee: false,
        mentor_public: false,
        mentee_public: false,
        mentor_availability: false,
        mentee_availability: false
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
