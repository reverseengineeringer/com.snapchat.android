import java.util.HashMap;
import java.util.Map;

public final class kk
  extends ml
{
  private final String eventName = "PROFILE_USERNAME_PAGE_EXIT";
  public kf exitEvent;
  public Long friendAddCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_USERNAME_PAGE_EXIT");
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (friendAddCount != null) {
      localHashMap.put("friend_add_count", friendAddCount);
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
      paramObject = (kk)paramObject;
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
          return false;
        }
      }
      if (friendAddCount == null) {
        break;
      }
    } while (friendAddCount.equals(friendAddCount));
    for (;;)
    {
      return false;
      if (friendAddCount == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    if (exitEvent != null) {}
    for (int i = exitEvent.hashCode();; i = 0)
    {
      if (friendAddCount != null) {
        j = friendAddCount.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
}

/* Location:
 * Qualified Name:     kk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */