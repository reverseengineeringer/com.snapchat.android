import java.util.HashMap;
import java.util.Map;

public final class lb
  extends lt
{
  private String additionalInfo;
  private final String eventName = "REGISTRATION_USER_USERNAME_SUCCESS";
  public String username;
  public Long usernameIndexPos;
  public String usernameSuggestion;
  public lu usernameType;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_USERNAME_SUCCESS");
    if (additionalInfo != null) {
      localHashMap.put("additional_info", additionalInfo);
    }
    if (username != null) {
      localHashMap.put("username", username);
    }
    if (usernameIndexPos != null) {
      localHashMap.put("username_index_pos", usernameIndexPos);
    }
    if (usernameSuggestion != null) {
      localHashMap.put("username_suggestion", usernameSuggestion);
    }
    if (usernameType != null) {
      localHashMap.put("username_type", usernameType);
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
      if (additionalInfo != null)
      {
        if (additionalInfo.equals(additionalInfo)) {}
      }
      else {
        while (additionalInfo != null) {
          return false;
        }
      }
      if (username != null)
      {
        if (username.equals(username)) {}
      }
      else {
        while (username != null) {
          return false;
        }
      }
      if (usernameIndexPos != null)
      {
        if (usernameIndexPos.equals(usernameIndexPos)) {}
      }
      else {
        while (usernameIndexPos != null) {
          return false;
        }
      }
      if (usernameSuggestion != null)
      {
        if (usernameSuggestion.equals(usernameSuggestion)) {}
      }
      else {
        while (usernameSuggestion != null) {
          return false;
        }
      }
      if (usernameType == null) {
        break;
      }
    } while (usernameType.equals(usernameType));
    for (;;)
    {
      return false;
      if (usernameType == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int n = 0;
    int i1 = super.hashCode();
    int i;
    int j;
    label39:
    int k;
    if (additionalInfo != null)
    {
      i = additionalInfo.hashCode();
      if (username == null) {
        break label121;
      }
      j = username.hashCode();
      if (usernameIndexPos == null) {
        break label126;
      }
      k = usernameIndexPos.hashCode();
      label54:
      if (usernameSuggestion == null) {
        break label131;
      }
    }
    label121:
    label126:
    label131:
    for (int m = usernameSuggestion.hashCode();; m = 0)
    {
      if (usernameType != null) {
        n = usernameType.hashCode();
      }
      return (m + (k + (j + (i + i1 * 31) * 31) * 31) * 31) * 31 + n;
      i = 0;
      break;
      j = 0;
      break label39;
      k = 0;
      break label54;
    }
  }
}

/* Location:
 * Qualified Name:     lb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */