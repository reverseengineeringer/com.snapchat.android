package com.addlive.service;

import org.json.JSONException;
import org.json.JSONObject;

public class User
{
  private boolean audioPublished;
  private boolean screenPublished;
  private String screenSinkId;
  private Long userId;
  private boolean videoPublished;
  private String videoSinkId;
  
  public User(JSONObject paramJSONObject)
  {
    try
    {
      setUserId(Long.valueOf(paramJSONObject.getLong("userId")));
      setVideoPublished(paramJSONObject.getBoolean("videoPublished"));
      setAudioPublished(paramJSONObject.getBoolean("audioPublished"));
      setScreenPublished(paramJSONObject.getBoolean("screenPublished"));
      setVideoSinkId(paramJSONObject.getString("videoSinkId"));
      setScreenSinkId(paramJSONObject.getString("screenSinkId"));
      return;
    }
    catch (JSONException paramJSONObject) {}
  }
  
  public String getScreenSinkId()
  {
    return screenSinkId;
  }
  
  public Long getUserId()
  {
    return userId;
  }
  
  public String getVideoSinkId()
  {
    return videoSinkId;
  }
  
  public boolean isAudioPublished()
  {
    return audioPublished;
  }
  
  public boolean isScreenPublished()
  {
    return screenPublished;
  }
  
  public boolean isVideoPublished()
  {
    return videoPublished;
  }
  
  public void setAudioPublished(boolean paramBoolean)
  {
    audioPublished = paramBoolean;
  }
  
  public void setScreenPublished(boolean paramBoolean)
  {
    screenPublished = paramBoolean;
  }
  
  public void setScreenSinkId(String paramString)
  {
    screenSinkId = paramString;
  }
  
  public void setUserId(Long paramLong)
  {
    userId = paramLong;
  }
  
  public void setVideoPublished(boolean paramBoolean)
  {
    videoPublished = paramBoolean;
  }
  
  public void setVideoSinkId(String paramString)
  {
    videoSinkId = paramString;
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.User
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */