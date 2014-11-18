require 'open-uri'

class NewsController < ApplicationController
  def index
    @index
  end

  

  def rss
    rss = SimpleRSS.parse open(params[:q])
    @rss = rss.items
  end

#   def zeera
#    zeera = SimpleRSS.parse open("http://www.aljazeera.com/Services/Rss/?PostingId=2007731105943979989")
#    @zeera = zeera.items 
#  end

#  def cnn
#   cnn = SimpleRSS.parse open("http://rss.cnn.com/rss/edition.rss")
#   @cnn = cnn.items
# end

# def joy
#   joy = SimpleRSS.parse open("http://www.myjoyonline.com/services/rss/")
#   @joy = joy.items 
# end


def show
  agent = Mechanize.new
  agent.get(params[:q])

  render html: "#{agent.page.at("p")}#{agent.page.search(".cnn_storypgraphtxt")}".html_safe
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
