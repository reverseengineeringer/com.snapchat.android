import java.util.HashMap;
import java.util.Map;

public final class go
  extends lt
{
  public Long adIndexCount;
  public Long adIndexPos;
  public String adsnapId;
  public String editionId;
  private final String eventName = "DISCOVER_AD_SCREENSHOT";
  public hy mediaType;
  public String publisherId;
  public Long snapIndexCount;
  public Long snapIndexPos;
  private ld source;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_AD_SCREENSHOT");
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
      paramObject = (go)paramObject;
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
      if (source == null) {
        break;
      }
    } while (source.equals(source));
    for (;;)
    {
      return false;
      if (source == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int i4 = 0;
    int i5 = super.hashCode();
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
    if (adIndexCount != null)
    {
      i = adIndexCount.hashCode();
      if (adIndexPos == null) {
        break label209;
      }
      j = adIndexPos.hashCode();
      if (adsnapId == null) {
        break label214;
      }
      k = adsnapId.hashCode();
      if (editionId == null) {
        break label219;
      }
      m = editionId.hashCode();
      if (mediaType == null) {
        break label225;
      }
      n = mediaType.hashCode();
      if (publisherId == null) {
        break label231;
      }
      i1 = publisherId.hashCode();
      if (snapIndexCount == null) {
        break label237;
      }
      i2 = snapIndexCount.hashCode();
      label118:
      if (snapIndexPos == null) {
        break label243;
      }
    }
    label209:
    label214:
    label219:
    label225:
    label231:
    label237:
    label243:
    for (int i3 = snapIndexPos.hashCode();; i3 = 0)
    {
      if (source != null) {
        i4 = source.hashCode();
      }
      return (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i5 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i4;
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
    }
  }
}

/* Location:
 * Qualified Name:     go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */