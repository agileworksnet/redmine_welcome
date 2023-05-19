Redmine::Plugin.register :redmine_my_page do
  name 'Redirect to my page as index'
  author 'Jose Meira'
  description 'My page section as index'
  version '1.0.0'
end

# myPage as root welcome redmine

RedmineApp::Application.routes.prepend do
  scope '/home' do
    resources :welcome
  end
  match '/', :to => 'my#page', :via => [:get]
end

  # Redmine::MenuManager.map :top_menu do |menu|
  #  menu.push 'RedirectHome', "/welcome", { :first => true, :caption => 'Hjem'}
  # end
