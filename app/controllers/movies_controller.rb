class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
        pageSize = 12
        @limtPageSize = Movie.count / pageSize
    @page = (params[:page] || 0).to_i
    @movies = Movie.order(Arel.sql('RANDOM()')).offset(pageSize * @page).limit(pageSize)

  end

  # GET /movies/1
  # GET /movies/1.json
  def show
        @moviesRe = Movie.where(vote: @movie.vote-1..@movie.vote+1).order(Arel.sql('RANDOM()')).limit(4)
  end

  # GET /movies/new
  def new
    @movie = Movie.new
   # @order = Order.create.(movie_id: params[:post_id], user_id: params[:user_id] )

  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:title, :overview, :poster, :relese, :revenue, :runtime, :budget, :language, :vote)
    end
end
