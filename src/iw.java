import java.util.HashMap;
import java.util.Map;

public final class iw
  extends ml
{
  private final String eventName = "PROFILE_ADDRESS_BOOK_FRIEND_REQUEST_SENT";
  public kh source;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_ADDRESS_BOOK_FRIEND_REQUEST_SENT");
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
      paramObject = (iw)paramObject;
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
    int j = super.hashCode();
    if (source != null) {}
    for (int i = source.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     iw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */