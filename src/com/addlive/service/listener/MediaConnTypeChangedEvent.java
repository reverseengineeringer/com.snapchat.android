package com.addlive.service.listener;

import com.addlive.service.ConnectionType;
import com.addlive.service.MediaType;
import org.json.JSONObject;

public class MediaConnTypeChangedEvent
{
  private String connectionType;
  private String mediaType;
  private String scopeId;
  
  public MediaConnTypeChangedEvent(JSONObject paramJSONObject)
  {
    scopeId = paramJSONObject.getString("scopeId");
    mediaType = paramJSONObject.getString("mediaType");
    connectionType = paramJSONObject.getString("connectionType");
  }
  
  public ConnectionType getConnectionType()
  {
    return ConnectionType.fromString(connectionType);
  }
  
  public MediaType getMediaType()
  {
    return MediaType.fromString(mediaType);
  }
  
  public String getScopeId()
  {
    return scopeId;
  }
  
  public String toString()
  {
    return "MediaConnTypeChangedEvent{scopeId=" + scopeId + ", mediaType=" + mediaType + ", connectionType=" + connectionType + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.MediaConnTypeChangedEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */