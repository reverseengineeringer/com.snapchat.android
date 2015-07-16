import java.util.HashMap;
import java.util.Map;

public final class ga
  extends ml
{
  private final String eventName = "APP_APPLICATION_OPEN";
  private String notificationType;
  private ii openState;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "APP_APPLICATION_OPEN");
    if (notificationType != null) {
      localHashMap.put("notification_type", notificationType);
    }
    if (openState != null) {
      localHashMap.put("open_state", openState);
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
      paramObject = (ga)paramObject;
      if (notificationType != null)
      {
        if (notificationType.equals(notificationType)) {}
      }
      else {
        while (notificationType != null) {
          return false;
        }
      }
      if (openState == null) {
        break;
      }
    } while (openState.equals(openState));
    for (;;)
    {
      return false;
      if (openState == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    if (notificationType != null) {}
    for (int i = notificationType.hashCode();; i = 0)
    {
      if (openState != null) {
        j = openState.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
}

/* Location:
 * Qualified Name:     ga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */