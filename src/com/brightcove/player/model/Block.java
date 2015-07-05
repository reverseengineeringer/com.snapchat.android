package com.brightcove.player.model;

public class Block
  extends StyledElement
{
  public Integer beginTime;
  public Integer endTime;
  protected String region;
  
  public int getBeginTime()
  {
    return beginTime.intValue();
  }
  
  public int getEndTime()
  {
    return endTime.intValue();
  }
  
  public String getRegion()
  {
    return region;
  }
  
  public void setBeginTime(int paramInt)
  {
    beginTime = Integer.valueOf(paramInt);
  }
  
  public void setEndTime(int paramInt)
  {
    endTime = Integer.valueOf(paramInt);
  }
  
  public void setRegion(String paramString)
  {
    region = paramString;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.Block
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */