require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get '/multiply/:num1/:num2' do
    value1 = params[:num1]
    value2 = params[:num2]
    (value1.to_i * value2.to_i).to_s

    #@number * @number2

  end

  # Code your final two routes here:

end
