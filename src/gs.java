import java.util.HashMap;
import java.util.Map;

public final class gs
  extends lt
{
  private Long adIndexCount;
  private Long adIndexPos;
  public String adsnapId;
  public Long caption;
  public Boolean drawing;
  public Long editionAvailable;
  public String editionId;
  private final String eventName = "DISCOVER_AD_SHARE_VIEW";
  private String filter;
  private String filterGeofence;
  public hm filterInfo;
  private String filterSponsor;
  private String filterType;
  public ho filterVisual;
  public Boolean fullView;
  public hy mediaType;
  public String publisherId;
  private Long snapIndexCount;
  private Long snapIndexPos;
  public Double snapTimeSec;
  public Double timeViewed;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_AD_SHARE_VIEW");
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
    if (snapIndexCount != null) {
      localHashMap.put("snap_index_count", snapIndexCount);
    }
    if (snapIndexPos != null) {
      localHashMap.put("snap_index_pos", snapIndexPos);
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
      paramObject = (gs)paramObject;
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
    int i15 = 0;
    int i16 = super.hashCode();
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
    if (adIndexCount != null)
    {
      i = adIndexCount.hashCode();
      if (adIndexPos == null) {
        break label451;
      }
      j = adIndexPos.hashCode();
      if (adsnapId == null) {
        break label456;
      }
      k = adsnapId.hashCode();
      if (caption == null) {
        break label461;
      }
      m = caption.hashCode();
      if (drawing == null) {
        break label467;
      }
      n = drawing.hashCode();
      if (editionAvailable == null) {
        break label473;
      }
      i1 = editionAvailable.hashCode();
      if (editionId == null) {
        break label479;
      }
      i2 = editionId.hashCode();
      if (filter == null) {
        break label485;
      }
      i3 = filter.hashCode();
      if (filterGeofence == null) {
        break label491;
      }
      i4 = filterGeofence.hashCode();
      if (filterInfo == null) {
        break label497;
      }
      i5 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label503;
      }
      i6 = filterSponsor.hashCode();
      if (filterType == null) {
        break label509;
      }
      i7 = filterType.hashCode();
      if (filterVisual == null) {
        break label515;
      }
      i8 = filterVisual.hashCode();
      if (fullView == null) {
        break label521;
      }
      i9 = fullView.hashCode();
      if (mediaType == null) {
        break label527;
      }
      i10 = mediaType.hashCode();
      if (publisherId == null) {
        break label533;
      }
      i11 = publisherId.hashCode();
      if (snapIndexCount == null) {
        break label539;
      }
      i12 = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label545;
      }
      i13 = snapIndexPos.hashCode();
      label294:
      if (snapTimeSec == null) {
        break label551;
      }
    }
    label451:
    label456:
    label461:
    label467:
    label473:
    label479:
    label485:
    label491:
    label497:
    label503:
    label509:
    label515:
    label521:
    label527:
    label533:
    label539:
    label545:
    label551:
    for (int i14 = snapTimeSec.hashCode();; i14 = 0)
    {
      if (timeViewed != null) {
        i15 = timeViewed.hashCode();
      }
      return (i14 + (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i16 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i15;
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
    }
  }
}

/* Location:
 * Qualified Name:     gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */