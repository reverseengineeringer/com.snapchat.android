import java.util.HashMap;
import java.util.Map;

public final class in
  extends ml
{
  private final String eventName = "PROFILE_ADD_FRIENDS_PAGE_EXIT";
  public kf exitEvent;
  public String nextPage;
  public Long suggestFriendAddCount;
  public Long suggestFriendCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_ADD_FRIENDS_PAGE_EXIT");
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (nextPage != null) {
      localHashMap.put("next_page", nextPage);
    }
    if (suggestFriendAddCount != null) {
      localHashMap.put("suggest_friend_add_count", suggestFriendAddCount);
    }
    if (suggestFriendCount != null) {
      localHashMap.put("suggest_friend_count", suggestFriendCount);
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
      paramObject = (in)paramObject;
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
          return false;
        }
      }
      if (nextPage != null)
      {
        if (nextPage.equals(nextPage)) {}
      }
      else {
        while (nextPage != null) {
          return false;
        }
      }
      if (suggestFriendAddCount != null)
      {
        if (suggestFriendAddCount.equals(suggestFriendAddCount)) {}
      }
      else {
        while (suggestFriendAddCount != null) {
          return false;
        }
      }
      if (suggestFriendCount == null) {
        break;
      }
    } while (suggestFriendCount.equals(suggestFriendCount));
    for (;;)
    {
      return false;
      if (suggestFriendCount == null) {
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
      if (nextPage == null) {
        break label99;
      }
      j = nextPage.hashCode();
      label39:
      if (suggestFriendAddCount == null) {
        break label104;
      }
    }
    label99:
    label104:
    for (int k = suggestFriendAddCount.hashCode();; k = 0)
    {
      if (suggestFriendCount != null) {
        m = suggestFriendCount.hashCode();
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
 * Qualified Name:     in
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */