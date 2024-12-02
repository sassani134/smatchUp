class CreateMatchupPosts < ActiveRecord::Migration[8.0]
  def change
    create_table :matchup_posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :opponent
      t.string :title
      t.string :self_character
      t.string :foe_character
      t.text :victory_conditions
      t.text :defeat_condition
      t.text :neutral
      t.text :disadvantage_edge
      t.text :disadvantage_offstage
      t.text :disadvantage_juggle
      t.text :advantage_edge
      t.text :advantage_offstage
      t.text :advantage_juggle
      t.text :miscellaneou

      t.timestamps
    end
  end
end
