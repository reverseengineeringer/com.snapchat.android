package com.addlive.platform;

public class InitStateChangedEvent
{
  private int errCode;
  private String errMessage;
  private InitState state;
  
  public InitStateChangedEvent(int paramInt, String paramString, InitState paramInitState)
  {
    errCode = paramInt;
    errMessage = paramString;
    state = paramInitState;
  }
  
  public int getErrCode()
  {
    return errCode;
  }
  
  public String getErrMessage()
  {
    return errMessage;
  }
  
  public InitState getState()
  {
    return state;
  }
}

/* Location:
 * Qualified Name:     com.addlive.platform.InitStateChangedEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */