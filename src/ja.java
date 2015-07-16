import java.util.HashMap;
import java.util.Map;

public final class ja
  extends ml
{
  public Long charCount;
  private final String eventName = "PROFILE_ADDRESS_BOOK_SEARCH_CLEAR";
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_ADDRESS_BOOK_SEARCH_CLEAR");
    if (charCount != null) {
      localHashMap.put("char_count", charCount);
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
      paramObject = (ja)paramObject;
      if (charCount == null) {
        break;
      }
    } while (charCount.equals(charCount));
    for (;;)
    {
      return false;
      if (charCount == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (charCount != null) {}
    for (int i = charCount.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     ja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */