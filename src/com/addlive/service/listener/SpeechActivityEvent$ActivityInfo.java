package com.addlive.service.listener;

import org.json.JSONObject;

public class SpeechActivityEvent$ActivityInfo
{
  private Integer activity;
  private Long userId;
  
  private SpeechActivityEvent$ActivityInfo(SpeechActivityEvent paramSpeechActivityEvent, JSONObject paramJSONObject)
  {
    userId = Long.valueOf(paramJSONObject.getLong("userId"));
    activity = Integer.valueOf(paramJSONObject.getInt("activity"));
  }
  
  public Integer getActivity()
  {
    return activity;
  }
  
  public Long getUserId()
  {
    return userId;
  }
  
  public String toString()
  {
    return "{userId=" + userId + ", activity=" + activity + '}';
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.SpeechActivityEvent.ActivityInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */