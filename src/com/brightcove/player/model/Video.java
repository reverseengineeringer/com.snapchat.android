package com.brightcove.player.model;

import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.util.ErrorUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class Video
  extends MetadataObject
{
  private List<CuePoint> cuePoints;
  private Map<DeliveryType, SourceCollection> sourceCollectionMap;
  
  public Video(Map<String, Object> paramMap)
  {
    super(paramMap);
  }
  
  public Video(Map<String, Object> paramMap, Set<SourceCollection> paramSet)
  {
    super(paramMap);
    if (paramSet == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("sourceCollectionsRequired"));
    }
    paramMap = new HashMap();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      SourceCollection localSourceCollection = (SourceCollection)paramSet.next();
      if (paramMap.containsKey(localSourceCollection.getDeliveryType())) {
        throw new IllegalStateException(ErrorUtil.getMessage("duplicateDeliveryTypes"));
      }
      paramMap.put(localSourceCollection.getDeliveryType(), localSourceCollection);
    }
    sourceCollectionMap = paramMap;
  }
  
  public Video(Map<String, Object> paramMap, Set<SourceCollection> paramSet, List<CuePoint> paramList)
  {
    this(paramMap, paramSet);
    if (paramList == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("cuePointsRequired"));
    }
    cuePoints = paramList;
  }
  
  public static Video createVideo(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
    }
    DeliveryType localDeliveryType = DeliveryType.UNKNOWN;
    String str = paramString.split("[?]")[0].toLowerCase(Locale.getDefault());
    if (str.endsWith(".mp4")) {
      localDeliveryType = DeliveryType.MP4;
    }
    for (;;)
    {
      return createVideo(paramString, localDeliveryType);
      if ((str.endsWith(".m3u")) || (str.endsWith(".m3u8"))) {
        localDeliveryType = DeliveryType.HLS;
      } else if (str.contains("/dash/")) {
        localDeliveryType = DeliveryType.DASH;
      }
    }
  }
  
  public static Video createVideo(String paramString, DeliveryType paramDeliveryType)
  {
    if (paramString == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
    }
    HashSet localHashSet = new HashSet();
    localHashSet.add(new SourceCollection(new Source(paramString, paramDeliveryType), paramDeliveryType));
    return new Video(new HashMap(), localHashSet, new ArrayList());
  }
  
  public List<CuePoint> getCuePoints()
  {
    return cuePoints;
  }
  
  public int getDuration()
  {
    int i = 0;
    if (properties.containsKey("duration")) {}
    try
    {
      i = Integer.parseInt(properties.get("duration").toString());
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      new StringBuilder("Invalid number value seen for duration in Video: ").append(properties.get("duration"));
    }
    return 0;
  }
  
  public String getId()
  {
    String str = "";
    if (properties.containsKey("id")) {
      str = properties.get("id").toString();
    }
    return str;
  }
  
  public Map<DeliveryType, SourceCollection> getSourceCollections()
  {
    return sourceCollectionMap;
  }
  
  public String toString()
  {
    int j = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Video{");
    if (properties.get("name") != null)
    {
      localStringBuilder.append("name: \"");
      localStringBuilder.append(properties.get("name"));
      localStringBuilder.append("\"");
    }
    if (properties.get("shortDescription") != null)
    {
      localStringBuilder.append(", shortDescription: \"");
      localStringBuilder.append(properties.get("shortDescription"));
      localStringBuilder.append("\"");
    }
    localStringBuilder.append(", sourceCollections: ");
    if (sourceCollectionMap != null) {}
    for (int i = sourceCollectionMap.size();; i = 0)
    {
      localStringBuilder.append(i);
      localStringBuilder.append(", cuePoints: ");
      i = j;
      if (cuePoints != null) {
        i = cuePoints.size();
      }
      localStringBuilder.append(i);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
  
  public static class Fields
  {
    public static final String CONTENT_ID = "contentId";
    public static final String CUSTOM_FIELDS = "customFields";
    public static final String DURATION = "duration";
    public static final String HEADERS = "headers";
    public static final String ID = "id";
    public static final String NAME = "name";
    public static final String PUBLISHER_ID = "pubId";
    public static final String REFERENCE_ID = "referenceId";
    public static final String SHORT_DESCRIPTION = "shortDescription";
    public static final String STILL_IMAGE_URI = "stillImageUri";
    public static final String SUBTITLE_SOURCES = "subtitleSources";
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.Video
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */