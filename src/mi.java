import java.util.HashMap;
import java.util.Map;

public final class mi
  extends ml
{
  private final String eventName = "STORY_STORY_VIEW";
  public hu exitEvent;
  public Boolean fullView;
  public String geoFence;
  public Long numSnapsViewed;
  public String posterId;
  private Long snapIndexCount;
  private String sponsor;
  public mj storyType;
  public Double timeViewed;
  public Long viewLocation;
  public Long viewLocationPos;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "STORY_STORY_VIEW");
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (fullView != null) {
      localHashMap.put("full_view", fullView);
    }
    if (geoFence != null) {
      localHashMap.put("geo_fence", geoFence);
    }
    if (numSnapsViewed != null) {
      localHashMap.put("num_snaps_viewed", numSnapsViewed);
    }
    if (posterId != null) {
      localHashMap.put("poster_id", posterId);
    }
    if (snapIndexCount != null) {
      localHashMap.put("snap_index_count", snapIndexCount);
    }
    if (sponsor != null) {
      localHashMap.put("sponsor", sponsor);
    }
    if (storyType != null) {
      localHashMap.put("story_type", storyType);
    }
    if (timeViewed != null) {
      localHashMap.put("time_viewed", timeViewed);
    }
    if (viewLocation != null) {
      localHashMap.put("view_location", viewLocation);
    }
    if (viewLocationPos != null) {
      localHashMap.put("view_location_pos", viewLocationPos);
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
      paramObject = (mi)paramObject;
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
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
      if (numSnapsViewed != null)
      {
        if (numSnapsViewed.equals(numSnapsViewed)) {}
      }
      else {
        while (numSnapsViewed != null) {
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
      if (sponsor != null)
      {
        if (sponsor.equals(sponsor)) {}
      }
      else {
        while (sponsor != null) {
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
      if (timeViewed != null)
      {
        if (timeViewed.equals(timeViewed)) {}
      }
      else {
        while (timeViewed != null) {
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
      if (viewLocationPos == null) {
        break;
      }
    } while (viewLocationPos.equals(viewLocationPos));
    for (;;)
    {
      return false;
      if (viewLocationPos == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int i6 = 0;
    int i7 = super.hashCode();
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
    if (exitEvent != null)
    {
      i = exitEvent.hashCode();
      if (fullView == null) {
        break label253;
      }
      j = fullView.hashCode();
      if (geoFence == null) {
        break label258;
      }
      k = geoFence.hashCode();
      if (numSnapsViewed == null) {
        break label263;
      }
      m = numSnapsViewed.hashCode();
      if (posterId == null) {
        break label269;
      }
      n = posterId.hashCode();
      if (snapIndexCount == null) {
        break label275;
      }
      i1 = snapIndexCount.hashCode();
      if (sponsor == null) {
        break label281;
      }
      i2 = sponsor.hashCode();
      if (storyType == null) {
        break label287;
      }
      i3 = storyType.hashCode();
      if (timeViewed == null) {
        break label293;
      }
      i4 = timeViewed.hashCode();
      label150:
      if (viewLocation == null) {
        break label299;
      }
    }
    label253:
    label258:
    label263:
    label269:
    label275:
    label281:
    label287:
    label293:
    label299:
    for (int i5 = viewLocation.hashCode();; i5 = 0)
    {
      if (viewLocationPos != null) {
        i6 = viewLocationPos.hashCode();
      }
      return (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i7 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i6;
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
    }
  }
}

/* Location:
 * Qualified Name:     mi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */