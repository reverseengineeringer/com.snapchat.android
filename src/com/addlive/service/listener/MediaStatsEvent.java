package com.addlive.service.listener;

import com.addlive.service.MediaType;
import org.json.JSONObject;

public class MediaStatsEvent
{
  private String mediaType;
  private long remoteUserId;
  private String scopeId;
  private MediaStats stats;
  
  public MediaStatsEvent(JSONObject paramJSONObject)
  {
    scopeId = paramJSONObject.getString("scopeId");
    mediaType = paramJSONObject.getString("mediaType");
    if (paramJSONObject.has("remoteUserId")) {}
    for (remoteUserId = paramJSONObject.getLong("remoteUserId");; remoteUserId = -1L)
    {
      stats = new MediaStats(paramJSONObject.getJSONObject("stats"));
      return;
    }
  }
  
  public MediaType getMediaType()
  {
    return MediaType.fromString(mediaType);
  }
  
  public long getRemoteUserId()
  {
    return remoteUserId;
  }
  
  public String getScopeId()
  {
    return scopeId;
  }
  
  public MediaStats getStats()
  {
    return stats;
  }
  
  public String toString()
  {
    return "MediaStatsEvent{scopeId=" + scopeId + ", mediaType=" + mediaType + ", remoteUserId=" + remoteUserId + ", stats=" + stats + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.MediaStatsEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */