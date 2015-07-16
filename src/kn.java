import java.util.HashMap;
import java.util.Map;

public final class kn
  extends ml
{
  public Long addedMeSearchCount;
  public Long addressBookSearchCount;
  public Long charCount;
  private final String eventName = "PROFILE_USERNAME_SEARCH_PERFORM";
  public Long keystrokeCount;
  public Long myFriendSearchCount;
  public Long usernameSearchCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_USERNAME_SEARCH_PERFORM");
    if (addedMeSearchCount != null) {
      localHashMap.put("added_me_search_count", addedMeSearchCount);
    }
    if (addressBookSearchCount != null) {
      localHashMap.put("address_book_search_count", addressBookSearchCount);
    }
    if (charCount != null) {
      localHashMap.put("char_count", charCount);
    }
    if (keystrokeCount != null) {
      localHashMap.put("keystroke_count", keystrokeCount);
    }
    if (myFriendSearchCount != null) {
      localHashMap.put("my_friend_search_count", myFriendSearchCount);
    }
    if (usernameSearchCount != null) {
      localHashMap.put("username_search_count", usernameSearchCount);
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
      paramObject = (kn)paramObject;
      if (addedMeSearchCount != null)
      {
        if (addedMeSearchCount.equals(addedMeSearchCount)) {}
      }
      else {
        while (addedMeSearchCount != null) {
          return false;
        }
      }
      if (addressBookSearchCount != null)
      {
        if (addressBookSearchCount.equals(addressBookSearchCount)) {}
      }
      else {
        while (addressBookSearchCount != null) {
          return false;
        }
      }
      if (charCount != null)
      {
        if (charCount.equals(charCount)) {}
      }
      else {
        while (charCount != null) {
          return false;
        }
      }
      if (keystrokeCount != null)
      {
        if (keystrokeCount.equals(keystrokeCount)) {}
      }
      else {
        while (keystrokeCount != null) {
          return false;
        }
      }
      if (myFriendSearchCount != null)
      {
        if (myFriendSearchCount.equals(myFriendSearchCount)) {}
      }
      else {
        while (myFriendSearchCount != null) {
          return false;
        }
      }
      if (usernameSearchCount == null) {
        break;
      }
    } while (usernameSearchCount.equals(usernameSearchCount));
    for (;;)
    {
      return false;
      if (usernameSearchCount == null) {
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
    if (addedMeSearchCount != null)
    {
      i = addedMeSearchCount.hashCode();
      if (addressBookSearchCount == null) {
        break label143;
      }
      j = addressBookSearchCount.hashCode();
      if (charCount == null) {
        break label148;
      }
      k = charCount.hashCode();
      if (keystrokeCount == null) {
        break label153;
      }
      m = keystrokeCount.hashCode();
      label70:
      if (myFriendSearchCount == null) {
        break label159;
      }
    }
    label143:
    label148:
    label153:
    label159:
    for (int n = myFriendSearchCount.hashCode();; n = 0)
    {
      if (usernameSearchCount != null) {
        i1 = usernameSearchCount.hashCode();
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
 * Qualified Name:     kn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */