import java.util.HashMap;
import java.util.Map;

public final class gi
  extends lt
{
  public Double ackTimeSec;
  private Long camera;
  private Long caption;
  private Boolean drawing;
  private final String eventName = "DIRECT_SNAP_VIEW";
  private String filter;
  private String filterGeofence;
  private hm filterInfo;
  private String filterSponsor;
  private hn filterType;
  private ho filterVisual;
  private Boolean flash;
  public Boolean fullView;
  public Boolean initialView;
  public hy mediaType;
  public String snapId;
  public Double snapTimeSec;
  private lc source;
  public Double viewTimeSec;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DIRECT_SNAP_VIEW");
    if (ackTimeSec != null) {
      localHashMap.put("ack_time_sec", ackTimeSec);
    }
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
    if (fullView != null) {
      localHashMap.put("full_view", fullView);
    }
    if (initialView != null) {
      localHashMap.put("initial_view", initialView);
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
    if (viewTimeSec != null) {
      localHashMap.put("view_time_sec", viewTimeSec);
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
      paramObject = (gi)paramObject;
      if (ackTimeSec != null)
      {
        if (ackTimeSec.equals(ackTimeSec)) {}
      }
      else {
        while (ackTimeSec != null) {
          return false;
        }
      }
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
      if (fullView != null)
      {
        if (fullView.equals(fullView)) {}
      }
      else {
        while (fullView != null) {
          return false;
        }
      }
      if (initialView != null)
      {
        if (initialView.equals(initialView)) {}
      }
      else {
        while (initialView != null) {
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
      if (source != null)
      {
        if (source.equals(source)) {}
      }
      else {
        while (source != null) {
          return false;
        }
      }
      if (viewTimeSec == null) {
        break;
      }
    } while (viewTimeSec.equals(viewTimeSec));
    for (;;)
    {
      return false;
      if (viewTimeSec == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int i13 = 0;
    int i14 = super.hashCode();
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
    if (ackTimeSec != null)
    {
      i = ackTimeSec.hashCode();
      if (camera == null) {
        break label407;
      }
      j = camera.hashCode();
      if (caption == null) {
        break label412;
      }
      k = caption.hashCode();
      if (drawing == null) {
        break label417;
      }
      m = drawing.hashCode();
      if (filter == null) {
        break label423;
      }
      n = filter.hashCode();
      if (filterGeofence == null) {
        break label429;
      }
      i1 = filterGeofence.hashCode();
      if (filterInfo == null) {
        break label435;
      }
      i2 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label441;
      }
      i3 = filterSponsor.hashCode();
      if (filterType == null) {
        break label447;
      }
      i4 = filterType.hashCode();
      if (filterVisual == null) {
        break label453;
      }
      i5 = filterVisual.hashCode();
      if (flash == null) {
        break label459;
      }
      i6 = flash.hashCode();
      if (fullView == null) {
        break label465;
      }
      i7 = fullView.hashCode();
      if (initialView == null) {
        break label471;
      }
      i8 = initialView.hashCode();
      if (mediaType == null) {
        break label477;
      }
      i9 = mediaType.hashCode();
      if (snapId == null) {
        break label483;
      }
      i10 = snapId.hashCode();
      if (snapTimeSec == null) {
        break label489;
      }
      i11 = snapTimeSec.hashCode();
      label262:
      if (source == null) {
        break label495;
      }
    }
    label407:
    label412:
    label417:
    label423:
    label429:
    label435:
    label441:
    label447:
    label453:
    label459:
    label465:
    label471:
    label477:
    label483:
    label489:
    label495:
    for (int i12 = source.hashCode();; i12 = 0)
    {
      if (viewTimeSec != null) {
        i13 = viewTimeSec.hashCode();
      }
      return (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i14 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i13;
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
    }
  }
}

/* Location:
 * Qualified Name:     gi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */