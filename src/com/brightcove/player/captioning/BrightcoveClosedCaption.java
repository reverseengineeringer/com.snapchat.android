package com.brightcove.player.captioning;

import com.brightcove.player.model.Block;
import com.brightcove.player.model.Span;
import java.util.List;

public class BrightcoveClosedCaption
  extends Block
{
  private String caption;
  private List<List<Span>> lines;
  
  public BrightcoveClosedCaption() {}
  
  public BrightcoveClosedCaption(int paramInt1, int paramInt2, String paramString)
  {
    beginTime = Integer.valueOf(paramInt1);
    endTime = Integer.valueOf(paramInt2);
    caption = paramString;
  }
  
  public BrightcoveClosedCaption(int paramInt1, int paramInt2, List<List<Span>> paramList)
  {
    beginTime = Integer.valueOf(paramInt1);
    endTime = Integer.valueOf(paramInt2);
    lines = paramList;
  }
  
  public String getCaption()
  {
    return caption;
  }
  
  public List<List<Span>> getLines()
  {
    return lines;
  }
  
  public void setLines(List<List<Span>> paramList)
  {
    lines = paramList;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */