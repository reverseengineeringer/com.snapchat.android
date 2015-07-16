import java.util.HashMap;
import java.util.Map;

public final class go
  extends ml
{
  private Long camera;
  private Long caption;
  private Boolean drawing;
  private final String eventName = "DIRECT_SNAP_RECEIVE";
  private String filter;
  private String filterGeofence;
  private hv filterInfo;
  private String filterSponsor;
  private hw filterType;
  private hx filterVisual;
  private Boolean flash;
  public ih mediaType;
  public String snapId;
  public Double snapTimeSec;
  private lu source;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DIRECT_SNAP_RECEIVE");
    if (camera != null) {
      localHashMap.put("camera", camera);
    }
    if (caption != null) {
      localHashMap.put("caption", caption);
    }
    if (drawing != null) {
      localHashMap.put("drawing", drawing);
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
    if (flash != null) {
      localHashMap.put("flash", flash);
    }
    if (mediaType != null) {
      localHashMap.put("media_type", mediaType);
    }
    if (snapId != null) {
      localHashMap.put("snap_id", snapId);
    }
    if (snapTimeSec != null) {
      localHashMap.put("snap_time_sec", snapTimeSec);
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
      if (camera != null)
      {
        if (camera.equals(camera)) {}
      }
      else {
        while (camera != null) {
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
      if (flash != null)
      {
        if (flash.equals(flash)) {}
      }
      else {
        while (flash != null) {
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
      if (snapId != null)
      {
        if (snapId.equals(snapId)) {}
      }
      else {
        while (snapId != null) {
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
    if (camera != null)
    {
      i = camera.hashCode();
      if (caption == null) {
        break label319;
      }
      j = caption.hashCode();
      if (drawing == null) {
        break label324;
      }
      k = drawing.hashCode();
      if (filter == null) {
        break label329;
      }
      m = filter.hashCode();
      if (filterGeofence == null) {
        break label335;
      }
      n = filterGeofence.hashCode();
      if (filterInfo == null) {
        break label341;
      }
      i1 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label347;
      }
      i2 = filterSponsor.hashCode();
      if (filterType == null) {
        break label353;
      }
      i3 = filterType.hashCode();
      if (filterVisual == null) {
        break label359;
      }
      i4 = filterVisual.hashCode();
      if (flash == null) {
        break label365;
      }
      i5 = flash.hashCode();
      if (mediaType == null) {
        break label371;
      }
      i6 = mediaType.hashCode();
      if (snapId == null) {
        break label377;
      }
      i7 = snapId.hashCode();
      label198:
      if (snapTimeSec == null) {
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
    for (int i8 = snapTimeSec.hashCode();; i8 = 0)
    {
      if (source != null) {
        i9 = source.hashCode();
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
 * Qualified Name:     go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */