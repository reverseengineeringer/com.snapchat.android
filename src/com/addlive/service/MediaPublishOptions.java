package com.addlive.service;

public class MediaPublishOptions
{
  private int nativeWidth = 0;
  private String windowId = "";
  
  public int getNativeWidth()
  {
    return nativeWidth;
  }
  
  public String getWindowId()
  {
    return windowId;
  }
  
  public void setNativeWidth(int paramInt)
  {
    nativeWidth = paramInt;
  }
  
  public void setWindowId(String paramString)
  {
    windowId = paramString;
  }
  
  public String toString()
  {
    return "MediaPublishOptions{windowId=" + windowId + ", nativeWidth=" + nativeWidth + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.MediaPublishOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */