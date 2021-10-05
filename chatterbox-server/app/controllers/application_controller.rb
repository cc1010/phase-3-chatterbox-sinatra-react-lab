class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes
  get '/' do 
    'Hello world'
  end

  get '/messages' do
    messages = Message.order('created_at')
    messages.to_json
  end

  post '/messages' do
    message = Message.create(params)
    message.to_json
  end

  patch '/messages/:id' do
    message = Message.find(params[:id])
    message.update(body: params[:body], username: params[:username])
    message.to_json
  end

  delete '/messages/:id' do
    message = Message.find(params[:id])
    message.destroy
  end
end
