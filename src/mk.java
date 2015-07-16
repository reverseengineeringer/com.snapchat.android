import java.util.HashMap;
import java.util.Map;

public class mk
  extends ht
{
  public Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
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
    } while (super.equals(paramObject));
    return false;
  }
  
  public int hashCode()
  {
    return super.hashCode();
  }
}

/* Location:
 * Qualified Name:     mk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */