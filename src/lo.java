import java.util.HashMap;
import java.util.Map;

public final class lo
  extends lt
{
  private String additionalInfo;
  private final String eventName = "STORY_STORY_HIDE";
  public String geoFence;
  public String posterId;
  public String sponsor;
  public lr storyType;
  public Long viewLocation;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "STORY_STORY_HIDE");
    if (additionalInfo != null) {
      localHashMap.put("additional_info", additionalInfo);
    }
    if (geoFence != null) {
      localHashMap.put("geo_fence", geoFence);
    }
    if (posterId != null) {
      localHashMap.put("poster_id", posterId);
    }
    if (sponsor != null) {
      localHashMap.put("sponsor", sponsor);
    }
    if (storyType != null) {
      localHashMap.put("story_type", storyType);
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
      paramObject = (lo)paramObject;
      if (additionalInfo != null)
      {
        if (additionalInfo.equals(additionalInfo)) {}
      }
      else {
        while (additionalInfo != null) {
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
      if (posterId != null)
      {
        if (posterId.equals(posterId)) {}
      }
      else {
        while (posterId != null) {
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
    int i1 = 0;
    int i2 = super.hashCode();
    int i;
    int j;
    label39:
    int k;
    label54:
    int m;
    if (additionalInfo != null)
    {
      i = additionalInfo.hashCode();
      if (geoFence == null) {
        break label143;
      }
      j = geoFence.hashCode();
      if (posterId == null) {
        break label148;
      }
      k = posterId.hashCode();
      if (sponsor == null) {
        break label153;
      }
      m = sponsor.hashCode();
      label70:
      if (storyType == null) {
        break label159;
      }
    }
    label143:
    label148:
    label153:
    label159:
    for (int n = storyType.hashCode();; n = 0)
    {
      if (viewLocation != null) {
        i1 = viewLocation.hashCode();
      }
      return (n + (m + (k + (j + (i + i2 * 31) * 31) * 31) * 31) * 31) * 31 + i1;
      i = 0;
      break;
      j = 0;
      break label39;
      k = 0;
      break label54;
      m = 0;
      break label70;
    }
  }
}

/* Location:
 * Qualified Name:     lo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */