Rails.application.routes.draw do
  get '/students', to: 'students#index' #READ ONE 
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
  get '/students/:id' to: 'students#show' # READ ONE 
  # post '/students' to: 'students#create' # CREATE
  # put '/students' to: 'students#update' #UPDATE
  # delete '/students' to: 'students#' #DELETE
end
