class MatchupPostsController < ApplicationController
  before_action :set_matchup_post, only: %i[ show edit update destroy ]

  # GET /matchup_posts or /matchup_posts.json
  def index
    @matchup_posts = MatchupPost.all
  end

  # GET /matchup_posts/1 or /matchup_posts/1.json
  def show
  end

  # GET /matchup_posts/new
  def new
    @matchup_post = MatchupPost.new
  end

  # GET /matchup_posts/1/edit
  def edit
  end

  # POST /matchup_posts or /matchup_posts.json
  def create
    @matchup_post = MatchupPost.new(matchup_post_params)

    respond_to do |format|
      if @matchup_post.save
        format.html { redirect_to @matchup_post, notice: "Matchup post was successfully created." }
        format.json { render :show, status: :created, location: @matchup_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @matchup_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matchup_posts/1 or /matchup_posts/1.json
  def update
    respond_to do |format|
      if @matchup_post.update(matchup_post_params)
        format.html { redirect_to @matchup_post, notice: "Matchup post was successfully updated." }
        format.json { render :show, status: :ok, location: @matchup_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @matchup_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matchup_posts/1 or /matchup_posts/1.json
  def destroy
    @matchup_post.destroy!

    respond_to do |format|
      format.html { redirect_to matchup_posts_path, status: :see_other, notice: "Matchup post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matchup_post
      @matchup_post = MatchupPost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def matchup_post_params
      params.expect(matchup_post: [ :user_id, :opponent, :title, :self_character, :foe_character, :victory_conditions, :defeat_condition, :neutral, :disadvantage_edge, :disadvantage_offstage, :disadvantage_juggle, :advantage_edge, :advantage_offstage, :advantage_juggle, :miscellaneou ])
    end
end
