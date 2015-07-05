import java.util.HashMap;
import java.util.Map;

public final class ip
  extends lt
{
  public Long charCount;
  private final String eventName = "PROFILE_ADDRESS_BOOK_SEARCH_PERFORM";
  public Long keystrokeCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_ADDRESS_BOOK_SEARCH_PERFORM");
    if (charCount != null) {
      localHashMap.put("char_count", charCount);
    }
    if (keystrokeCount != null) {
      localHashMap.put("keystroke_count", keystrokeCount);
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
      paramObject = (ip)paramObject;
      if (charCount != null)
      {
        if (charCount.equals(charCount)) {}
      }
      else {
        while (charCount != null) {
          return false;
        }
      }
      if (keystrokeCount == null) {
        break;
      }
    } while (keystrokeCount.equals(keystrokeCount));
    for (;;)
    {
      return false;
      if (keystrokeCount == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    if (charCount != null) {}
    for (int i = charCount.hashCode();; i = 0)
    {
      if (keystrokeCount != null) {
        j = keystrokeCount.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
}

/* Location:
 * Qualified Name:     ip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */