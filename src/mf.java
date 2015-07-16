import java.util.HashMap;
import java.util.Map;

public final class mf
  extends ml
{
  public Double ackTimeSec;
  private Long camera;
  private Long caption;
  private Boolean drawing;
  private final String eventName = "STORY_SNAP_VIEW";
  public hu exitEvent;
  private String filter;
  private String filterGeofence;
  private hv filterInfo;
  private String filterSponsor;
  private hw filterType;
  private hx filterVisual;
  private Boolean flash;
  public Boolean fullView;
  public String geoFence;
  public ih mediaType;
  public String posterId;
  private Long snapIndexCount;
  private Long snapIndexPos;
  public Double snapTime;
  private lu source;
  private String sponsor;
  public String storySnapId;
  public mj storyType;
  public Boolean swipeUp;
  public Double timeViewed;
  public Long viewLocation;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "STORY_SNAP_VIEW");
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
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
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
    if (geoFence != null) {
      localHashMap.put("geo_fence", geoFence);
    }
    if (mediaType != null) {
      localHashMap.put("media_type", mediaType);
    }
    if (posterId != null) {
      localHashMap.put("poster_id", posterId);
    }
    if (snapIndexCount != null) {
      localHashMap.put("snap_index_count", snapIndexCount);
    }
    if (snapIndexPos != null) {
      localHashMap.put("snap_index_pos", snapIndexPos);
    }
    if (snapTime != null) {
      localHashMap.put("snap_time", snapTime);
    }
    if (source != null) {
      localHashMap.put("source", source);
    }
    if (sponsor != null) {
      localHashMap.put("sponsor", sponsor);
    }
    if (storySnapId != null) {
      localHashMap.put("story_snap_id", storySnapId);
    }
    if (storyType != null) {
      localHashMap.put("story_type", storyType);
    }
    if (swipeUp != null) {
      localHashMap.put("swipe_up", swipeUp);
    }
    if (timeViewed != null) {
      localHashMap.put("time_viewed", timeViewed);
    }
    if (viewLocation != null) {
      localHashMap.put("view_location", viewLocation);
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
      paramObject = (mf)paramObject;
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
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
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
      if (sponsor != null)
      {
        if (sponsor.equals(sponsor)) {}
      }
      else {
        while (sponsor != null) {
          return false;
        }
      }
      if (storySnapId != null)
      {
        if (storySnapId.equals(storySnapId)) {}
      }
      else {
        while (storySnapId != null) {
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
      if (swipeUp != null)
      {
        if (swipeUp.equals(swipeUp)) {}
      }
      else {
        while (swipeUp != null) {
          return false;
        }
      }
      if (timeViewed != null)
      {
        if (timeViewed.equals(timeViewed)) {}
      }
      else {
        while (timeViewed != null) {
          return false;
        }
      }
      if (viewLocation == null) {
        break;
      }
    } while (viewLocation.equals(viewLocation));
    for (;;)
    {
      return false;
      if (viewLocation == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int i21 = 0;
    int i22 = super.hashCode();
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
    label310:
    int i15;
    label326:
    int i16;
    label342:
    int i17;
    label358:
    int i18;
    label374:
    int i19;
    if (ackTimeSec != null)
    {
      i = ackTimeSec.hashCode();
      if (camera == null) {
        break label583;
      }
      j = camera.hashCode();
      if (caption == null) {
        break label588;
      }
      k = caption.hashCode();
      if (drawing == null) {
        break label593;
      }
      m = drawing.hashCode();
      if (exitEvent == null) {
        break label599;
      }
      n = exitEvent.hashCode();
      if (filter == null) {
        break label605;
      }
      i1 = filter.hashCode();
      if (filterGeofence == null) {
        break label611;
      }
      i2 = filterGeofence.hashCode();
      if (filterInfo == null) {
        break label617;
      }
      i3 = filterInfo.hashCode();
      if (filterSponsor == null) {
        break label623;
      }
      i4 = filterSponsor.hashCode();
      if (filterType == null) {
        break label629;
      }
      i5 = filterType.hashCode();
      if (filterVisual == null) {
        break label635;
      }
      i6 = filterVisual.hashCode();
      if (flash == null) {
        break label641;
      }
      i7 = flash.hashCode();
      if (fullView == null) {
        break label647;
      }
      i8 = fullView.hashCode();
      if (geoFence == null) {
        break label653;
      }
      i9 = geoFence.hashCode();
      if (mediaType == null) {
        break label659;
      }
      i10 = mediaType.hashCode();
      if (posterId == null) {
        break label665;
      }
      i11 = posterId.hashCode();
      if (snapIndexCount == null) {
        break label671;
      }
      i12 = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label677;
      }
      i13 = snapIndexPos.hashCode();
      if (snapTime == null) {
        break label683;
      }
      i14 = snapTime.hashCode();
      if (source == null) {
        break label689;
      }
      i15 = source.hashCode();
      if (sponsor == null) {
        break label695;
      }
      i16 = sponsor.hashCode();
      if (storySnapId == null) {
        break label701;
      }
      i17 = storySnapId.hashCode();
      if (storyType == null) {
        break label707;
      }
      i18 = storyType.hashCode();
      if (swipeUp == null) {
        break label713;
      }
      i19 = swipeUp.hashCode();
      label390:
      if (timeViewed == null) {
        break label719;
      }
    }
    label583:
    label588:
    label593:
    label599:
    label605:
    label611:
    label617:
    label623:
    label629:
    label635:
    label641:
    label647:
    label653:
    label659:
    label665:
    label671:
    label677:
    label683:
    label689:
    label695:
    label701:
    label707:
    label713:
    label719:
    for (int i20 = timeViewed.hashCode();; i20 = 0)
    {
      if (viewLocation != null) {
        i21 = viewLocation.hashCode();
      }
      return (i20 + (i19 + (i18 + (i17 + (i16 + (i15 + (i14 + (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i22 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i21;
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
      i15 = 0;
      break label326;
      i16 = 0;
      break label342;
      i17 = 0;
      break label358;
      i18 = 0;
      break label374;
      i19 = 0;
      break label390;
    }
  }
}

/* Location:
 * Qualified Name:     mf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */