import java.util.HashMap;
import java.util.Map;

public final class ke
  extends ml
{
  private final String eventName = "PROFILE_PAGE_EXIT";
  public kf exitEvent;
  public Boolean hasProfilePic;
  public Long newAddedMeCount;
  public String nextPage;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_PAGE_EXIT");
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (hasProfilePic != null) {
      localHashMap.put("has_profile_pic", hasProfilePic);
    }
    if (newAddedMeCount != null) {
      localHashMap.put("new_added_me_count", newAddedMeCount);
    }
    if (nextPage != null) {
      localHashMap.put("next_page", nextPage);
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
      paramObject = (ke)paramObject;
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
          return false;
        }
      }
      if (hasProfilePic != null)
      {
        if (hasProfilePic.equals(hasProfilePic)) {}
      }
      else {
        while (hasProfilePic != null) {
          return false;
        }
      }
      if (newAddedMeCount != null)
      {
        if (newAddedMeCount.equals(newAddedMeCount)) {}
      }
      else {
        while (newAddedMeCount != null) {
          return false;
        }
      }
      if (nextPage == null) {
        break;
      }
    } while (nextPage.equals(nextPage));
    for (;;)
    {
      return false;
      if (nextPage == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int m = 0;
    int n = super.hashCode();
    int i;
    int j;
    if (exitEvent != null)
    {
      i = exitEvent.hashCode();
      if (hasProfilePic == null) {
        break label99;
      }
      j = hasProfilePic.hashCode();
      label39:
      if (newAddedMeCount == null) {
        break label104;
      }
    }
    label99:
    label104:
    for (int k = newAddedMeCount.hashCode();; k = 0)
    {
      if (nextPage != null) {
        m = nextPage.hashCode();
      }
      return (k + (j + (i + n * 31) * 31) * 31) * 31 + m;
      i = 0;
      break;
      j = 0;
      break label39;
    }
  }
}

/* Location:
 * Qualified Name:     ke
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */