package com.addlive.service.listener;

import org.json.JSONObject;

public class SubscribersCountChangedEvent
{
  private long count;
  
  public SubscribersCountChangedEvent(JSONObject paramJSONObject)
  {
    count = paramJSONObject.getJSONObject("params").getLong("count");
  }
  
  public long getCount()
  {
    return count;
  }
  
  public String toString()
  {
    return "SubscribersCountChangedEvent{count='" + count + '\'' + '}';
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.SubscribersCountChangedEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */