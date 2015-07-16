import java.util.HashMap;
import java.util.Map;

public final class mc
  extends ml
{
  public Long camera;
  public Long caption;
  public Boolean drawing;
  private final String eventName = "STORY_SNAP_POST";
  private String filter;
  private String filterGeofence;
  public hv filterInfo;
  private String filterSponsor;
  private hw filterType;
  public hx filterVisual;
  public Boolean flash;
  public String geoFence;
  public ih mediaType;
  public String posterId;
  public Double snapTime;
  public lu source;
  public Long storyPostCount;
  public mj storyType;
  public Double view_time_sec;
  public Boolean withGallery;
  public Boolean withSnap;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "STORY_SNAP_POST");
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
    if (geoFence != null) {
      localHashMap.put("geo_fence", geoFence);
    }
    if (mediaType != null) {
      localHashMap.put("media_type", mediaType);
    }
    if (posterId != null) {
      localHashMap.put("poster_id", posterId);
    }
    if (snapTime != null) {
      localHashMap.put("snap_time", snapTime);
    }
    if (source != null) {
      localHashMap.put("source", source);
    }
    if (storyPostCount != null) {
      localHashMap.put("story_post_count", storyPostCount);
    }
    if (storyType != null) {
      localHashMap.put("story_type", storyType);
    }
    if (view_time_sec != null) {
      localHashMap.put("view_time_sec", view_time_sec);
    }
    if (withGallery != null) {
      localHashMap.put("with_gallery", withGallery);
    }
    if (withSnap != null) {
      localHashMap.put("with_snap", withSnap);
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
      paramObject = (mc)paramObject;
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
      if (geoFence != null)
      {
        if (geoFence.equals(geoFence)) {}
      }
      else {
        while (geoFence != null) {
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
      if (posterId != null)
      {
        if (posterId.equals(posterId)) {}
      }
      else {
        while (posterId != null) {
          return false;
        }
      }
      if (snapTime != null)
      {
        if (snapTime.equals(snapTime)) {}
      }
      else {
        while (snapTime != null) {
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
      if (storyPostCount != null)
      {
        if (storyPostCount.equals(storyPostCount)) {}
      }
      else {
        while (storyPostCount != null) {
          return false;
        }
      }
      if (storyType != null)
      {
        if (storyType.equals(storyType)) {}
      }
      else {
        while (storyType != null) {
          return false;
        }
      }
      if (view_time_sec != null)
      {
        if (view_time_sec.equals(view_time_sec)) {}
      }
      else {
        while (view_time_sec != null) {
          return false;
        }
      }
      if (withGallery != null)
      {
        if (withGallery.equals(withGallery)) {}
      }
      else {
        while (withGallery != null) {
          return false;
        }
      }
      if (withSnap == null) {
        break;
      }
    } while (withSnap.equals(withSnap));
    for (;;)
    {
      return false;
      if (withSnap == null) {
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
    if (camera != null)
    {
      i = camera.hashCode();
      if (caption == null) {
        break label451;
      }
      j = caption.hashCode();
      if (drawing == null) {
        break label456;
      }
      k = drawing.hashCode();
      if (filter == null) {
        break label461;
      }
      m = filter.hashCode();
      if (filterGeofence == null) {
        break label467;
      }
      n = filterGeofence.hashCode();
      if (filterInfo == null) {
        break label473;
      }
      i1 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label479;
      }
      i2 = filterSponsor.hashCode();
      if (filterType == null) {
        break label485;
      }
      i3 = filterType.hashCode();
      if (filterVisual == null) {
        break label491;
      }
      i4 = filterVisual.hashCode();
      if (flash == null) {
        break label497;
      }
      i5 = flash.hashCode();
      if (geoFence == null) {
        break label503;
      }
      i6 = geoFence.hashCode();
      if (mediaType == null) {
        break label509;
      }
      i7 = mediaType.hashCode();
      if (posterId == null) {
        break label515;
      }
      i8 = posterId.hashCode();
      if (snapTime == null) {
        break label521;
      }
      i9 = snapTime.hashCode();
      if (source == null) {
        break label527;
      }
      i10 = source.hashCode();
      if (storyPostCount == null) {
        break label533;
      }
      i11 = storyPostCount.hashCode();
      if (storyType == null) {
        break label539;
      }
      i12 = storyType.hashCode();
      if (view_time_sec == null) {
        break label545;
      }
      i13 = view_time_sec.hashCode();
      label294:
      if (withGallery == null) {
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
    for (int i14 = withGallery.hashCode();; i14 = 0)
    {
      if (withSnap != null) {
        i15 = withSnap.hashCode();
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
 * Qualified Name:     mc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */