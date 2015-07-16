import java.util.HashMap;
import java.util.Map;

public final class gq
  extends ml
{
  public Long camera;
  public Long caption;
  public Boolean drawing;
  private final String eventName = "DIRECT_SNAP_SEND";
  private String filter;
  private String filterGeofence;
  public hv filterInfo;
  private String filterSponsor;
  private hw filterType;
  public hx filterVisual;
  public Boolean flash;
  public ih mediaType;
  public Long recipientCount;
  public Boolean reply;
  public Double snapTimeSec;
  public lu source;
  public Double viewTimeSec;
  public Boolean withGallery;
  public Boolean withMyStory;
  public Boolean withOurStory;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DIRECT_SNAP_SEND");
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
    if (recipientCount != null) {
      localHashMap.put("recipient_count", recipientCount);
    }
    if (reply != null) {
      localHashMap.put("reply", reply);
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
    if (withGallery != null) {
      localHashMap.put("with_gallery", withGallery);
    }
    if (withMyStory != null) {
      localHashMap.put("with_my_story", withMyStory);
    }
    if (withOurStory != null) {
      localHashMap.put("with_our_story", withOurStory);
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
      paramObject = (gq)paramObject;
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
      if (recipientCount != null)
      {
        if (recipientCount.equals(recipientCount)) {}
      }
      else {
        while (recipientCount != null) {
          return false;
        }
      }
      if (reply != null)
      {
        if (reply.equals(reply)) {}
      }
      else {
        while (reply != null) {
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
      if (viewTimeSec != null)
      {
        if (viewTimeSec.equals(viewTimeSec)) {}
      }
      else {
        while (viewTimeSec != null) {
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
      if (withMyStory != null)
      {
        if (withMyStory.equals(withMyStory)) {}
      }
      else {
        while (withMyStory != null) {
          return false;
        }
      }
      if (withOurStory == null) {
        break;
      }
    } while (withOurStory.equals(withOurStory));
    for (;;)
    {
      return false;
      if (withOurStory == null) {
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
    if (camera != null)
    {
      i = camera.hashCode();
      if (caption == null) {
        break label429;
      }
      j = caption.hashCode();
      if (drawing == null) {
        break label434;
      }
      k = drawing.hashCode();
      if (filter == null) {
        break label439;
      }
      m = filter.hashCode();
      if (filterGeofence == null) {
        break label445;
      }
      n = filterGeofence.hashCode();
      if (filterInfo == null) {
        break label451;
      }
      i1 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label457;
      }
      i2 = filterSponsor.hashCode();
      if (filterType == null) {
        break label463;
      }
      i3 = filterType.hashCode();
      if (filterVisual == null) {
        break label469;
      }
      i4 = filterVisual.hashCode();
      if (flash == null) {
        break label475;
      }
      i5 = flash.hashCode();
      if (mediaType == null) {
        break label481;
      }
      i6 = mediaType.hashCode();
      if (recipientCount == null) {
        break label487;
      }
      i7 = recipientCount.hashCode();
      if (reply == null) {
        break label493;
      }
      i8 = reply.hashCode();
      if (snapTimeSec == null) {
        break label499;
      }
      i9 = snapTimeSec.hashCode();
      if (source == null) {
        break label505;
      }
      i10 = source.hashCode();
      if (viewTimeSec == null) {
        break label511;
      }
      i11 = viewTimeSec.hashCode();
      if (withGallery == null) {
        break label517;
      }
      i12 = withGallery.hashCode();
      label278:
      if (withMyStory == null) {
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
    for (int i13 = withMyStory.hashCode();; i13 = 0)
    {
      if (withOurStory != null) {
        i14 = withOurStory.hashCode();
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
 * Qualified Name:     gq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */