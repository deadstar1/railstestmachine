class ShitController < ApplicationController
    def show
        #ERB injection here
        render params[:t]
    end
  def sqli
    @studentsqli=Studentsqli.find_by(params[:id])
  end
end
