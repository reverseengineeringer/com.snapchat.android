import java.util.HashMap;
import java.util.Map;

public final class io
  extends ml
{
  private final String eventName = "PROFILE_ADD_NEARBY_PAGE_VIEW";
  private Boolean hasLocationPermission;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_ADD_NEARBY_PAGE_VIEW");
    if (hasLocationPermission != null) {
      localHashMap.put("has_location_permission", hasLocationPermission);
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
      paramObject = (io)paramObject;
      if (hasLocationPermission == null) {
        break;
      }
    } while (hasLocationPermission.equals(hasLocationPermission));
    for (;;)
    {
      return false;
      if (hasLocationPermission == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (hasLocationPermission != null) {}
    for (int i = hasLocationPermission.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     io
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */