import java.util.HashMap;
import java.util.Map;

public final class kd
  extends ml
{
  private final String eventName = "PROFILE_NEARBY_PAGE_EXIT";
  public kf exitEvent;
  public Long nearbyFriendAddCount;
  public Long nearbyFriendBlockCount;
  public Long nearbyFriendCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_NEARBY_PAGE_EXIT");
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (nearbyFriendAddCount != null) {
      localHashMap.put("nearby_friend_add_count", nearbyFriendAddCount);
    }
    if (nearbyFriendBlockCount != null) {
      localHashMap.put("nearby_friend_block_count", nearbyFriendBlockCount);
    }
    if (nearbyFriendCount != null) {
      localHashMap.put("nearby_friend_count", nearbyFriendCount);
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
      paramObject = (kd)paramObject;
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
          return false;
        }
      }
      if (nearbyFriendAddCount != null)
      {
        if (nearbyFriendAddCount.equals(nearbyFriendAddCount)) {}
      }
      else {
        while (nearbyFriendAddCount != null) {
          return false;
        }
      }
      if (nearbyFriendBlockCount != null)
      {
        if (nearbyFriendBlockCount.equals(nearbyFriendBlockCount)) {}
      }
      else {
        while (nearbyFriendBlockCount != null) {
          return false;
        }
      }
      if (nearbyFriendCount == null) {
        break;
      }
    } while (nearbyFriendCount.equals(nearbyFriendCount));
    for (;;)
    {
      return false;
      if (nearbyFriendCount == null) {
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
      if (nearbyFriendAddCount == null) {
        break label99;
      }
      j = nearbyFriendAddCount.hashCode();
      label39:
      if (nearbyFriendBlockCount == null) {
        break label104;
      }
    }
    label99:
    label104:
    for (int k = nearbyFriendBlockCount.hashCode();; k = 0)
    {
      if (nearbyFriendCount != null) {
        m = nearbyFriendCount.hashCode();
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
 * Qualified Name:     kd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */