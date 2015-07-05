package com.addlive.impl;

import org.json.JSONObject;

public class ServiceEvent
{
  private static final String gEventPropertyName = "event";
  private static final String gParamsPropertyName = "params";
  private String event;
  private JSONObject params;
  
  public ServiceEvent(String paramString)
  {
    paramString = new JSONObject(paramString);
    params = paramString.getJSONObject("params");
    event = paramString.getString("event");
  }
  
  public String getEvent()
  {
    return event;
  }
  
  public JSONObject getParams()
  {
    return params;
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ServiceEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */