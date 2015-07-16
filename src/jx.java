import java.util.HashMap;
import java.util.Map;

public final class jx
  extends ml
{
  private final String eventName = "PROFILE_MY_FRIENDS_PAGE_EXIT";
  public kf exitEvent;
  public Long myFriendBlockCount;
  public Long myFriendBlockInSearchCount;
  public Long myFriendCount;
  public Long myFriendNameEditCount;
  public Long myFriendNameEditInSearchCount;
  public Long myFriendReAddCount;
  public Long myFriendReAddInSearchCount;
  public Long myFriendRemoveCount;
  public Long myFriendRemoveInSearchCount;
  public Long myFriendTapCount;
  public Long myFriendTapInSearchCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_MY_FRIENDS_PAGE_EXIT");
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (myFriendBlockCount != null) {
      localHashMap.put("my_friend_block_count", myFriendBlockCount);
    }
    if (myFriendBlockInSearchCount != null) {
      localHashMap.put("my_friend_block_in_search_count", myFriendBlockInSearchCount);
    }
    if (myFriendCount != null) {
      localHashMap.put("my_friend_count", myFriendCount);
    }
    if (myFriendNameEditCount != null) {
      localHashMap.put("my_friend_name_edit_count", myFriendNameEditCount);
    }
    if (myFriendNameEditInSearchCount != null) {
      localHashMap.put("my_friend_name_edit_in_search_count", myFriendNameEditInSearchCount);
    }
    if (myFriendReAddCount != null) {
      localHashMap.put("my_friend_re_add_count", myFriendReAddCount);
    }
    if (myFriendReAddInSearchCount != null) {
      localHashMap.put("my_friend_re_add_in_search_count", myFriendReAddInSearchCount);
    }
    if (myFriendRemoveCount != null) {
      localHashMap.put("my_friend_remove_count", myFriendRemoveCount);
    }
    if (myFriendRemoveInSearchCount != null) {
      localHashMap.put("my_friend_remove_in_search_count", myFriendRemoveInSearchCount);
    }
    if (myFriendTapCount != null) {
      localHashMap.put("my_friend_tap_count", myFriendTapCount);
    }
    if (myFriendTapInSearchCount != null) {
      localHashMap.put("my_friend_tap_in_search_count", myFriendTapInSearchCount);
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
      paramObject = (jx)paramObject;
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
          return false;
        }
      }
      if (myFriendBlockCount != null)
      {
        if (myFriendBlockCount.equals(myFriendBlockCount)) {}
      }
      else {
        while (myFriendBlockCount != null) {
          return false;
        }
      }
      if (myFriendBlockInSearchCount != null)
      {
        if (myFriendBlockInSearchCount.equals(myFriendBlockInSearchCount)) {}
      }
      else {
        while (myFriendBlockInSearchCount != null) {
          return false;
        }
      }
      if (myFriendCount != null)
      {
        if (myFriendCount.equals(myFriendCount)) {}
      }
      else {
        while (myFriendCount != null) {
          return false;
        }
      }
      if (myFriendNameEditCount != null)
      {
        if (myFriendNameEditCount.equals(myFriendNameEditCount)) {}
      }
      else {
        while (myFriendNameEditCount != null) {
          return false;
        }
      }
      if (myFriendNameEditInSearchCount != null)
      {
        if (myFriendNameEditInSearchCount.equals(myFriendNameEditInSearchCount)) {}
      }
      else {
        while (myFriendNameEditInSearchCount != null) {
          return false;
        }
      }
      if (myFriendReAddCount != null)
      {
        if (myFriendReAddCount.equals(myFriendReAddCount)) {}
      }
      else {
        while (myFriendReAddCount != null) {
          return false;
        }
      }
      if (myFriendReAddInSearchCount != null)
      {
        if (myFriendReAddInSearchCount.equals(myFriendReAddInSearchCount)) {}
      }
      else {
        while (myFriendReAddInSearchCount != null) {
          return false;
        }
      }
      if (myFriendRemoveCount != null)
      {
        if (myFriendRemoveCount.equals(myFriendRemoveCount)) {}
      }
      else {
        while (myFriendRemoveCount != null) {
          return false;
        }
      }
      if (myFriendRemoveInSearchCount != null)
      {
        if (myFriendRemoveInSearchCount.equals(myFriendRemoveInSearchCount)) {}
      }
      else {
        while (myFriendRemoveInSearchCount != null) {
          return false;
        }
      }
      if (myFriendTapCount != null)
      {
        if (myFriendTapCount.equals(myFriendTapCount)) {}
      }
      else {
        while (myFriendTapCount != null) {
          return false;
        }
      }
      if (myFriendTapInSearchCount == null) {
        break;
      }
    } while (myFriendTapInSearchCount.equals(myFriendTapInSearchCount));
    for (;;)
    {
      return false;
      if (myFriendTapInSearchCount == null) {
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
    if (exitEvent != null)
    {
      i = exitEvent.hashCode();
      if (myFriendBlockCount == null) {
        break label275;
      }
      j = myFriendBlockCount.hashCode();
      if (myFriendBlockInSearchCount == null) {
        break label280;
      }
      k = myFriendBlockInSearchCount.hashCode();
      if (myFriendCount == null) {
        break label285;
      }
      m = myFriendCount.hashCode();
      if (myFriendNameEditCount == null) {
        break label291;
      }
      n = myFriendNameEditCount.hashCode();
      if (myFriendNameEditInSearchCount == null) {
        break label297;
      }
      i1 = myFriendNameEditInSearchCount.hashCode();
      if (myFriendReAddCount == null) {
        break label303;
      }
      i2 = myFriendReAddCount.hashCode();
      if (myFriendReAddInSearchCount == null) {
        break label309;
      }
      i3 = myFriendReAddInSearchCount.hashCode();
      if (myFriendRemoveCount == null) {
        break label315;
      }
      i4 = myFriendRemoveCount.hashCode();
      if (myFriendRemoveInSearchCount == null) {
        break label321;
      }
      i5 = myFriendRemoveInSearchCount.hashCode();
      label166:
      if (myFriendTapCount == null) {
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
    for (int i6 = myFriendTapCount.hashCode();; i6 = 0)
    {
      if (myFriendTapInSearchCount != null) {
        i7 = myFriendTapInSearchCount.hashCode();
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
 * Qualified Name:     jx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */