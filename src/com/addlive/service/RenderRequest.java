package com.addlive.service;

public class RenderRequest
{
  private InvalidateCb invalidateCb = null;
  private boolean mirror = false;
  private int rendererId;
  private String sinkId = "";
  
  public RenderRequest(String paramString, boolean paramBoolean, InvalidateCb paramInvalidateCb)
  {
    sinkId = paramString;
    mirror = paramBoolean;
    invalidateCb = paramInvalidateCb;
    rendererId = 0;
  }
  
  public InvalidateCb getInvalidateCb()
  {
    return invalidateCb;
  }
  
  public String getSinkId()
  {
    return sinkId;
  }
  
  public boolean isMirror()
  {
    return mirror;
  }
  
  public void setMirror(boolean paramBoolean)
  {
    mirror = paramBoolean;
  }
  
  public void setRendererId(int paramInt)
  {
    rendererId = paramInt;
  }
  
  public void setSinkId(String paramString)
  {
    sinkId = paramString;
  }
  
  public String toString()
  {
    return "RenderRequest{sinkId=" + sinkId + ", mirror=" + mirror + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.RenderRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */