import java.util.HashMap;
import java.util.Map;

public final class iu
  extends lt
{
  private final String eventName = "PROFILE_FRIEND_REQUEST_IGNORE";
  public Boolean hasDisplayName;
  public ic method;
  public jq source;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_FRIEND_REQUEST_IGNORE");
    if (hasDisplayName != null) {
      localHashMap.put("has_display_name", hasDisplayName);
    }
    if (method != null) {
      localHashMap.put("method", method);
    }
    if (source != null) {
      localHashMap.put("source", source);
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
      paramObject = (iu)paramObject;
      if (hasDisplayName != null)
      {
        if (hasDisplayName.equals(hasDisplayName)) {}
      }
      else {
        while (hasDisplayName != null) {
          return false;
        }
      }
      if (method != null)
      {
        if (method.equals(method)) {}
      }
      else {
        while (method != null) {
          return false;
        }
      }
      if (source == null) {
        break;
      }
    } while (source.equals(source));
    for (;;)
    {
      return false;
      if (source == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int k = 0;
    int m = super.hashCode();
    int i;
    if (hasDisplayName != null)
    {
      i = hasDisplayName.hashCode();
      if (method == null) {
        break label76;
      }
    }
    label76:
    for (int j = method.hashCode();; j = 0)
    {
      if (source != null) {
        k = source.hashCode();
      }
      return (j + (i + m * 31) * 31) * 31 + k;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     iu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */