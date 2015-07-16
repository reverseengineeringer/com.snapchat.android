import java.util.HashMap;
import java.util.Map;

public final class hn
  extends ml
{
  public String dsnapId;
  public String editionId;
  private final String eventName = "DISCOVER_SNAP_SHARE_LINK";
  public ik pageSection;
  public String publisherId;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_SNAP_SHARE_LINK");
    if (dsnapId != null) {
      localHashMap.put("dsnap_id", dsnapId);
    }
    if (editionId != null) {
      localHashMap.put("edition_id", editionId);
    }
    if (pageSection != null) {
      localHashMap.put("page_section", pageSection);
    }
    if (publisherId != null) {
      localHashMap.put("publisher_id", publisherId);
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
      paramObject = (hn)paramObject;
      if (dsnapId != null)
      {
        if (dsnapId.equals(dsnapId)) {}
      }
      else {
        while (dsnapId != null) {
          return false;
        }
      }
      if (editionId != null)
      {
        if (editionId.equals(editionId)) {}
      }
      else {
        while (editionId != null) {
          return false;
        }
      }
      if (pageSection != null)
      {
        if (pageSection.equals(pageSection)) {}
      }
      else {
        while (pageSection != null) {
          return false;
        }
      }
      if (publisherId == null) {
        break;
      }
    } while (publisherId.equals(publisherId));
    for (;;)
    {
      return false;
      if (publisherId == null) {
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
    if (dsnapId != null)
    {
      i = dsnapId.hashCode();
      if (editionId == null) {
        break label99;
      }
      j = editionId.hashCode();
      label39:
      if (pageSection == null) {
        break label104;
      }
    }
    label99:
    label104:
    for (int k = pageSection.hashCode();; k = 0)
    {
      if (publisherId != null) {
        m = publisherId.hashCode();
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
 * Qualified Name:     hn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */