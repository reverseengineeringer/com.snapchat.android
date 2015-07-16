import java.util.HashMap;
import java.util.Map;

public final class kb
  extends ml
{
  public Long charCount;
  private final String eventName = "PROFILE_MY_FRIENDS_SEARCH_PERFORM";
  public Long friendSearchCount;
  public Long keystrokeCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_MY_FRIENDS_SEARCH_PERFORM");
    if (charCount != null) {
      localHashMap.put("char_count", charCount);
    }
    if (friendSearchCount != null) {
      localHashMap.put("friend_search_count", friendSearchCount);
    }
    if (keystrokeCount != null) {
      localHashMap.put("keystroke_count", keystrokeCount);
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
      paramObject = (kb)paramObject;
      if (charCount != null)
      {
        if (charCount.equals(charCount)) {}
      }
      else {
        while (charCount != null) {
          return false;
        }
      }
      if (friendSearchCount != null)
      {
        if (friendSearchCount.equals(friendSearchCount)) {}
      }
      else {
        while (friendSearchCount != null) {
          return false;
        }
      }
      if (keystrokeCount == null) {
        break;
      }
    } while (keystrokeCount.equals(keystrokeCount));
    for (;;)
    {
      return false;
      if (keystrokeCount == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int k = 0;
    int m = super.hashCode();
    int i;
    if (charCount != null)
    {
      i = charCount.hashCode();
      if (friendSearchCount == null) {
        break label76;
      }
    }
    label76:
    for (int j = friendSearchCount.hashCode();; j = 0)
    {
      if (keystrokeCount != null) {
        k = keystrokeCount.hashCode();
      }
      return (j + (i + m * 31) * 31) * 31 + k;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     kb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */