require "rails_helper"

RSpec.describe MatchupPostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/matchup_posts").to route_to("matchup_posts#index")
    end

    it "routes to #new" do
      expect(get: "/matchup_posts/new").to route_to("matchup_posts#new")
    end

    it "routes to #show" do
      expect(get: "/matchup_posts/1").to route_to("matchup_posts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/matchup_posts/1/edit").to route_to("matchup_posts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/matchup_posts").to route_to("matchup_posts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/matchup_posts/1").to route_to("matchup_posts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/matchup_posts/1").to route_to("matchup_posts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/matchup_posts/1").to route_to("matchup_posts#destroy", id: "1")
    end
  end
end
