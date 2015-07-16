import java.util.HashMap;
import java.util.Map;

public final class ma
  extends ml
{
  public String discoverPublishersSeen;
  private final String eventName = "STORY_CELL_VIEW";
  public String liveStoriesSeen;
  public String posterId;
  public Long storyCellCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "STORY_CELL_VIEW");
    if (discoverPublishersSeen != null) {
      localHashMap.put("discover_publishers_seen", discoverPublishersSeen);
    }
    if (liveStoriesSeen != null) {
      localHashMap.put("live_stories_seen", liveStoriesSeen);
    }
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
      paramObject = (ma)paramObject;
      if (discoverPublishersSeen != null)
      {
        if (discoverPublishersSeen.equals(discoverPublishersSeen)) {}
      }
      else {
        while (discoverPublishersSeen != null) {
          return false;
        }
      }
      if (liveStoriesSeen != null)
      {
        if (liveStoriesSeen.equals(liveStoriesSeen)) {}
      }
      else {
        while (liveStoriesSeen != null) {
          return false;
        }
      }
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
    int m = 0;
    int n = super.hashCode();
    int i;
    int j;
    if (discoverPublishersSeen != null)
    {
      i = discoverPublishersSeen.hashCode();
      if (liveStoriesSeen == null) {
        break label99;
      }
      j = liveStoriesSeen.hashCode();
      label39:
      if (posterId == null) {
        break label104;
      }
    }
    label99:
    label104:
    for (int k = posterId.hashCode();; k = 0)
    {
      if (storyCellCount != null) {
        m = storyCellCount.hashCode();
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
 * Qualified Name:     ma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */