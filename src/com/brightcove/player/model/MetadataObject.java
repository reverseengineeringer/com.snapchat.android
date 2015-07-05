package com.brightcove.player.model;

import com.brightcove.player.util.ErrorUtil;
import java.io.Serializable;
import java.util.Map;

public abstract class MetadataObject
  implements Serializable
{
  public static final String TAG = MetadataObject.class.getSimpleName();
  protected Map<String, Object> properties;
  
  public MetadataObject(Map<String, Object> paramMap)
  {
    if (paramMap == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("propertiesRequired"));
    }
    properties = paramMap;
  }
  
  public Integer getIntegerProperty(String paramString)
  {
    if (properties.containsKey(paramString)) {
      try
      {
        Object localObject = properties.get(paramString);
        if (localObject == null) {
          break label112;
        }
        if ((localObject instanceof Integer)) {
          return (Integer)localObject;
        }
        int i = Integer.parseInt(localObject.toString());
        return Integer.valueOf(i);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        new StringBuilder("Error converting value of <").append(properties.get(paramString)).append("> for key '").append(paramString).append("'");
        return null;
      }
    }
    new StringBuilder("Could not find property with name '").append(paramString).append("'");
    label112:
    return null;
  }
  
  public Map<String, Object> getProperties()
  {
    return properties;
  }
  
  public String getStringProperty(String paramString)
  {
    if (properties.containsKey(paramString))
    {
      paramString = properties.get(paramString);
      if ((paramString instanceof String)) {
        return (String)paramString;
      }
      return null;
    }
    return null;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MetadataObject");
    localStringBuilder.append("{properties: ").append(properties.size());
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.MetadataObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */