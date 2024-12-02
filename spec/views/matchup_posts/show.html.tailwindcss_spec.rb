require 'rails_helper'

RSpec.describe "matchup_posts/show", type: :view do
  before(:each) do
    assign(:matchup_post, MatchupPost.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Opponent/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Self Character/)
    expect(rendered).to match(/Foe Character/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
