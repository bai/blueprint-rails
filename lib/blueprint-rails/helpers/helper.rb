module Blueprint
  module Helpers
    module Helper
      include ActionView::Helpers::AssetTagHelper
      
      def blueprint_ie_fix_stylesheet_link_tag
        ("<!--[if lt IE 8]>"+stylesheet_link_tag("blueprint/ie")+"<![endif] -->").html_safe
      end
    end
  end
end
