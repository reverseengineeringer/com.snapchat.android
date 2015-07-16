import java.util.HashMap;
import java.util.Map;

public final class me
  extends ml
{
  private final String eventName = "STORY_SNAP_SCREENSHOT";
  public String geoFence;
  public String posterId;
  private Long snapIndexCount;
  private Long snapIndexPos;
  public Double snapTime;
  private String sponsor;
  public String storySnapId;
  public mj storyType;
  private Double timeViewed;
  private Long viewLocation;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "STORY_SNAP_SCREENSHOT");
    if (geoFence != null) {
      localHashMap.put("geo_fence", geoFence);
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
    if (sponsor != null) {
      localHashMap.put("sponsor", sponsor);
    }
    if (storySnapId != null) {
      localHashMap.put("story_snap_id", storySnapId);
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
      paramObject = (me)paramObject;
      if (geoFence != null)
      {
        if (geoFence.equals(geoFence)) {}
      }
      else {
        while (geoFence != null) {
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
    int i5 = 0;
    int i6 = super.hashCode();
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
    if (geoFence != null)
    {
      i = geoFence.hashCode();
      if (posterId == null) {
        break label231;
      }
      j = posterId.hashCode();
      if (snapIndexCount == null) {
        break label236;
      }
      k = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label241;
      }
      m = snapIndexPos.hashCode();
      if (snapTime == null) {
        break label247;
      }
      n = snapTime.hashCode();
      if (sponsor == null) {
        break label253;
      }
      i1 = sponsor.hashCode();
      if (storySnapId == null) {
        break label259;
      }
      i2 = storySnapId.hashCode();
      if (storyType == null) {
        break label265;
      }
      i3 = storyType.hashCode();
      label134:
      if (timeViewed == null) {
        break label271;
      }
    }
    label231:
    label236:
    label241:
    label247:
    label253:
    label259:
    label265:
    label271:
    for (int i4 = timeViewed.hashCode();; i4 = 0)
    {
      if (viewLocation != null) {
        i5 = viewLocation.hashCode();
      }
      return (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i6 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i5;
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
    }
  }
}

/* Location:
 * Qualified Name:     me
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */