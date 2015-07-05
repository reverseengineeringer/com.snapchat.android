package com.addlive.platform;

public abstract interface PlatformInitListener
{
  public abstract void onInitProgressChanged(InitProgressChangedEvent paramInitProgressChangedEvent);
  
  public abstract void onInitStateChanged(InitStateChangedEvent paramInitStateChangedEvent);
}

/* Location:
 * Qualified Name:     com.addlive.platform.PlatformInitListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */