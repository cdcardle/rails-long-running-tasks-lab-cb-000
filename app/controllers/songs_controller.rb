class SongsController < ApplicationController
<<<<<<< HEAD
=======
  require 'csv'
>>>>>>> a3c3026b360efc2e00181a44d387d25a3fc21865

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    @song.update(song_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song deleted."
    redirect_to songs_path
  end

<<<<<<< HEAD
=======
  def upload
    CSV.foreach(params[:file].path, headers: true) do |song|
      Song.create(title: song[0], artist_name: song[1])
    end
    redirect_to songs_path
  end

>>>>>>> a3c3026b360efc2e00181a44d387d25a3fc21865
  private

  def song_params
    params.require(:song).permit(:title, :artist_name)
  end
end
<<<<<<< HEAD

=======
>>>>>>> a3c3026b360efc2e00181a44d387d25a3fc21865
