class HomepagerHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_product_form_right, "shared/ext_homepager_admin_product_fields.html"
end
