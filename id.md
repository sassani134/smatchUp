Game
- Character
    - battle info
- Map

User
- matchup
    - has a game
    - User Character
    - Oponnent
    
User has one library
library is used to store self made matchup matchup you've seen matchup you liked and user you sub

MVP
models
---
User
Game
Character
matchup

Association
---
Character has one Game
User has many matchup
matchup has one game
disadvantage_edge:text disadvantage_offstage disadvantage:juggle

rails g scaffold MatchupPost user:references opponent title self_character:references foe_character:references victory_conditions:text defeat_condition:text neutral:text disadvantage_edge:text disadvantage_offstage:text disadvantage_juggle:text advantage_edge:text advantage_offstage:text advantage_juggle:text miscellaneou:text

rails g scaffold MatchupPost user:references opponent title self_character foe_character victory_conditions:text defeat_condition:text neutral:text disadvantage_edge:text disadvantage_offstage:text disadvantage_juggle:text advantage_edge:text advantage_offstage:text advantage_juggle:text miscellaneou:text

---

need to be connected to create matchup

user is user session in creation

remove user field

enable rich text

