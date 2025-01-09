class EletronicTypeController < ApplicationController
  def index
    @eletronic_types = EletronicType.all
  end
end
