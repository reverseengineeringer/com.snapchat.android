import java.util.HashMap;
import java.util.Map;

public final class gl
  extends lt
{
  public Long adIndexCount;
  public Long adIndexPos;
  public String adsnapId;
  public String editionId;
  private final String eventName = "DISCOVER_AD_LONGFORM_SHARE_CREATE";
  public hy longformType;
  public hy mediaType;
  public String publisherId;
  public Long snapIndexCount;
  public Long snapIndexPos;
  private ld source;
  public Double timeViewed;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_AD_LONGFORM_SHARE_CREATE");
    if (adIndexCount != null) {
      localHashMap.put("ad_index_count", adIndexCount);
    }
    if (adIndexPos != null) {
      localHashMap.put("ad_index_pos", adIndexPos);
    }
    if (adsnapId != null) {
      localHashMap.put("adsnap_id", adsnapId);
    }
    if (editionId != null) {
      localHashMap.put("edition_id", editionId);
    }
    if (longformType != null) {
      localHashMap.put("longform_type", longformType);
    }
    if (mediaType != null) {
      localHashMap.put("media_type", mediaType);
    }
    if (publisherId != null) {
      localHashMap.put("publisher_id", publisherId);
    }
    if (snapIndexCount != null) {
      localHashMap.put("snap_index_count", snapIndexCount);
    }
    if (snapIndexPos != null) {
      localHashMap.put("snap_index_pos", snapIndexPos);
    }
    if (source != null) {
      localHashMap.put("source", source);
    }
    if (timeViewed != null) {
      localHashMap.put("time_viewed", timeViewed);
    }
    localHashMap.putAll(super.a());
    return localHashMap;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      if (!super.equals(paramObject)) {
        return false;
      }
      paramObject = (gl)paramObject;
      if (adIndexCount != null)
      {
        if (adIndexCount.equals(adIndexCount)) {}
      }
      else {
        while (adIndexCount != null) {
          return false;
        }
      }
      if (adIndexPos != null)
      {
        if (adIndexPos.equals(adIndexPos)) {}
      }
      else {
        while (adIndexPos != null) {
          return false;
        }
      }
      if (adsnapId != null)
      {
        if (adsnapId.equals(adsnapId)) {}
      }
      else {
        while (adsnapId != null) {
          return false;
        }
      }
      if (editionId != null)
      {
        if (editionId.equals(editionId)) {}
      }
      else {
        while (editionId != null) {
          return false;
        }
      }
      if (longformType != null)
      {
        if (longformType.equals(longformType)) {}
      }
      else {
        while (longformType != null) {
          return false;
        }
      }
      if (mediaType != null)
      {
        if (mediaType.equals(mediaType)) {}
      }
      else {
        while (mediaType != null) {
          return false;
        }
      }
      if (publisherId != null)
      {
        if (publisherId.equals(publisherId)) {}
      }
      else {
        while (publisherId != null) {
          return false;
        }
      }
      if (snapIndexCount != null)
      {
        if (snapIndexCount.equals(snapIndexCount)) {}
      }
      else {
        while (snapIndexCount != null) {
          return false;
        }
      }
      if (snapIndexPos != null)
      {
        if (snapIndexPos.equals(snapIndexPos)) {}
      }
      else {
        while (snapIndexPos != null) {
          return false;
        }
      }
      if (source != null)
      {
        if (source.equals(source)) {}
      }
      else {
        while (source != null) {
          return false;
        }
      }
      if (timeViewed == null) {
        break;
      }
    } while (timeViewed.equals(timeViewed));
    for (;;)
    {
      return false;
      if (timeViewed == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int i6 = 0;
    int i7 = super.hashCode();
    int i;
    int j;
    label39:
    int k;
    label54:
    int m;
    label70:
    int n;
    label86:
    int i1;
    label102:
    int i2;
    label118:
    int i3;
    label134:
    int i4;
    if (adIndexCount != null)
    {
      i = adIndexCount.hashCode();
      if (adIndexPos == null) {
        break label253;
      }
      j = adIndexPos.hashCode();
      if (adsnapId == null) {
        break label258;
      }
      k = adsnapId.hashCode();
      if (editionId == null) {
        break label263;
      }
      m = editionId.hashCode();
      if (longformType == null) {
        break label269;
      }
      n = longformType.hashCode();
      if (mediaType == null) {
        break label275;
      }
      i1 = mediaType.hashCode();
      if (publisherId == null) {
        break label281;
      }
      i2 = publisherId.hashCode();
      if (snapIndexCount == null) {
        break label287;
      }
      i3 = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label293;
      }
      i4 = snapIndexPos.hashCode();
      label150:
      if (source == null) {
        break label299;
      }
    }
    label253:
    label258:
    label263:
    label269:
    label275:
    label281:
    label287:
    label293:
    label299:
    for (int i5 = source.hashCode();; i5 = 0)
    {
      if (timeViewed != null) {
        i6 = timeViewed.hashCode();
      }
      return (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i7 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i6;
      i = 0;
      break;
      j = 0;
      break label39;
      k = 0;
      break label54;
      m = 0;
      break label70;
      n = 0;
      break label86;
      i1 = 0;
      break label102;
      i2 = 0;
      break label118;
      i3 = 0;
      break label134;
      i4 = 0;
      break label150;
    }
  }
}

/* Location:
 * Qualified Name:     gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */