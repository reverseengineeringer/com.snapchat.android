import java.util.HashMap;
import java.util.Map;

public final class gw
  extends ml
{
  public Long adIndexCount;
  public Long adIndexPos;
  public String adsnapId;
  public Long caption;
  public Boolean drawing;
  public String editionId;
  private final String eventName = "DISCOVER_AD_LONGFORM_SHARE_SEND";
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
    localHashMap.put("event_name", "DISCOVER_AD_LONGFORM_SHARE_SEND");
    if (adIndexCount != null) {
      localHashMap.put("ad_index_count", adIndexCount);
    }
    if (adIndexPos != null) {
      localHashMap.put("ad_index_pos", adIndexPos);
    }
    if (adsnapId != null) {
      localHashMap.put("adsnap_id", adsnapId);
    }
    if (caption != null) {
      localHashMap.put("caption", caption);
    }
    if (drawing != null) {
      localHashMap.put("drawing", drawing);
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
      paramObject = (gw)paramObject;
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
    int i16 = 0;
    int i17 = super.hashCode();
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
    label278:
    int i13;
    label294:
    int i14;
    if (adIndexCount != null)
    {
      i = adIndexCount.hashCode();
      if (adIndexPos == null) {
        break label473;
      }
      j = adIndexPos.hashCode();
      if (adsnapId == null) {
        break label478;
      }
      k = adsnapId.hashCode();
      if (caption == null) {
        break label483;
      }
      m = caption.hashCode();
      if (drawing == null) {
        break label489;
      }
      n = drawing.hashCode();
      if (editionId == null) {
        break label495;
      }
      i1 = editionId.hashCode();
      if (filter == null) {
        break label501;
      }
      i2 = filter.hashCode();
      if (filterGeofence == null) {
        break label507;
      }
      i3 = filterGeofence.hashCode();
      if (filterInfo == null) {
        break label513;
      }
      i4 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label519;
      }
      i5 = filterSponsor.hashCode();
      if (filterType == null) {
        break label525;
      }
      i6 = filterType.hashCode();
      if (filterVisual == null) {
        break label531;
      }
      i7 = filterVisual.hashCode();
      if (longformType == null) {
        break label537;
      }
      i8 = longformType.hashCode();
      if (mediaType == null) {
        break label543;
      }
      i9 = mediaType.hashCode();
      if (publisherId == null) {
        break label549;
      }
      i10 = publisherId.hashCode();
      if (recipientCount == null) {
        break label555;
      }
      i11 = recipientCount.hashCode();
      if (snapIndexCount == null) {
        break label561;
      }
      i12 = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label567;
      }
      i13 = snapIndexPos.hashCode();
      if (snapTimeSec == null) {
        break label573;
      }
      i14 = snapTimeSec.hashCode();
      label310:
      if (source == null) {
        break label579;
      }
    }
    label473:
    label478:
    label483:
    label489:
    label495:
    label501:
    label507:
    label513:
    label519:
    label525:
    label531:
    label537:
    label543:
    label549:
    label555:
    label561:
    label567:
    label573:
    label579:
    for (int i15 = source.hashCode();; i15 = 0)
    {
      if (timeViewed != null) {
        i16 = timeViewed.hashCode();
      }
      return (i15 + (i14 + (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i17 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i16;
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
      i13 = 0;
      break label294;
      i14 = 0;
      break label310;
    }
  }
}

/* Location:
 * Qualified Name:     gw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */