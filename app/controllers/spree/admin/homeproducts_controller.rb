module Spree
  module Admin
		class HomeproductsController < BaseController

    def update_positions
      params[:positions].each do |id, index|
					Product.where(:id => id).update_all(:position => index)
      end
      respond_to do |format|
        # format.js  { render :text => 'Ok' }
				flash.notice = t(:position_updated)
        format.js  { render :partial => "spree/admin/shared/updated" }
      end
    end

		def destroy
			if Product.where(:id => params[:id]).update_all(:position => nil, :show_on_homepage => false)
				flash.notice = t(:successfully_removed_from_homepage)
	      respond_to do |format|
	          format.js   { render :partial => "spree/admin/shared/destroy" }
	      end
			end
		end

    end   
  end
end

