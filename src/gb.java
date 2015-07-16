import java.util.HashMap;
import java.util.Map;

public final class gb
  extends ml
{
  private final String eventName = "APP_DATA_LOSS";
  public Double firstFailureTs;
  public Long overflowedEventCount;
  public Long rejectedEventCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "APP_DATA_LOSS");
    if (firstFailureTs != null) {
      localHashMap.put("first_failure_ts", firstFailureTs);
    }
    if (overflowedEventCount != null) {
      localHashMap.put("overflowed_event_count", overflowedEventCount);
    }
    if (rejectedEventCount != null) {
      localHashMap.put("rejected_event_count", rejectedEventCount);
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
      paramObject = (gb)paramObject;
      if (firstFailureTs != null)
      {
        if (firstFailureTs.equals(firstFailureTs)) {}
      }
      else {
        while (firstFailureTs != null) {
          return false;
        }
      }
      if (overflowedEventCount != null)
      {
        if (overflowedEventCount.equals(overflowedEventCount)) {}
      }
      else {
        while (overflowedEventCount != null) {
          return false;
        }
      }
      if (rejectedEventCount == null) {
        break;
      }
    } while (rejectedEventCount.equals(rejectedEventCount));
    for (;;)
    {
      return false;
      if (rejectedEventCount == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int k = 0;
    int m = super.hashCode();
    int i;
    if (firstFailureTs != null)
    {
      i = firstFailureTs.hashCode();
      if (overflowedEventCount == null) {
        break label76;
      }
    }
    label76:
    for (int j = overflowedEventCount.hashCode();; j = 0)
    {
      if (rejectedEventCount != null) {
        k = rejectedEventCount.hashCode();
      }
      return (j + (i + m * 31) * 31) * 31 + k;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */