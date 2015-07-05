package com.brightcove.player.model;

import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.util.ErrorUtil;
import java.util.HashMap;
import java.util.Map;

public class Source
  extends SourceAwareMetadataObject
{
  public Source(String paramString)
  {
    super(new HashMap());
    initializeUrl(paramString);
  }
  
  public Source(String paramString, DeliveryType paramDeliveryType)
  {
    super(new HashMap());
    initializeUrl(paramString);
    initializeDeliveryType(paramDeliveryType);
  }
  
  public Source(Map<String, Object> paramMap)
  {
    super(paramMap);
  }
  
  private void initializeUrl(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("urlRequired"));
    }
    properties.put("url", paramString);
  }
  
  public Integer getBitRate()
  {
    Object localObject = properties.get("bitRate");
    if ((localObject != null) && ((localObject instanceof Integer))) {
      return (Integer)localObject;
    }
    return Integer.valueOf(-1);
  }
  
  public String getUrl()
  {
    return (String)properties.get("url");
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("Source{");
    localStringBuilder1.append("deliveryType: ").append(getDeliveryType().toString());
    StringBuilder localStringBuilder2 = localStringBuilder1.append(", url: ");
    if (getUrl() == null) {}
    for (String str = "N/A";; str = getUrl())
    {
      localStringBuilder2.append(str);
      localStringBuilder1.append("}");
      return localStringBuilder1.toString();
    }
  }
  
  public static final class Fields
  {
    public static final String BIT_RATE = "bitRate";
    public static final String DURATION = "duration";
    public static final String HEADERS = "headers";
    public static final String URL = "url";
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.Source
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */