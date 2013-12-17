Rails.application.routes.draw do
  get '/components/:component', :to => 'seeren/components#view', :format => :html
end
