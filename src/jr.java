import java.util.HashMap;
import java.util.Map;

public final class jr
  extends ml
{
  public Long charCount;
  private final String eventName = "PROFILE_MY_CONTACTS_SEARCH_PERFORM";
  public Long keystrokeCount;
  public Long nonSnapchatterCount;
  public Long snapchatterCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "PROFILE_MY_CONTACTS_SEARCH_PERFORM");
    if (charCount != null) {
      localHashMap.put("char_count", charCount);
    }
    if (keystrokeCount != null) {
      localHashMap.put("keystroke_count", keystrokeCount);
    }
    if (nonSnapchatterCount != null) {
      localHashMap.put("non_snapchatter_count", nonSnapchatterCount);
    }
    if (snapchatterCount != null) {
      localHashMap.put("snapchatter_count", snapchatterCount);
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
      paramObject = (jr)paramObject;
      if (charCount != null)
      {
        if (charCount.equals(charCount)) {}
      }
      else {
        while (charCount != null) {
          return false;
        }
      }
      if (keystrokeCount != null)
      {
        if (keystrokeCount.equals(keystrokeCount)) {}
      }
      else {
        while (keystrokeCount != null) {
          return false;
        }
      }
      if (nonSnapchatterCount != null)
      {
        if (nonSnapchatterCount.equals(nonSnapchatterCount)) {}
      }
      else {
        while (nonSnapchatterCount != null) {
          return false;
        }
      }
      if (snapchatterCount == null) {
        break;
      }
    } while (snapchatterCount.equals(snapchatterCount));
    for (;;)
    {
      return false;
      if (snapchatterCount == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int m = 0;
    int n = super.hashCode();
    int i;
    int j;
    if (charCount != null)
    {
      i = charCount.hashCode();
      if (keystrokeCount == null) {
        break label99;
      }
      j = keystrokeCount.hashCode();
      label39:
      if (nonSnapchatterCount == null) {
        break label104;
      }
    }
    label99:
    label104:
    for (int k = nonSnapchatterCount.hashCode();; k = 0)
    {
      if (snapchatterCount != null) {
        m = snapchatterCount.hashCode();
      }
      return (k + (j + (i + n * 31) * 31) * 31) * 31 + m;
      i = 0;
      break;
      j = 0;
      break label39;
    }
  }
}

/* Location:
 * Qualified Name:     jr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */