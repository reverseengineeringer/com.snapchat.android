import java.util.HashMap;
import java.util.Map;

public final class hr
  extends ls
{
  public Long camera;
  public Long caption;
  public Boolean drawing;
  private final String eventName = "GEOFILTER_STORY_SNAP_POST";
  public String filterGeofilterId;
  public Long filterIndexCount;
  public Long filterIndexPos;
  public hm filterInfo;
  private String filterSponsor;
  public ho filterVisual;
  public Boolean flash;
  public String geoFence;
  public hy mediaType;
  public Long recipientCount;
  public Double snapTimeSec;
  public lc source;
  public lr storyType;
  public Double viewTimeSec;
  public Boolean withGallery;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "GEOFILTER_STORY_SNAP_POST");
    if (camera != null) {
      localHashMap.put("camera", camera);
    }
    if (caption != null) {
      localHashMap.put("caption", caption);
    }
    if (drawing != null) {
      localHashMap.put("drawing", drawing);
    }
    if (filterGeofilterId != null) {
      localHashMap.put("filter_geofilter_id", filterGeofilterId);
    }
    if (filterIndexCount != null) {
      localHashMap.put("filter_index_count", filterIndexCount);
    }
    if (filterIndexPos != null) {
      localHashMap.put("filter_index_pos", filterIndexPos);
    }
    if (filterInfo != null) {
      localHashMap.put("filter_info", filterInfo);
    }
    if (filterSponsor != null) {
      localHashMap.put("filter_sponsor", filterSponsor);
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
    if (recipientCount != null) {
      localHashMap.put("recipient_count", recipientCount);
    }
    if (snapTimeSec != null) {
      localHashMap.put("snap_time_sec", snapTimeSec);
    }
    if (source != null) {
      localHashMap.put("source", source);
    }
    if (storyType != null) {
      localHashMap.put("story_type", storyType);
    }
    if (viewTimeSec != null) {
      localHashMap.put("view_time_sec", viewTimeSec);
    }
    if (withGallery != null) {
      localHashMap.put("with_gallery", withGallery);
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
      paramObject = (hr)paramObject;
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
      if (filterGeofilterId != null)
      {
        if (filterGeofilterId.equals(filterGeofilterId)) {}
      }
      else {
        while (filterGeofilterId != null) {
          return false;
        }
      }
      if (filterIndexCount != null)
      {
        if (filterIndexCount.equals(filterIndexCount)) {}
      }
      else {
        while (filterIndexCount != null) {
          return false;
        }
      }
      if (filterIndexPos != null)
      {
        if (filterIndexPos.equals(filterIndexPos)) {}
      }
      else {
        while (filterIndexPos != null) {
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
      if (recipientCount != null)
      {
        if (recipientCount.equals(recipientCount)) {}
      }
      else {
        while (recipientCount != null) {
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
      if (storyType != null)
      {
        if (storyType.equals(storyType)) {}
      }
      else {
        while (storyType != null) {
          return false;
        }
      }
      if (viewTimeSec != null)
      {
        if (viewTimeSec.equals(viewTimeSec)) {}
      }
      else {
        while (viewTimeSec != null) {
          return false;
        }
      }
      if (withGallery == null) {
        break;
      }
    } while (withGallery.equals(withGallery));
    for (;;)
    {
      return false;
      if (withGallery == null) {
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
    if (camera != null)
    {
      i = camera.hashCode();
      if (caption == null) {
        break label407;
      }
      j = caption.hashCode();
      if (drawing == null) {
        break label412;
      }
      k = drawing.hashCode();
      if (filterGeofilterId == null) {
        break label417;
      }
      m = filterGeofilterId.hashCode();
      if (filterIndexCount == null) {
        break label423;
      }
      n = filterIndexCount.hashCode();
      if (filterIndexPos == null) {
        break label429;
      }
      i1 = filterIndexPos.hashCode();
      if (filterInfo == null) {
        break label435;
      }
      i2 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label441;
      }
      i3 = filterSponsor.hashCode();
      if (filterVisual == null) {
        break label447;
      }
      i4 = filterVisual.hashCode();
      if (flash == null) {
        break label453;
      }
      i5 = flash.hashCode();
      if (geoFence == null) {
        break label459;
      }
      i6 = geoFence.hashCode();
      if (mediaType == null) {
        break label465;
      }
      i7 = mediaType.hashCode();
      if (recipientCount == null) {
        break label471;
      }
      i8 = recipientCount.hashCode();
      if (snapTimeSec == null) {
        break label477;
      }
      i9 = snapTimeSec.hashCode();
      if (source == null) {
        break label483;
      }
      i10 = source.hashCode();
      if (storyType == null) {
        break label489;
      }
      i11 = storyType.hashCode();
      label262:
      if (viewTimeSec == null) {
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
    for (int i12 = viewTimeSec.hashCode();; i12 = 0)
    {
      if (withGallery != null) {
        i13 = withGallery.hashCode();
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
 * Qualified Name:     hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */