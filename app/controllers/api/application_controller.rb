class Api::ApplicationController < ActionController::API
  abstract!

  prepend_view_path('app/views/api')
end
