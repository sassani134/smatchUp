class MatchupPost < ApplicationRecord
  belongs_to :user
  has_rich_text :victory_conditions
  has_rich_text :defeat_condition
  has_rich_text :neutral
  has_rich_text :disadvantage_edge
  has_rich_text :disadvantage_offstage
  has_rich_text :disadvantage_juggle
  has_rich_text :advantage_edge
  has_rich_text :advantage_offstage
  has_rich_text :advantage_juggle
  has_rich_text :miscellaneou
end
