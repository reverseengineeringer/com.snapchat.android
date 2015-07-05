package com.addlive.service;

public class Device
{
  private String id;
  private String label;
  
  public Device(String paramString1, String paramString2)
  {
    id = paramString1;
    label = paramString2;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getLabel()
  {
    return label;
  }
  
  public String toString()
  {
    return "Device{id=" + id + ", label=" + label + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.Device
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */