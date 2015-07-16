import java.util.HashMap;
import java.util.Map;

public final class if
  extends ml
{
  private final String eventName = "HERE_SESSION_END";
  public Double view_time_sec;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "HERE_SESSION_END");
    if (view_time_sec != null) {
      localHashMap.put("view_time_sec", view_time_sec);
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
      paramObject = (if)paramObject;
      if (view_time_sec == null) {
        break;
      }
    } while (view_time_sec.equals(view_time_sec));
    for (;;)
    {
      return false;
      if (view_time_sec == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (view_time_sec != null) {}
    for (int i = view_time_sec.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     if
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */