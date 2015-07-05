package com.addlive.service.listener;

import com.addlive.service.MediaIssueCode;
import com.addlive.service.MediaType;
import org.json.JSONObject;

public class MediaIssueEvent
{
  private boolean isActive;
  private int issueCode;
  private String mediaType;
  private String message;
  private String scopeId;
  private long userId;
  
  public MediaIssueEvent(JSONObject paramJSONObject)
  {
    scopeId = paramJSONObject.getString("scopeId");
    mediaType = paramJSONObject.getString("mediaType");
    if (paramJSONObject.has("userId")) {
      userId = paramJSONObject.getLong("userId");
    }
    isActive = paramJSONObject.getBoolean("isActive");
    issueCode = paramJSONObject.getInt("issueCode");
    message = paramJSONObject.getString("message");
  }
  
  public MediaIssueCode getMediaIssueType()
  {
    return MediaIssueCode._fromInt(issueCode);
  }
  
  public MediaType getMediaType()
  {
    return MediaType.fromString(mediaType);
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public String getScopeId()
  {
    return scopeId;
  }
  
  public long getUserId()
  {
    return userId;
  }
  
  public boolean isActive()
  {
    return isActive;
  }
  
  public String toString()
  {
    return "MediaIssueEvent{scopeId=" + scopeId + ", mediaType=" + mediaType + ", userId=" + userId + ", isActive=" + isActive + ", issueCode=" + issueCode + ", message=" + message + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.MediaIssueEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */