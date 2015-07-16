import java.util.HashMap;
import java.util.Map;

public final class ie
  extends ml
{
  private String additionalInfo;
  private final String eventName = "HERE_SESSION_AVAILABLE";
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "HERE_SESSION_AVAILABLE");
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
      paramObject = (ie)paramObject;
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
 * Qualified Name:     ie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */