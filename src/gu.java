import java.util.HashMap;
import java.util.Map;

public final class gu
  extends lt
{
  public Long adIndexCount;
  public Long adIndexPos;
  public String adsnapId;
  public String editionId;
  private final String eventName = "DISCOVER_AD_VIEW";
  private hl exitEvent;
  public Boolean fullView;
  private Double mediaDisplayTimeSec;
  public hy mediaType;
  public String publisherId;
  public Long snapIndexCount;
  public Long snapIndexPos;
  private Double snapTimeSec;
  private ld source;
  public Double timeViewed;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_AD_VIEW");
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
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (fullView != null) {
      localHashMap.put("full_view", fullView);
    }
    if (mediaDisplayTimeSec != null) {
      localHashMap.put("media_display_time_sec", mediaDisplayTimeSec);
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
    if (snapTimeSec != null) {
      localHashMap.put("snap_time_sec", snapTimeSec);
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
      paramObject = (gu)paramObject;
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
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
          return false;
        }
      }
      if (fullView != null)
      {
        if (fullView.equals(fullView)) {}
      }
      else {
        while (fullView != null) {
          return false;
        }
      }
      if (mediaDisplayTimeSec != null)
      {
        if (mediaDisplayTimeSec.equals(mediaDisplayTimeSec)) {}
      }
      else {
        while (mediaDisplayTimeSec != null) {
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
      if (snapTimeSec != null)
      {
        if (snapTimeSec.equals(snapTimeSec)) {}
      }
      else {
        while (snapTimeSec != null) {
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
    int i9 = 0;
    int i10 = super.hashCode();
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
    label150:
    int i5;
    label166:
    int i6;
    label182:
    int i7;
    if (adIndexCount != null)
    {
      i = adIndexCount.hashCode();
      if (adIndexPos == null) {
        break label319;
      }
      j = adIndexPos.hashCode();
      if (adsnapId == null) {
        break label324;
      }
      k = adsnapId.hashCode();
      if (editionId == null) {
        break label329;
      }
      m = editionId.hashCode();
      if (exitEvent == null) {
        break label335;
      }
      n = exitEvent.hashCode();
      if (fullView == null) {
        break label341;
      }
      i1 = fullView.hashCode();
      if (mediaDisplayTimeSec == null) {
        break label347;
      }
      i2 = mediaDisplayTimeSec.hashCode();
      if (mediaType == null) {
        break label353;
      }
      i3 = mediaType.hashCode();
      if (publisherId == null) {
        break label359;
      }
      i4 = publisherId.hashCode();
      if (snapIndexCount == null) {
        break label365;
      }
      i5 = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label371;
      }
      i6 = snapIndexPos.hashCode();
      if (snapTimeSec == null) {
        break label377;
      }
      i7 = snapTimeSec.hashCode();
      label198:
      if (source == null) {
        break label383;
      }
    }
    label319:
    label324:
    label329:
    label335:
    label341:
    label347:
    label353:
    label359:
    label365:
    label371:
    label377:
    label383:
    for (int i8 = source.hashCode();; i8 = 0)
    {
      if (timeViewed != null) {
        i9 = timeViewed.hashCode();
      }
      return (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i10 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i9;
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
      i5 = 0;
      break label166;
      i6 = 0;
      break label182;
      i7 = 0;
      break label198;
    }
  }
}

/* Location:
 * Qualified Name:     gu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */