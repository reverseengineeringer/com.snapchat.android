package com.addlive.impl.cam;

import com.addlive.service.Device;
import java.util.List;

public abstract interface ADLCamera
{
  public abstract void dispose();
  
  public abstract List<Device> getCameraDevices();
  
  public abstract String getDevice();
  
  public abstract int processProperty(String paramString1, String paramString2);
  
  public abstract void setDevice(String paramString);
  
  public abstract void start(Object paramObject);
  
  public abstract void stop();
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCamera
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */