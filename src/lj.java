import java.util.HashMap;
import java.util.Map;

public final class lj
  extends ml
{
  private final String eventName = "REGISTRATION_USER_PHONE_ATTEMPT_DIALOG";
  public String verificationMethod;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_PHONE_ATTEMPT_DIALOG");
    if (verificationMethod != null) {
      localHashMap.put("verification_method", verificationMethod);
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
      paramObject = (lj)paramObject;
      if (verificationMethod == null) {
        break;
      }
    } while (verificationMethod.equals(verificationMethod));
    for (;;)
    {
      return false;
      if (verificationMethod == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (verificationMethod != null) {}
    for (int i = verificationMethod.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     lj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */