package com.brightcove.player.model;

import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.util.ErrorUtil;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class SourceCollection
  extends SourceAwareMetadataObject
{
  private Set<Source> sources;
  
  public SourceCollection(Source paramSource, DeliveryType paramDeliveryType)
  {
    super(new HashMap());
    if (paramSource == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("sourceRequired"));
    }
    sources = new HashSet();
    sources.add(paramSource);
    initializeDeliveryType(paramDeliveryType);
  }
  
  public SourceCollection(Map<String, Object> paramMap)
  {
    super(paramMap);
  }
  
  public SourceCollection(Map<String, Object> paramMap, Set<Source> paramSet)
  {
    super(paramMap);
    if (paramSet == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("sourcesRequired"));
    }
    sources = paramSet;
  }
  
  public SourceCollection(Set<Source> paramSet, DeliveryType paramDeliveryType)
  {
    super(new HashMap());
    if (paramSet == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("sourcesRequired"));
    }
    sources = paramSet;
    initializeDeliveryType(paramDeliveryType);
  }
  
  public Set<Source> getSources()
  {
    return sources;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("SourceCollection{");
    localStringBuilder1.append(" deliveryType:").append(getDeliveryType().toString());
    StringBuilder localStringBuilder2 = localStringBuilder1.append(" sources:");
    if (sources == null) {}
    for (int i = 0;; i = sources.size())
    {
      localStringBuilder2.append(i);
      localStringBuilder1.append("} ");
      return localStringBuilder1.toString();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.SourceCollection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */