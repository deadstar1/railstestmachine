class ShitController < ApplicationController
    def show
        #ERB injection here
        render params[:t]
    end
end
