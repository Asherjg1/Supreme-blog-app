class SneakersController< ApplicationController

  def index
    @sneakers = Sneaker.all
    render 'index'
  end

  def show
    @sneaker = Sneaker.find(params[:id])
    render 'show'
  end

  def new
    @sneaker = Sneaker.new
    render 'new'
  end

  def create
    sneaker = params["sneaker"]
    Sneaker.create!(condition: sneaker[:condition], price: sneaker[:price], hypefactor: sneaker[:hypefactor], name: sneaker[:name], brand: sneaker[:brand])
    redirect_to action: "index"
  end

  def edit
    sneaker = params["sneaker"]
    @sneaker = Sneaker.find(params[:id])
  end

  def update
    sneaker = params["sneaker"]
    @sneaker = Sneaker.find(params[:id])
    @sneaker.update!(condition: sneaker[:condition], price: sneaker[:price], hypefactor: sneaker[:hypefactor], name: sneaker[:name], brand: sneaker[:brand])
    redirect_to action: "index"
  end

  def destroy
    Sneaker.find(params[:id]).destroy
    redirect_to action: "index"
  end
end
