import java.util.HashMap;
import java.util.Map;

public final class kt
  extends ml
{
  private String additionalInfo;
  public Long contactFoundCount;
  public Long contactInviteCount;
  private final String eventName = "REGISTRATION_USER_CONTACT_FIND_SUCCESS";
  public Long friendAddCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_CONTACT_FIND_SUCCESS");
    if (additionalInfo != null) {
      localHashMap.put("additional_info", additionalInfo);
    }
    if (contactFoundCount != null) {
      localHashMap.put("contact_found_count", contactFoundCount);
    }
    if (contactInviteCount != null) {
      localHashMap.put("contact_invite_count", contactInviteCount);
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
      paramObject = (kt)paramObject;
      if (additionalInfo != null)
      {
        if (additionalInfo.equals(additionalInfo)) {}
      }
      else {
        while (additionalInfo != null) {
          return false;
        }
      }
      if (contactFoundCount != null)
      {
        if (contactFoundCount.equals(contactFoundCount)) {}
      }
      else {
        while (contactFoundCount != null) {
          return false;
        }
      }
      if (contactInviteCount != null)
      {
        if (contactInviteCount.equals(contactInviteCount)) {}
      }
      else {
        while (contactInviteCount != null) {
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
    int m = 0;
    int n = super.hashCode();
    int i;
    int j;
    if (additionalInfo != null)
    {
      i = additionalInfo.hashCode();
      if (contactFoundCount == null) {
        break label99;
      }
      j = contactFoundCount.hashCode();
      label39:
      if (contactInviteCount == null) {
        break label104;
      }
    }
    label99:
    label104:
    for (int k = contactInviteCount.hashCode();; k = 0)
    {
      if (friendAddCount != null) {
        m = friendAddCount.hashCode();
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
 * Qualified Name:     kt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */