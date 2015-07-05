package com.addlive.service.listener;

import org.json.JSONObject;

public class ConnectionLostEvent
{
  private int errCode;
  private String errMessage;
  private String scopeId;
  private boolean willReconnect;
  
  public ConnectionLostEvent(JSONObject paramJSONObject)
  {
    scopeId = paramJSONObject.getString("scopeId");
    errCode = paramJSONObject.getInt("errCode");
    errMessage = paramJSONObject.getString("errMessage");
    willReconnect = paramJSONObject.getBoolean("willReconnect");
  }
  
  public int getErrCode()
  {
    return errCode;
  }
  
  public String getErrMessage()
  {
    return errMessage;
  }
  
  public String getScopeId()
  {
    return scopeId;
  }
  
  public boolean isWillReconnect()
  {
    return willReconnect;
  }
  
  public String toString()
  {
    return "ConnectionLostEvent{scopeId=" + scopeId + ", errCode=" + errCode + ", errMessage=" + errMessage + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.ConnectionLostEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */