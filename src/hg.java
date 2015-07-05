import java.util.HashMap;
import java.util.Map;

public final class hg
  extends lt
{
  public Long caption;
  public Boolean drawing;
  public String dsnapId;
  public Long editionAvailable;
  public String editionId;
  private final String eventName = "DISCOVER_SNAP_SHARE_VIEW";
  private String filter;
  private String filterGeofence;
  public hm filterInfo;
  private String filterSponsor;
  private String filterType;
  public ho filterVisual;
  public Boolean fullView;
  public hy mediaType;
  public String publisherId;
  public Long snapAvailable;
  public Double snapTimeSec;
  public Double timeViewed;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_SNAP_SHARE_VIEW");
    if (caption != null) {
      localHashMap.put("caption", caption);
    }
    if (drawing != null) {
      localHashMap.put("drawing", drawing);
    }
    if (dsnapId != null) {
      localHashMap.put("dsnap_id", dsnapId);
    }
    if (editionAvailable != null) {
      localHashMap.put("edition_available", editionAvailable);
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
    if (fullView != null) {
      localHashMap.put("full_view", fullView);
    }
    if (mediaType != null) {
      localHashMap.put("media_type", mediaType);
    }
    if (publisherId != null) {
      localHashMap.put("publisher_id", publisherId);
    }
    if (snapAvailable != null) {
      localHashMap.put("snap_available", snapAvailable);
    }
    if (snapTimeSec != null) {
      localHashMap.put("snap_time_sec", snapTimeSec);
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
      paramObject = (hg)paramObject;
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
      if (editionAvailable != null)
      {
        if (editionAvailable.equals(editionAvailable)) {}
      }
      else {
        while (editionAvailable != null) {
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
      if (fullView != null)
      {
        if (fullView.equals(fullView)) {}
      }
      else {
        while (fullView != null) {
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
      if (snapAvailable != null)
      {
        if (snapAvailable.equals(snapAvailable)) {}
      }
      else {
        while (snapAvailable != null) {
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
    int i12 = 0;
    int i13 = super.hashCode();
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
    if (caption != null)
    {
      i = caption.hashCode();
      if (drawing == null) {
        break label385;
      }
      j = drawing.hashCode();
      if (dsnapId == null) {
        break label390;
      }
      k = dsnapId.hashCode();
      if (editionAvailable == null) {
        break label395;
      }
      m = editionAvailable.hashCode();
      if (editionId == null) {
        break label401;
      }
      n = editionId.hashCode();
      if (filter == null) {
        break label407;
      }
      i1 = filter.hashCode();
      if (filterGeofence == null) {
        break label413;
      }
      i2 = filterGeofence.hashCode();
      if (filterInfo == null) {
        break label419;
      }
      i3 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label425;
      }
      i4 = filterSponsor.hashCode();
      if (filterType == null) {
        break label431;
      }
      i5 = filterType.hashCode();
      if (filterVisual == null) {
        break label437;
      }
      i6 = filterVisual.hashCode();
      if (fullView == null) {
        break label443;
      }
      i7 = fullView.hashCode();
      if (mediaType == null) {
        break label449;
      }
      i8 = mediaType.hashCode();
      if (publisherId == null) {
        break label455;
      }
      i9 = publisherId.hashCode();
      if (snapAvailable == null) {
        break label461;
      }
      i10 = snapAvailable.hashCode();
      label246:
      if (snapTimeSec == null) {
        break label467;
      }
    }
    label385:
    label390:
    label395:
    label401:
    label407:
    label413:
    label419:
    label425:
    label431:
    label437:
    label443:
    label449:
    label455:
    label461:
    label467:
    for (int i11 = snapTimeSec.hashCode();; i11 = 0)
    {
      if (timeViewed != null) {
        i12 = timeViewed.hashCode();
      }
      return (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i13 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i12;
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
    }
  }
}

/* Location:
 * Qualified Name:     hg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */