class Admin::BannersController < Admin::BaseController
  resource_controller
  
  def reorder
    params[:banner].each_with_index do |id, index|
      Banner.update_all(['position=?', index+1], ['id=?', id])
    end

    respond_to do |format|
      format.js do 
        render :update do |page|
          page.visual_effect :highlight, "banners"
        end
      end
    end  
  end
  
end