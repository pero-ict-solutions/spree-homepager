module Spree
  module Admin
    class BannersController < ResourceController

    def reorder
      params[:banner].each_with_index do |id, index|
        Banner.update_all(['position=?', index+1], ['id=?', id])
      end
    end

    end   
  end
end

