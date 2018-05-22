require 'net/http'
class SkysController < ApplicationController
  def ask
  end

  def get
    @start_time = params[:event_starttime]
    @end_time = params[:event_endtime]
    nasa_ask = "http://www.lmsal.com/hek/her?cosec=2&cmd=search&type=column&event_type=fl,fe,er,fi,cw,lp,ss,cj,sp,pt,ar,cr,bu,ee&event_starttime=#{@start_time}T00:00:00&event_endtime=#{@end_time}T00:00:00&temporalmode=strict&event_coordsys=helioprojective&x1=-1200&x2=1200&y1=-1200&y2=1200"
    @nasa_info = Net::HTTP.get(URI(nasa_ask))
    @nasa_easy = JSON.parse @nasa_info
    @nasa_result = @nasa_easy['result']
  end
end
