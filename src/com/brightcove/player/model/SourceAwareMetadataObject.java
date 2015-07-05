package com.brightcove.player.model;

import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.util.ErrorUtil;
import java.util.Map;

public abstract class SourceAwareMetadataObject
  extends MetadataObject
{
  public SourceAwareMetadataObject(Map<String, Object> paramMap)
  {
    super(paramMap);
  }
  
  public DeliveryType getDeliveryType()
  {
    Object localObject = properties.get("deliveryType");
    if ((localObject != null) && ((localObject instanceof DeliveryType))) {
      return (DeliveryType)localObject;
    }
    return DeliveryType.UNKNOWN;
  }
  
  protected void initializeDeliveryType(DeliveryType paramDeliveryType)
  {
    if (paramDeliveryType == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("deliveryTypeRequired"));
    }
    properties.put("deliveryType", paramDeliveryType);
  }
  
  public static final class Fields
  {
    public static final String DELIVERY_TYPE = "deliveryType";
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.SourceAwareMetadataObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */