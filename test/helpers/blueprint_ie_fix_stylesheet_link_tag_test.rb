require 'test_helper'

describe Blueprint::Helpers::Helper do
  describe :blueprint_ie_fix_stylesheet_link_tag do
    it 'should be present' do
      helper.must_respond_to :blueprint_ie_fix_stylesheet_link_tag
    end
    it 'should output IE css include' do
      helper.blueprint_ie_fix_stylesheet_link_tag.must_match %r{<!--\[if lt IE 8\]><link.*? href="/stylesheets/blueprint/ie.css".*?/><!\[endif\] -->}
    end
  end
end
