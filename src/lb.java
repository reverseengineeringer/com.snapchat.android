import java.util.HashMap;
import java.util.Map;

public final class lb
  extends ml
{
  private String emailSuggestion;
  private final String eventName = "REGISTRATION_USER_FOCUS_ON_EMAIL";
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_FOCUS_ON_EMAIL");
    if (emailSuggestion != null) {
      localHashMap.put("email_suggestion", emailSuggestion);
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
      paramObject = (lb)paramObject;
      if (emailSuggestion == null) {
        break;
      }
    } while (emailSuggestion.equals(emailSuggestion));
    for (;;)
    {
      return false;
      if (emailSuggestion == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (emailSuggestion != null) {}
    for (int i = emailSuggestion.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     lb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */