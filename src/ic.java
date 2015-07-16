import java.util.HashMap;
import java.util.Map;

public final class ic
  extends ml
{
  public String encFilterGeofilterId;
  private final String eventName = "GEOFILTER_STORY_SNAP_VIEW";
  public hu exitEvent;
  private String filterGeofilterId;
  public Boolean fullView;
  public String geoFence;
  public ih mediaType;
  private Long postCount;
  public String posterId;
  public Double snapTimeSec;
  public mj storyType;
  private Long viewLocation;
  public Double viewTimeSec;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "GEOFILTER_STORY_SNAP_VIEW");
    if (encFilterGeofilterId != null) {
      localHashMap.put("enc_filter_geofilter_id", encFilterGeofilterId);
    }
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (filterGeofilterId != null) {
      localHashMap.put("filter_geofilter_id", filterGeofilterId);
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
    if (postCount != null) {
      localHashMap.put("post_count", postCount);
    }
    if (posterId != null) {
      localHashMap.put("poster_id", posterId);
    }
    if (snapTimeSec != null) {
      localHashMap.put("snap_time_sec", snapTimeSec);
    }
    if (storyType != null) {
      localHashMap.put("story_type", storyType);
    }
    if (viewLocation != null) {
      localHashMap.put("view_location", viewLocation);
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
      paramObject = (ic)paramObject;
      if (encFilterGeofilterId != null)
      {
        if (encFilterGeofilterId.equals(encFilterGeofilterId)) {}
      }
      else {
        while (encFilterGeofilterId != null) {
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
      if (filterGeofilterId != null)
      {
        if (filterGeofilterId.equals(filterGeofilterId)) {}
      }
      else {
        while (filterGeofilterId != null) {
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
      if (postCount != null)
      {
        if (postCount.equals(postCount)) {}
      }
      else {
        while (postCount != null) {
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
      if (snapTimeSec != null)
      {
        if (snapTimeSec.equals(snapTimeSec)) {}
      }
      else {
        while (snapTimeSec != null) {
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
      if (viewLocation != null)
      {
        if (viewLocation.equals(viewLocation)) {}
      }
      else {
        while (viewLocation != null) {
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
    int i7 = 0;
    int i8 = super.hashCode();
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
    if (encFilterGeofilterId != null)
    {
      i = encFilterGeofilterId.hashCode();
      if (exitEvent == null) {
        break label275;
      }
      j = exitEvent.hashCode();
      if (filterGeofilterId == null) {
        break label280;
      }
      k = filterGeofilterId.hashCode();
      if (fullView == null) {
        break label285;
      }
      m = fullView.hashCode();
      if (geoFence == null) {
        break label291;
      }
      n = geoFence.hashCode();
      if (mediaType == null) {
        break label297;
      }
      i1 = mediaType.hashCode();
      if (postCount == null) {
        break label303;
      }
      i2 = postCount.hashCode();
      if (posterId == null) {
        break label309;
      }
      i3 = posterId.hashCode();
      if (snapTimeSec == null) {
        break label315;
      }
      i4 = snapTimeSec.hashCode();
      if (storyType == null) {
        break label321;
      }
      i5 = storyType.hashCode();
      label166:
      if (viewLocation == null) {
        break label327;
      }
    }
    label275:
    label280:
    label285:
    label291:
    label297:
    label303:
    label309:
    label315:
    label321:
    label327:
    for (int i6 = viewLocation.hashCode();; i6 = 0)
    {
      if (viewTimeSec != null) {
        i7 = viewTimeSec.hashCode();
      }
      return (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i8 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i7;
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
    }
  }
}

/* Location:
 * Qualified Name:     ic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */