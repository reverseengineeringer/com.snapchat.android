import java.util.HashMap;
import java.util.Map;

public final class hp
  extends ls
{
  public Long camera;
  public Long caption;
  public Boolean drawing;
  private final String eventName = "GEOFILTER_DIRECT_SNAP_SEND";
  public String filterGeofilterId;
  public Long filterIndexCount;
  public Long filterIndexPos;
  public hm filterInfo;
  private String filterSponsor;
  public ho filterVisual;
  public Boolean flash;
  public hy mediaType;
  public Long recipientCount;
  public Double snapTimeSec;
  public lc source;
  public Long storyPostCount;
  public Double viewTimeSec;
  public Boolean withGallery;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "GEOFILTER_DIRECT_SNAP_SEND");
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
    if (storyPostCount != null) {
      localHashMap.put("story_post_count", storyPostCount);
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
      paramObject = (hp)paramObject;
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
      if (storyPostCount != null)
      {
        if (storyPostCount.equals(storyPostCount)) {}
      }
      else {
        while (storyPostCount != null) {
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
    if (camera != null)
    {
      i = camera.hashCode();
      if (caption == null) {
        break label385;
      }
      j = caption.hashCode();
      if (drawing == null) {
        break label390;
      }
      k = drawing.hashCode();
      if (filterGeofilterId == null) {
        break label395;
      }
      m = filterGeofilterId.hashCode();
      if (filterIndexCount == null) {
        break label401;
      }
      n = filterIndexCount.hashCode();
      if (filterIndexPos == null) {
        break label407;
      }
      i1 = filterIndexPos.hashCode();
      if (filterInfo == null) {
        break label413;
      }
      i2 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label419;
      }
      i3 = filterSponsor.hashCode();
      if (filterVisual == null) {
        break label425;
      }
      i4 = filterVisual.hashCode();
      if (flash == null) {
        break label431;
      }
      i5 = flash.hashCode();
      if (mediaType == null) {
        break label437;
      }
      i6 = mediaType.hashCode();
      if (recipientCount == null) {
        break label443;
      }
      i7 = recipientCount.hashCode();
      if (snapTimeSec == null) {
        break label449;
      }
      i8 = snapTimeSec.hashCode();
      if (source == null) {
        break label455;
      }
      i9 = source.hashCode();
      if (storyPostCount == null) {
        break label461;
      }
      i10 = storyPostCount.hashCode();
      label246:
      if (viewTimeSec == null) {
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
    for (int i11 = viewTimeSec.hashCode();; i11 = 0)
    {
      if (withGallery != null) {
        i12 = withGallery.hashCode();
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
 * Qualified Name:     hp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */