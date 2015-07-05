package com.brightcove.player.model;

import com.brightcove.player.captioning.BrightcoveClosedCaption;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class TTMLDocument
  implements Serializable
{
  private Block body;
  private List<BrightcoveClosedCaption> captions;
  private Map<String, Region> regions;
  private Map<String, StyledElement> styles;
  
  public TTMLDocument(Map<String, Region> paramMap, Map<String, StyledElement> paramMap1, Block paramBlock, List<BrightcoveClosedCaption> paramList)
  {
    if ((paramMap == null) || (paramMap1 == null) || (paramBlock == null) || (paramList == null)) {
      throw new IllegalArgumentException("must provide collections for regions, styles, body and captions");
    }
    regions = paramMap;
    styles = paramMap1;
    body = paramBlock;
    captions = paramList;
  }
  
  public Block getBody()
  {
    return body;
  }
  
  public List<BrightcoveClosedCaption> getCaptions()
  {
    return captions;
  }
  
  public Map<String, Region> getRegions()
  {
    return regions;
  }
  
  public Map<String, StyledElement> getStyles()
  {
    return styles;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.TTMLDocument
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */