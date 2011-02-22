class Admin::BannersController < Admin::BaseController
  resource_controller
  
  def reorder
    params[:banner].each_with_index do |id, index|
      Banner.update_all(['position=?', index+1], ['id=?', id])
    end
  end
  
  create.response do |wants|
    wants.html { redirect_to collection_url }
  end
  
  update.response do |wants|
    wants.html { redirect_to collection_url }
  end
  
end