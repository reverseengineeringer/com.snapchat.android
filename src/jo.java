import java.util.HashMap;
import java.util.Map;

public final class jo
  extends ml
{
  private final String eventName = "PROFILE_MY_CONTACTS_PAGE_EXIT";
  public kf exitEvent;
  public Long nonSnapchatterCount;
  public Long nonSnapchatterInviteCount;
  public Long nonSnapchatterInviteInSearchCount;
  public Long snapchatterAddCount;
  public Long snapchatterAddInSearchCount;
  public Long snapchatterCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_MY_CONTACTS_PAGE_EXIT");
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (nonSnapchatterCount != null) {
      localHashMap.put("non_snapchatter_count", nonSnapchatterCount);
    }
    if (nonSnapchatterInviteCount != null) {
      localHashMap.put("non_snapchatter_invite_count", nonSnapchatterInviteCount);
    }
    if (nonSnapchatterInviteInSearchCount != null) {
      localHashMap.put("non_snapchatter_invite_in_search_count", nonSnapchatterInviteInSearchCount);
    }
    if (snapchatterAddCount != null) {
      localHashMap.put("snapchatter_add_count", snapchatterAddCount);
    }
    if (snapchatterAddInSearchCount != null) {
      localHashMap.put("snapchatter_add_in_search_count", snapchatterAddInSearchCount);
    }
    if (snapchatterCount != null) {
      localHashMap.put("snapchatter_count", snapchatterCount);
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
      paramObject = (jo)paramObject;
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
          return false;
        }
      }
      if (nonSnapchatterCount != null)
      {
        if (nonSnapchatterCount.equals(nonSnapchatterCount)) {}
      }
      else {
        while (nonSnapchatterCount != null) {
          return false;
        }
      }
      if (nonSnapchatterInviteCount != null)
      {
        if (nonSnapchatterInviteCount.equals(nonSnapchatterInviteCount)) {}
      }
      else {
        while (nonSnapchatterInviteCount != null) {
          return false;
        }
      }
      if (nonSnapchatterInviteInSearchCount != null)
      {
        if (nonSnapchatterInviteInSearchCount.equals(nonSnapchatterInviteInSearchCount)) {}
      }
      else {
        while (nonSnapchatterInviteInSearchCount != null) {
          return false;
        }
      }
      if (snapchatterAddCount != null)
      {
        if (snapchatterAddCount.equals(snapchatterAddCount)) {}
      }
      else {
        while (snapchatterAddCount != null) {
          return false;
        }
      }
      if (snapchatterAddInSearchCount != null)
      {
        if (snapchatterAddInSearchCount.equals(snapchatterAddInSearchCount)) {}
      }
      else {
        while (snapchatterAddInSearchCount != null) {
          return false;
        }
      }
      if (snapchatterCount == null) {
        break;
      }
    } while (snapchatterCount.equals(snapchatterCount));
    for (;;)
    {
      return false;
      if (snapchatterCount == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int i2 = 0;
    int i3 = super.hashCode();
    int i;
    int j;
    label39:
    int k;
    label54:
    int m;
    label70:
    int n;
    if (exitEvent != null)
    {
      i = exitEvent.hashCode();
      if (nonSnapchatterCount == null) {
        break label165;
      }
      j = nonSnapchatterCount.hashCode();
      if (nonSnapchatterInviteCount == null) {
        break label170;
      }
      k = nonSnapchatterInviteCount.hashCode();
      if (nonSnapchatterInviteInSearchCount == null) {
        break label175;
      }
      m = nonSnapchatterInviteInSearchCount.hashCode();
      if (snapchatterAddCount == null) {
        break label181;
      }
      n = snapchatterAddCount.hashCode();
      label86:
      if (snapchatterAddInSearchCount == null) {
        break label187;
      }
    }
    label165:
    label170:
    label175:
    label181:
    label187:
    for (int i1 = snapchatterAddInSearchCount.hashCode();; i1 = 0)
    {
      if (snapchatterCount != null) {
        i2 = snapchatterCount.hashCode();
      }
      return (i1 + (n + (m + (k + (j + (i + i3 * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i2;
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
    }
  }
}

/* Location:
 * Qualified Name:     jo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */