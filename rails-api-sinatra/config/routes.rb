require_relative "../lib/sinatra/server"

Rails.application.routes.draw do
  mount SinatraApp => '/sinatra'
end
