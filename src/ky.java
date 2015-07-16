import java.util.HashMap;
import java.util.Map;

public final class ky
  extends ml
{
  public Boolean dialogAction;
  private final String eventName = "REGISTRATION_USER_CONTACT_SKIP_DIALOG";
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_CONTACT_SKIP_DIALOG");
    if (dialogAction != null) {
      localHashMap.put("dialog_action", dialogAction);
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
      paramObject = (ky)paramObject;
      if (dialogAction == null) {
        break;
      }
    } while (dialogAction.equals(dialogAction));
    for (;;)
    {
      return false;
      if (dialogAction == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (dialogAction != null) {}
    for (int i = dialogAction.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
}

/* Location:
 * Qualified Name:     ky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */