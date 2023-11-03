class WaltsController < ApplicationController
  def top
  end

  def land
  end

  def sea
  end

    def index
        @walts = Walt.all
    end

    def new
        @walt = Walt.new  
    end

    def create
        walt = Walt.new(walt_params)
        if walt.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @walt = Walt.find(params[:id])
      end

      def edit
        @walt = Walt.find(params[:id])
      end

      def update
        walt = Walt.find(params[:id])
        if walt.update(walt_params)
          redirect_to :action => "show", :id => walt.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        walt = Walt.find(params[:id])
        walt.destroy
        redirect_to action: :index
      end

      private

      def walt_params
        params.require(:walt).permit(:title, :image, :about, :overall)
      end

end
