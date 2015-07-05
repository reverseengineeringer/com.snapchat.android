package com.addlive.service.listener;

import com.addlive.service.MediaType;
import org.json.JSONObject;

public class UserStateChangedEvent
{
  private boolean audioPublished;
  private boolean isConnected;
  private String mediaType;
  private String scopeId;
  private boolean screenPublished;
  private String screenSinkId;
  private long userId;
  private boolean videoPublished;
  private String videoSinkId;
  
  public UserStateChangedEvent(JSONObject paramJSONObject)
  {
    scopeId = paramJSONObject.getString("scopeId");
    mediaType = paramJSONObject.getString("mediaType");
    paramJSONObject = paramJSONObject.getJSONObject("userDetails");
    userId = paramJSONObject.getLong("userId");
    isConnected = paramJSONObject.getBoolean("isConnected");
    audioPublished = paramJSONObject.getBoolean("audioPublished");
    videoPublished = paramJSONObject.getBoolean("videoPublished");
    screenPublished = paramJSONObject.getBoolean("screenPublished");
    videoSinkId = paramJSONObject.getString("videoSinkId");
    screenSinkId = paramJSONObject.getString("screenSinkId");
  }
  
  public MediaType getMediaType()
  {
    return MediaType.fromString(mediaType);
  }
  
  public String getScopeId()
  {
    return scopeId;
  }
  
  public String getScreenSinkId()
  {
    return screenSinkId;
  }
  
  public long getUserId()
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
  
  public boolean isConnected()
  {
    return isConnected;
  }
  
  public boolean isScreenPublished()
  {
    return screenPublished;
  }
  
  public boolean isVideoPublished()
  {
    return videoPublished;
  }
  
  public String toString()
  {
    return "UserStateChangedEvent{scopeId=" + scopeId + ", userId=" + userId + ", isConnected=" + isConnected + ", audioPublished=" + audioPublished + ", videoPublished=" + videoPublished + ", videoSinkId=" + videoSinkId + ", screenSinkId=" + screenSinkId + ", mediaType=" + mediaType + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.UserStateChangedEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */