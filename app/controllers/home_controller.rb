class HomeController < ApplicationController
  def index
    require 'open-uri'
    @doc = Nokogiri::HTML(open("http://gall.dcinside.com/board/lists/?id=youjung"))
    
    @no = @doc.css(".t_notice")
    @title = @doc.css(".t_subject")
    @writer = @doc.css(".t_writer")
    @date = @doc.css(".t_date")
    @hits = @doc.css("td.t_hits")
    @like = @doc.css("td.t_hits:last-child")
  end
end
