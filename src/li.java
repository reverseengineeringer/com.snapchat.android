import java.util.HashMap;
import java.util.Map;

public final class li
  extends lt
{
  private final String eventName = "STORY_CELL_VIEW";
  public String posterId;
  public Long storyCellCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "STORY_CELL_VIEW");
    if (posterId != null) {
      localHashMap.put("poster_id", posterId);
    }
    if (storyCellCount != null) {
      localHashMap.put("story_cell_count", storyCellCount);
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
      paramObject = (li)paramObject;
      if (posterId != null)
      {
        if (posterId.equals(posterId)) {}
      }
      else {
        while (posterId != null) {
          return false;
        }
      }
      if (storyCellCount == null) {
        break;
      }
    } while (storyCellCount.equals(storyCellCount));
    for (;;)
    {
      return false;
      if (storyCellCount == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    if (posterId != null) {}
    for (int i = posterId.hashCode();; i = 0)
    {
      if (storyCellCount != null) {
        j = storyCellCount.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
}

/* Location:
 * Qualified Name:     li
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */