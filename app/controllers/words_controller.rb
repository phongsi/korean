class WordsController < ApplicationController
  def index
    @words = Word.paginate(:page => params[:page], :per_page => 10)
    @word = Word.new
    @title = "vocabulary"
    @functions = { 'Noun' => '1', 'Verb' => '2', 'Subject particle' => '3' }
  end

  def create
    @word = Word.new(params[:word])
    if @word.save
      flash[:success] = "Added #{@word.korean}"
    end
    redirect_to :root
  end

  def destroy
    @word.destroy
    redirect_back_or root_path
  end

end
