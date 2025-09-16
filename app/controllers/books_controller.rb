class BooksController < ApplicationController
<<<<<<< HEAD
  before_action :set_book, only: [:show, :edit, :update, :destroy]

=======
  before_action :set_book, only: %i[ show edit update destroy ]

  # GET /books or /books.json
>>>>>>> a7d1a16c8a5c5666dd329ada4f6756b41bf0480e
  def index
    @books = Book.all
  end

<<<<<<< HEAD
  def show
    @book = Book.find(params[:id])
  end

=======
  # GET /books/1 or /books/1.json
  def show
  end

  # GET /books/new
>>>>>>> a7d1a16c8a5c5666dd329ada4f6756b41bf0480e
  def new
    @book = Book.new
  end

<<<<<<< HEAD
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: "Book was successfully created."
    else
      flash.now[:alert] = @book.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to books_path
    end
  end

  def destroy
    @book.destroy
    flash[:notice] = "Book was successfully deleted."
    redirect_to books_path 
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :price, :published_date)
  end
=======
  # GET /books/1/edit
  def edit
  end

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: "Book was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_path, notice: "Book was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title)
    end
>>>>>>> a7d1a16c8a5c5666dd329ada4f6756b41bf0480e
end
