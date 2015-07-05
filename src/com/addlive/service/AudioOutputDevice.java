package com.addlive.service;

public enum AudioOutputDevice
{
  LOUD_SPEAKER("Loud Speaker"),  PHONE_SPEAKER("Phone Speaker");
  
  private String friendlyName;
  
  private AudioOutputDevice(String paramString)
  {
    friendlyName = paramString;
  }
  
  public static Device[] asDeviceArray()
  {
    Device[] arrayOfDevice = new Device[values().length];
    int i = 0;
    while (i < values().length)
    {
      AudioOutputDevice localAudioOutputDevice = values()[i];
      arrayOfDevice[i] = new Device(localAudioOutputDevice.name(), localAudioOutputDevice.getFriendlyName());
      i += 1;
    }
    return arrayOfDevice;
  }
  
  public static AudioOutputDevice fromStringId(String paramString)
  {
    int i = 0;
    while (i < values().length)
    {
      AudioOutputDevice localAudioOutputDevice = values()[i];
      if (localAudioOutputDevice.name().equals(paramString)) {
        return localAudioOutputDevice;
      }
      i += 1;
    }
    throw new IllegalArgumentException("There is no device with id given");
  }
  
  public final String getFriendlyName()
  {
    return friendlyName;
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.AudioOutputDevice
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */