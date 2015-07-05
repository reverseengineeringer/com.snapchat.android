import java.util.HashMap;
import java.util.Map;

public final class km
  extends lt
{
  private final String eventName = "REGISTRATION_USER_FOCUS_ON_USERNAME";
  public String usernameSuggestion;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_FOCUS_ON_USERNAME");
    if (usernameSuggestion != null) {
      localHashMap.put("username_suggestion", usernameSuggestion);
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
      paramObject = (km)paramObject;
      if (usernameSuggestion == null) {
        break;
      }
    } while (usernameSuggestion.equals(usernameSuggestion));
    for (;;)
    {
      return false;
      if (usernameSuggestion == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (usernameSuggestion != null) {}
    for (int i = usernameSuggestion.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     km
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */