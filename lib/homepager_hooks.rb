class HomepagerHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_product_form_right, "shared/ext_homepager_admin_product_fields.html"
  insert_after :admin_tabs do
    %(<%=  tab(:banners)  %>)
  end
  insert_after :inside_head, "shared/banners_js_css"
end