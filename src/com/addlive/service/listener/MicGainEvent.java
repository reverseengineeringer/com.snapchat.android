package com.addlive.service.listener;

import org.json.JSONObject;

public class MicGainEvent
{
  private int gain;
  
  public MicGainEvent(JSONObject paramJSONObject)
  {
    gain = paramJSONObject.getInt("gain");
  }
  
  public String toString()
  {
    return "MicGainEvent{gain=" + gain + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.MicGainEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */