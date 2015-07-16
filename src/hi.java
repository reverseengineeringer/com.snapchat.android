import java.util.HashMap;
import java.util.Map;

public final class hi
  extends ml
{
  public Long caption;
  public Boolean drawing;
  public String dsnapId;
  public String editionId;
  private final String eventName = "DISCOVER_SNAP_LONGFORM_SHARE_SEND";
  private String filter;
  private String filterGeofence;
  public hv filterInfo;
  private String filterSponsor;
  private String filterType;
  public hx filterVisual;
  public ih longformType;
  public ih mediaType;
  public String publisherId;
  public Long recipientCount;
  public Long snapIndexCount;
  public Long snapIndexPos;
  public Double snapTimeSec;
  public lv source;
  public Double timeViewed;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_SNAP_LONGFORM_SHARE_SEND");
    if (caption != null) {
      localHashMap.put("caption", caption);
    }
    if (drawing != null) {
      localHashMap.put("drawing", drawing);
    }
    if (dsnapId != null) {
      localHashMap.put("dsnap_id", dsnapId);
    }
    if (editionId != null) {
      localHashMap.put("edition_id", editionId);
    }
    if (filter != null) {
      localHashMap.put("filter", filter);
    }
    if (filterGeofence != null) {
      localHashMap.put("filter_geofence", filterGeofence);
    }
    if (filterInfo != null) {
      localHashMap.put("filter_info", filterInfo);
    }
    if (filterSponsor != null) {
      localHashMap.put("filter_sponsor", filterSponsor);
    }
    if (filterType != null) {
      localHashMap.put("filter_type", filterType);
    }
    if (filterVisual != null) {
      localHashMap.put("filter_visual", filterVisual);
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
    if (recipientCount != null) {
      localHashMap.put("recipient_count", recipientCount);
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
      paramObject = (hi)paramObject;
      if (caption != null)
      {
        if (caption.equals(caption)) {}
      }
      else {
        while (caption != null) {
          return false;
        }
      }
      if (drawing != null)
      {
        if (drawing.equals(drawing)) {}
      }
      else {
        while (drawing != null) {
          return false;
        }
      }
      if (dsnapId != null)
      {
        if (dsnapId.equals(dsnapId)) {}
      }
      else {
        while (dsnapId != null) {
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
      if (filter != null)
      {
        if (filter.equals(filter)) {}
      }
      else {
        while (filter != null) {
          return false;
        }
      }
      if (filterGeofence != null)
      {
        if (filterGeofence.equals(filterGeofence)) {}
      }
      else {
        while (filterGeofence != null) {
          return false;
        }
      }
      if (filterInfo != null)
      {
        if (filterInfo.equals(filterInfo)) {}
      }
      else {
        while (filterInfo != null) {
          return false;
        }
      }
      if (filterSponsor != null)
      {
        if (filterSponsor.equals(filterSponsor)) {}
      }
      else {
        while (filterSponsor != null) {
          return false;
        }
      }
      if (filterType != null)
      {
        if (filterType.equals(filterType)) {}
      }
      else {
        while (filterType != null) {
          return false;
        }
      }
      if (filterVisual != null)
      {
        if (filterVisual.equals(filterVisual)) {}
      }
      else {
        while (filterVisual != null) {
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
      if (recipientCount != null)
      {
        if (recipientCount.equals(recipientCount)) {}
      }
      else {
        while (recipientCount != null) {
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
    int i14 = 0;
    int i15 = super.hashCode();
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
    label198:
    int i8;
    label214:
    int i9;
    label230:
    int i10;
    label246:
    int i11;
    label262:
    int i12;
    if (caption != null)
    {
      i = caption.hashCode();
      if (drawing == null) {
        break label429;
      }
      j = drawing.hashCode();
      if (dsnapId == null) {
        break label434;
      }
      k = dsnapId.hashCode();
      if (editionId == null) {
        break label439;
      }
      m = editionId.hashCode();
      if (filter == null) {
        break label445;
      }
      n = filter.hashCode();
      if (filterGeofence == null) {
        break label451;
      }
      i1 = filterGeofence.hashCode();
      if (filterInfo == null) {
        break label457;
      }
      i2 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label463;
      }
      i3 = filterSponsor.hashCode();
      if (filterType == null) {
        break label469;
      }
      i4 = filterType.hashCode();
      if (filterVisual == null) {
        break label475;
      }
      i5 = filterVisual.hashCode();
      if (longformType == null) {
        break label481;
      }
      i6 = longformType.hashCode();
      if (mediaType == null) {
        break label487;
      }
      i7 = mediaType.hashCode();
      if (publisherId == null) {
        break label493;
      }
      i8 = publisherId.hashCode();
      if (recipientCount == null) {
        break label499;
      }
      i9 = recipientCount.hashCode();
      if (snapIndexCount == null) {
        break label505;
      }
      i10 = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label511;
      }
      i11 = snapIndexPos.hashCode();
      if (snapTimeSec == null) {
        break label517;
      }
      i12 = snapTimeSec.hashCode();
      label278:
      if (source == null) {
        break label523;
      }
    }
    label429:
    label434:
    label439:
    label445:
    label451:
    label457:
    label463:
    label469:
    label475:
    label481:
    label487:
    label493:
    label499:
    label505:
    label511:
    label517:
    label523:
    for (int i13 = source.hashCode();; i13 = 0)
    {
      if (timeViewed != null) {
        i14 = timeViewed.hashCode();
      }
      return (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i15 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i14;
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
      i8 = 0;
      break label214;
      i9 = 0;
      break label230;
      i10 = 0;
      break label246;
      i11 = 0;
      break label262;
      i12 = 0;
      break label278;
    }
  }
}

/* Location:
 * Qualified Name:     hi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */