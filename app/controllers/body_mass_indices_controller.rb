require './lib/body_mass'
class BodyMassIndicesController < ApplicationController
  respond_to :json

  def create
    category = BodyMass.new(weight: mass, height: height).category
    render json: decorateCategory(category)
  end

  private
    def mass
      params['weight']
    end

    def height
      params['height']
    end

    def decorateCategory(category)
      {
        'category': category
      } 
    end
end
