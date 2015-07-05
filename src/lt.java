import java.util.HashMap;
import java.util.Map;

public class lt
  extends hk
{
  public String userId;
  
  public Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    if (userId != null) {
      localHashMap.put("user_id", userId);
    }
    localHashMap.putAll(super.a());
    return localHashMap;
  }
  
  public boolean equals(Object paramObject)
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
      paramObject = (lt)paramObject;
      if (userId == null) {
        break;
      }
    } while (userId.equals(userId));
    for (;;)
    {
      return false;
      if (userId == null) {
        break;
      }
    }
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    if (userId != null) {}
    for (int i = userId.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     lt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */