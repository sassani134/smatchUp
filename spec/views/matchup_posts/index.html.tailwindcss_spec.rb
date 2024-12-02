require 'rails_helper'

RSpec.describe "matchup_posts/index", type: :view do
  before(:each) do
    assign(:matchup_posts, [
      MatchupPost.create!(
        user: nil,
        opponent: "Opponent",
        title: "Title",
        self_character: "Self Character",
        foe_character: "Foe Character",
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
      ),
      MatchupPost.create!(
        user: nil,
        opponent: "Opponent",
        title: "Title",
        self_character: "Self Character",
        foe_character: "Foe Character",
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
      )
    ])
  end

  it "renders a list of matchup_posts" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Opponent".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Self Character".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Foe Character".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
