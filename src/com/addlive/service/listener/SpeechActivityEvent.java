package com.addlive.service.listener;

import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class SpeechActivityEvent
{
  private List<Long> activeSpeakers = new LinkedList();
  private String scopeId;
  private List<ActivityInfo> speechActivity = new LinkedList();
  
  public SpeechActivityEvent(JSONObject paramJSONObject)
  {
    scopeId = paramJSONObject.getString("scopeId");
    JSONArray localJSONArray = paramJSONObject.getJSONArray("activeSpeakers");
    paramJSONObject = paramJSONObject.getJSONArray("speechActivity");
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= paramJSONObject.length()) {
        break;
      }
      speechActivity.add(new ActivityInfo(paramJSONObject.getJSONObject(i), null));
      i += 1;
    }
    while (j < localJSONArray.length())
    {
      activeSpeakers.add(Long.valueOf(localJSONArray.getLong(j)));
      j += 1;
    }
  }
  
  public List<Long> getActiveSpeakers()
  {
    return activeSpeakers;
  }
  
  public String getScopeId()
  {
    return scopeId;
  }
  
  public List<ActivityInfo> getSpeechActivity()
  {
    return speechActivity;
  }
  
  public String toString()
  {
    return "SpeechActivityEvent{scopeId='" + scopeId + '\'' + ", activeSpeakers=" + activeSpeakers + ", speechActivity=" + speechActivity + '}';
  }
  
  public class ActivityInfo
  {
    private Integer activity;
    private Long userId;
    
    private ActivityInfo(JSONObject paramJSONObject)
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
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.SpeechActivityEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */