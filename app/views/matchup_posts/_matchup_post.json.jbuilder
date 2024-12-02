json.extract! matchup_post, :id, :user_id, :opponent, :title, :self_character, :foe_character, :victory_conditions, :defeat_condition, :neutral, :disadvantage_edge, :disadvantage_offstage, :disadvantage_juggle, :advantage_edge, :advantage_offstage, :advantage_juggle, :miscellaneou, :created_at, :updated_at
json.url matchup_post_url(matchup_post, format: :json)
