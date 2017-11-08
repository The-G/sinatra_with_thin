require 'sinatra'
require 'thin'
require 'csv'
require 'date'
require 'data_mapper'

# need install dm-sqlite-adapter
DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/post.db") 

class Post
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :content, Text
  property :created_at, DateTime
end
# create table

DataMapper.finalize # set database to use upper info
# create database

# automatically create the post table
Post.auto_upgrade! 


get '/' do
    erb :index
end

get '/create' do
    @title = params[:title] # params라는 hash를 통해서 catch 할 수 있다!! 
    @content = params[:content]
    
    # CSV.open('board.csv','a+') do |csv| # a+ w+ 는 뭐지?
    #     csv << [@title, @content, Time.now.to_s] # 1행은 배열로써 집어넣어준다!!
    # end
    
    Post.create(title:@title, content:@content)
    # do insert
    
    erb :create
    
end