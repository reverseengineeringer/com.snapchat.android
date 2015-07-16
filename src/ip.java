import java.util.HashMap;
import java.util.Map;

public final class ip
  extends ml
{
  private final String eventName = "PROFILE_ADDED_ME_PAGE_EXIT";
  public kf exitEvent;
  public Long newRequestCount;
  public Long requestAcceptCount;
  public Long requestBlockCount;
  public Long requestIgnoreCount;
  public Long requestNameEditCount;
  public Long totalRequestCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_ADDED_ME_PAGE_EXIT");
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (newRequestCount != null) {
      localHashMap.put("new_request_count", newRequestCount);
    }
    if (requestAcceptCount != null) {
      localHashMap.put("request_accept_count", requestAcceptCount);
    }
    if (requestBlockCount != null) {
      localHashMap.put("request_block_count", requestBlockCount);
    }
    if (requestIgnoreCount != null) {
      localHashMap.put("request_ignore_count", requestIgnoreCount);
    }
    if (requestNameEditCount != null) {
      localHashMap.put("request_name_edit_count", requestNameEditCount);
    }
    if (totalRequestCount != null) {
      localHashMap.put("total_request_count", totalRequestCount);
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
      paramObject = (ip)paramObject;
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
          return false;
        }
      }
      if (newRequestCount != null)
      {
        if (newRequestCount.equals(newRequestCount)) {}
      }
      else {
        while (newRequestCount != null) {
          return false;
        }
      }
      if (requestAcceptCount != null)
      {
        if (requestAcceptCount.equals(requestAcceptCount)) {}
      }
      else {
        while (requestAcceptCount != null) {
          return false;
        }
      }
      if (requestBlockCount != null)
      {
        if (requestBlockCount.equals(requestBlockCount)) {}
      }
      else {
        while (requestBlockCount != null) {
          return false;
        }
      }
      if (requestIgnoreCount != null)
      {
        if (requestIgnoreCount.equals(requestIgnoreCount)) {}
      }
      else {
        while (requestIgnoreCount != null) {
          return false;
        }
      }
      if (requestNameEditCount != null)
      {
        if (requestNameEditCount.equals(requestNameEditCount)) {}
      }
      else {
        while (requestNameEditCount != null) {
          return false;
        }
      }
      if (totalRequestCount == null) {
        break;
      }
    } while (totalRequestCount.equals(totalRequestCount));
    for (;;)
    {
      return false;
      if (totalRequestCount == null) {
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
      if (newRequestCount == null) {
        break label165;
      }
      j = newRequestCount.hashCode();
      if (requestAcceptCount == null) {
        break label170;
      }
      k = requestAcceptCount.hashCode();
      if (requestBlockCount == null) {
        break label175;
      }
      m = requestBlockCount.hashCode();
      if (requestIgnoreCount == null) {
        break label181;
      }
      n = requestIgnoreCount.hashCode();
      label86:
      if (requestNameEditCount == null) {
        break label187;
      }
    }
    label165:
    label170:
    label175:
    label181:
    label187:
    for (int i1 = requestNameEditCount.hashCode();; i1 = 0)
    {
      if (totalRequestCount != null) {
        i2 = totalRequestCount.hashCode();
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
 * Qualified Name:     ip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */