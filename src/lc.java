import java.util.HashMap;
import java.util.Map;

public final class lc
  extends ml
{
  private String additionalInfo;
  private final String eventName = "REGISTRATION_USER_FOCUS_ON_PASSWORD";
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_FOCUS_ON_PASSWORD");
    if (additionalInfo != null) {
      localHashMap.put("additional_info", additionalInfo);
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
      paramObject = (lc)paramObject;
      if (additionalInfo == null) {
        break;
      }
    } while (additionalInfo.equals(additionalInfo));
    for (;;)
    {
      return false;
      if (additionalInfo == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (additionalInfo != null) {}
    for (int i = additionalInfo.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     lc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */