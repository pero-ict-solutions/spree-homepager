class HomepagerHooks < Spree::ThemeSupport::HookListener
  
  Deface::Override.new(:virtual_path => "admin/products/_form",
                       :name => "ext_homepager_admin_product_fields",
                       :insert_after => "[data-hook='admin_product_form_right']",
                       :partial => "shared/ext_homepager_admin_product_fields.html",
                       :disabled => false)
                       
                       
  Deface::Override.new(:virtual_path => "layouts/admin",
                       :name => "banner_admin_tab",
                       :insert_bottom => "[data-hook='admin_tabs']",
                       :text => "<%= tab(:banners) %>",
                       :disabled => false)
                                            
  insert_after :inside_head, "shared/banners_js_css"
end