package com.addlive.service.listener;

import org.json.JSONObject;

public class SessionReconnectedEvent
{
  private String scopeId;
  
  public SessionReconnectedEvent(JSONObject paramJSONObject)
  {
    scopeId = paramJSONObject.getString("scopeId");
  }
  
  public String getScopeId()
  {
    return scopeId;
  }
  
  public String toString()
  {
    return "ConnectionLostEvent{scopeId=" + scopeId + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.SessionReconnectedEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */