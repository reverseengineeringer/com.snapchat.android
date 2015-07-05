package com.addlive.service.listener;

import org.json.JSONObject;

public class DeviceListChangedEvent
{
  private boolean audioIn;
  private boolean audioOut;
  private boolean videoIn;
  
  public DeviceListChangedEvent(JSONObject paramJSONObject)
  {
    audioIn = paramJSONObject.getBoolean("audioIn");
    audioOut = paramJSONObject.getBoolean("audioOut");
    videoIn = paramJSONObject.getBoolean("videoIn");
  }
  
  public String toString()
  {
    return "DeviceListChangedEvent{audioIn=" + audioIn + ", audioOut=" + audioOut + ", videoIn=" + videoIn + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.DeviceListChangedEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */