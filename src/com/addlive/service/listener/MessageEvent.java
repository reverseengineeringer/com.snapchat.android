package com.addlive.service.listener;

import org.json.JSONObject;

public class MessageEvent
{
  private byte[] data;
  private String scopeId;
  private long srcUserId;
  
  public MessageEvent(JSONObject paramJSONObject)
  {
    data = paramJSONObject.getString("data").getBytes();
    srcUserId = paramJSONObject.getLong("srcUserId");
    scopeId = paramJSONObject.getString("scopeId");
  }
  
  public byte[] getData()
  {
    return data;
  }
  
  public String getScopeId()
  {
    return scopeId;
  }
  
  public long getSrcUserId()
  {
    return srcUserId;
  }
  
  public String toString()
  {
    return "MessageEvent{data.length=" + data.length + ", srcUserId=" + srcUserId + ", scopeId=" + scopeId + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.MessageEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */