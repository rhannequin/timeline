require 'rails_helper'

describe 'home/index.html.erb' do
  it 'displays welcome message' do
    render
    # Test only first character
    # because accented words not well displayed in rendered content
    expect(rendered.html_safe).to include(I18n.t(:'home.index.title').first)
  end
end
