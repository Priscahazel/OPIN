require 'open-uri'

class NewsController < ApplicationController
  def index
    rss = SimpleRSS.parse open("http://rss.cnn.com/rss/edition_africa.rss")
    @rss = rss.items
  end

  def new
  end

  def show
    agent = Mechanize.new
    agent.get("http://www.bbc.com/news/business-29896411")
    
    @bbc = agent.page.search(".story-body").map(&:text) 
  end

  def create 
  end

  def edit
  end
  

  def update
  end

  def delete
  end

  def destroy 
  end
  

  private
  def news_params

  end
end
