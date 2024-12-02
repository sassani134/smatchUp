require 'rails_helper'

RSpec.describe "matchup_posts/new", type: :view do
  before(:each) do
    assign(:matchup_post, MatchupPost.new(
      user: nil,
      opponent: "MyString",
      title: "MyString",
      self_character: "MyString",
      foe_character: "MyString",
      victory_conditions: "MyText",
      defeat_condition: "MyText",
      neutral: "MyText",
      disadvantage_edge: "MyText",
      disadvantage_offstage: "MyText",
      disadvantage_juggle: "MyText",
      advantage_edge: "MyText",
      advantage_offstage: "MyText",
      advantage_juggle: "MyText",
      miscellaneou: "MyText"
    ))
  end

  it "renders new matchup_post form" do
    render

    assert_select "form[action=?][method=?]", matchup_posts_path, "post" do
      assert_select "input[name=?]", "matchup_post[user_id]"

      assert_select "input[name=?]", "matchup_post[opponent]"

      assert_select "input[name=?]", "matchup_post[title]"

      assert_select "input[name=?]", "matchup_post[self_character]"

      assert_select "input[name=?]", "matchup_post[foe_character]"

      assert_select "textarea[name=?]", "matchup_post[victory_conditions]"

      assert_select "textarea[name=?]", "matchup_post[defeat_condition]"

      assert_select "textarea[name=?]", "matchup_post[neutral]"

      assert_select "textarea[name=?]", "matchup_post[disadvantage_edge]"

      assert_select "textarea[name=?]", "matchup_post[disadvantage_offstage]"

      assert_select "textarea[name=?]", "matchup_post[disadvantage_juggle]"

      assert_select "textarea[name=?]", "matchup_post[advantage_edge]"

      assert_select "textarea[name=?]", "matchup_post[advantage_offstage]"

      assert_select "textarea[name=?]", "matchup_post[advantage_juggle]"

      assert_select "textarea[name=?]", "matchup_post[miscellaneou]"
    end
  end
end
