package com.brightcove.player.model;

import com.brightcove.player.captioning.BrightcoveClosedCaption;
import java.io.Serializable;
import java.util.List;

public class WebVTTDocument
  implements Serializable
{
  private List<BrightcoveClosedCaption> captions;
  
  public WebVTTDocument(List<BrightcoveClosedCaption> paramList)
  {
    if (paramList == null) {
      throw new IllegalArgumentException("must provide collections for captions");
    }
    captions = paramList;
  }
  
  public List<BrightcoveClosedCaption> getCaptions()
  {
    return captions;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.WebVTTDocument
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */