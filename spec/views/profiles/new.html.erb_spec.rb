require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      name: "MyString",
      age: 1,
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
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[age]"

      assert_select "textarea[name=?]", "profile[reason_for_interest]"

      assert_select "textarea[name=?]", "profile[interests]"

      assert_select "textarea[name=?]", "profile[discussion_topics]"

      assert_select "input[name=?]", "profile[country_id]"

      assert_select "input[name=?]", "profile[gender_id]"

      assert_select "input[name=?]", "profile[sexuality_id]"

      assert_select "input[name=?]", "profile[identity_id]"

      assert_select "input[name=?]", "profile[mentor]"

      assert_select "input[name=?]", "profile[mentee]"

      assert_select "input[name=?]", "profile[mentor_public]"

      assert_select "input[name=?]", "profile[mentee_public]"

      assert_select "input[name=?]", "profile[mentor_availability]"

      assert_select "input[name=?]", "profile[mentee_availability]"
    end
  end
end
