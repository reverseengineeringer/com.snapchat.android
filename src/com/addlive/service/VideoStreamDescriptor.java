package com.addlive.service;

import org.json.JSONObject;

public class VideoStreamDescriptor
{
  private int maxBitRate = 1024;
  private int maxFps = 15;
  private int maxHeight = 480;
  private int maxWidth = 640;
  private boolean publish = true;
  private boolean receive = true;
  private boolean useAdaptation = true;
  
  public int getMaxFps()
  {
    return maxFps;
  }
  
  public int getMaxHeight()
  {
    return maxHeight;
  }
  
  public int getMaxWidth()
  {
    return maxWidth;
  }
  
  public boolean isUseAdaptation()
  {
    return useAdaptation;
  }
  
  public void setMaxFps(int paramInt)
  {
    maxFps = paramInt;
  }
  
  public void setMaxHeight(int paramInt)
  {
    maxHeight = paramInt;
  }
  
  public void setMaxWidth(int paramInt)
  {
    maxWidth = paramInt;
  }
  
  public void setUseAdaptation(boolean paramBoolean)
  {
    useAdaptation = paramBoolean;
  }
  
  public JSONObject toJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("maxWidth", maxWidth);
    localJSONObject.put("maxHeight", maxHeight);
    localJSONObject.put("maxFps", maxFps);
    localJSONObject.put("useAdaptation", useAdaptation);
    return localJSONObject;
  }
  
  public String toString()
  {
    return "VideoStreamDescriptor{maxWidth=" + maxWidth + ", maxHeight=" + maxHeight + ", maxFps=" + maxFps + ", useAdaptation=" + useAdaptation + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.VideoStreamDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */