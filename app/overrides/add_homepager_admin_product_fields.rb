Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                    :name => "ext_homepager_admin_product_fields",
                    :insert_after => "[data-hook='admin_product_form_right']",
                    :partial => "spree/admin/products/ext_homepager_admin_product_fields.html",
                    :disabled => false)