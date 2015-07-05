package com.addlive.platform;

public class PlatformInitOptions
{
  private Long applicationId = null;
  private boolean consoleLoggingEnabled = true;
  private String interactionsLogTag = "AddLive_SDK";
  private boolean interactionsLoggingEnabled = false;
  private String libName = null;
  private String storageDir;
  private String streamerEndpointResolver = null;
  private boolean useExternalVideoInput;
  
  public Long getApplicationId()
  {
    return applicationId;
  }
  
  public String getInteractionsLogTag()
  {
    return interactionsLogTag;
  }
  
  public String getLibName()
  {
    return libName;
  }
  
  public String getStorageDir()
  {
    return storageDir;
  }
  
  public String getStreamerEndpointResolver()
  {
    return streamerEndpointResolver;
  }
  
  public boolean isConsoleLoggingEnabled()
  {
    return consoleLoggingEnabled;
  }
  
  public boolean isInteractionsLoggingEnabled()
  {
    return interactionsLoggingEnabled;
  }
  
  public void setApplicationId(Long paramLong)
  {
    applicationId = paramLong;
  }
  
  public void setConsoleLoggingEnabled(boolean paramBoolean)
  {
    consoleLoggingEnabled = paramBoolean;
  }
  
  public void setInteractionsLogTag(String paramString)
  {
    interactionsLogTag = paramString;
  }
  
  public void setInteractionsLoggingEnabled(boolean paramBoolean)
  {
    interactionsLoggingEnabled = paramBoolean;
  }
  
  public void setLibName(String paramString)
  {
    libName = paramString;
  }
  
  public void setStorageDir(String paramString)
  {
    storageDir = paramString;
  }
  
  public void setStreamerEndpointResolver(String paramString)
  {
    streamerEndpointResolver = paramString;
  }
  
  public void setUseExternalVideoInput(boolean paramBoolean)
  {
    useExternalVideoInput = paramBoolean;
  }
  
  public boolean useExternalVideoInput()
  {
    return useExternalVideoInput;
  }
}

/* Location:
 * Qualified Name:     com.addlive.platform.PlatformInitOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */