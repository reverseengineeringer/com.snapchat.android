import java.util.HashMap;
import java.util.Map;

public final class im
  extends lt
{
  private final String eventName = "PROFILE_ADDRESS_BOOK_PAGE_VIEW";
  public Boolean hasContactAccess;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_ADDRESS_BOOK_PAGE_VIEW");
    if (hasContactAccess != null) {
      localHashMap.put("has_contact_access", hasContactAccess);
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
      paramObject = (im)paramObject;
      if (hasContactAccess == null) {
        break;
      }
    } while (hasContactAccess.equals(hasContactAccess));
    for (;;)
    {
      return false;
      if (hasContactAccess == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (hasContactAccess != null) {}
    for (int i = hasContactAccess.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     im
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */