class GeneralContractorsController < ApplicationController
    def index
        @gc = GeneralContractor.all
    end

end
