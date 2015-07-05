import java.util.HashMap;
import java.util.Map;

public final class ks
  extends lt
{
  public Boolean autofill;
  private final String eventName = "REGISTRATION_USER_PHONE_ATTEMPT_WITH_CODE";
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_PHONE_ATTEMPT_WITH_CODE");
    if (autofill != null) {
      localHashMap.put("autofill", autofill);
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
      paramObject = (ks)paramObject;
      if (autofill == null) {
        break;
      }
    } while (autofill.equals(autofill));
    for (;;)
    {
      return false;
      if (autofill == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (autofill != null) {}
    for (int i = autofill.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     ks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */