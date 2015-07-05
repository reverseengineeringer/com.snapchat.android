package com.addlive.service.listener;

import org.json.JSONObject;

public class MicActivityEvent
{
  private int activity;
  
  public MicActivityEvent(JSONObject paramJSONObject)
  {
    activity = paramJSONObject.getInt("activity");
  }
  
  public String toString()
  {
    return "MicActivityEvent{activity=" + activity + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.MicActivityEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */