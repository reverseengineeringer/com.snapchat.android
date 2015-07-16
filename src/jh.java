import java.util.HashMap;
import java.util.Map;

public final class jh
  extends ml
{
  private final String eventName = "PROFILE_FRIEND_REQUEST_NAME_EDIT";
  public Boolean hasDisplayName;
  public kh source;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_FRIEND_REQUEST_NAME_EDIT");
    if (hasDisplayName != null) {
      localHashMap.put("has_display_name", hasDisplayName);
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
      paramObject = (jh)paramObject;
      if (hasDisplayName != null)
      {
        if (hasDisplayName.equals(hasDisplayName)) {}
      }
      else {
        while (hasDisplayName != null) {
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
    int j = 0;
    int k = super.hashCode();
    if (hasDisplayName != null) {}
    for (int i = hasDisplayName.hashCode();; i = 0)
    {
      if (source != null) {
        j = source.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
}

/* Location:
 * Qualified Name:     jh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */