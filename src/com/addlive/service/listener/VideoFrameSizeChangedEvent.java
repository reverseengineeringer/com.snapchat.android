package com.addlive.service.listener;

import org.json.JSONObject;

public class VideoFrameSizeChangedEvent
{
  private int height;
  private String sinkId;
  private int width;
  
  public VideoFrameSizeChangedEvent(JSONObject paramJSONObject)
  {
    sinkId = paramJSONObject.getString("sinkId");
    height = paramJSONObject.getInt("height");
    width = paramJSONObject.getInt("width");
  }
  
  public int getHeight()
  {
    return height;
  }
  
  public String getSinkId()
  {
    return sinkId;
  }
  
  public int getWidth()
  {
    return width;
  }
  
  public String toString()
  {
    return "VideoFrameSizeChangedEvent{sinkId=" + sinkId + ", width=" + width + ", height=" + height + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.VideoFrameSizeChangedEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */