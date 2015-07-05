import java.util.HashMap;
import java.util.Map;

public final class kn
  extends lt
{
  private final String eventName = "REGISTRATION_USER_INITIAL_INFO_FAIL";
  public jw registrationError;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_INITIAL_INFO_FAIL");
    if (registrationError != null) {
      localHashMap.put("registration_error", registrationError);
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
      paramObject = (kn)paramObject;
      if (registrationError == null) {
        break;
      }
    } while (registrationError.equals(registrationError));
    for (;;)
    {
      return false;
      if (registrationError == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (registrationError != null) {}
    for (int i = registrationError.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     kn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */