import java.util.HashMap;
import java.util.Map;

public final class ft
  extends lt
{
  private final String eventName = "APP_SESSION_END";
  public Long sessionActiveTimeSec;
  public Double sessionStartTs;
  public Long sessionTimeSec;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "APP_SESSION_END");
    if (sessionActiveTimeSec != null) {
      localHashMap.put("session_active_time_sec", sessionActiveTimeSec);
    }
    if (sessionStartTs != null) {
      localHashMap.put("session_start_ts", sessionStartTs);
    }
    if (sessionTimeSec != null) {
      localHashMap.put("session_time_sec", sessionTimeSec);
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
      paramObject = (ft)paramObject;
      if (sessionActiveTimeSec != null)
      {
        if (sessionActiveTimeSec.equals(sessionActiveTimeSec)) {}
      }
      else {
        while (sessionActiveTimeSec != null) {
          return false;
        }
      }
      if (sessionStartTs != null)
      {
        if (sessionStartTs.equals(sessionStartTs)) {}
      }
      else {
        while (sessionStartTs != null) {
          return false;
        }
      }
      if (sessionTimeSec == null) {
        break;
      }
    } while (sessionTimeSec.equals(sessionTimeSec));
    for (;;)
    {
      return false;
      if (sessionTimeSec == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int k = 0;
    int m = super.hashCode();
    int i;
    if (sessionActiveTimeSec != null)
    {
      i = sessionActiveTimeSec.hashCode();
      if (sessionStartTs == null) {
        break label76;
      }
    }
    label76:
    for (int j = sessionStartTs.hashCode();; j = 0)
    {
      if (sessionTimeSec != null) {
        k = sessionTimeSec.hashCode();
      }
      return (j + (i + m * 31) * 31) * 31 + k;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */