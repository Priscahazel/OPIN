require 'open-uri'

class NewsController < ApplicationController
  def index
    @index
  end

  

  def rss
    @category = params[:category]
    rss = SimpleRSS.parse open(params[:q])
    @rss = rss.items
  end

  def show
    agent = Mechanize.new
    agent.get(params[:q])


    if params[:category] == "cnn"
  #CNN
  @article_title = "#{agent.page.at("h1")}".html_safe
  #@article_video = "#{agent.page.at("#cvp_1")}"
  @article_content ="#{agent.page.at("p")}#{agent.page.search(".cnn_storypgraphtxt")}".html_safe

elsif params[:category] == "bbc"
  #BBC

  @article_title = "#{agent.page.at("h1")}".html_safe
 # @article_video = "#{agent.page.at("#cvp_1")}"
 @article_content = "#{agent.page.search("p")}".html_safe

elsif params[:category] == "aljazeera"
  #Aljazeera
  @article_title = "#{agent.page.at("h1")}".html_safe
  #@article_video = "#{agent.page.at("#cvp_1")}"
  @article_content = "#{agent.page.at(".DetailedSummary")}".html_safe
  
elsif params[:category] == "joy_news"
  #Joy news
  @article_title = "#{agent.page.at("h1")}".html_safe
  #@article_video = "#{agent.page.at("#cvp_1")}"
  @article_content = "#{agent.page.search(".storypane")}".html_safe


elsif params[:category] == "peace_news"
  #Peace news
  @article_title = "#{agent.page.at(".peace_black_text_2")}".html_safe
  #@article_video = "#{agent.page.at("#cvp_1")}"
  @article_content = "#{agent.page.at(".peace_content_text_1")}".html_safe

end

  #render html: "#{agent.page.at("p")}#{agent.page.search(".cnn_storypgraphtxt")}".html_safe, template: "layout/application"
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
