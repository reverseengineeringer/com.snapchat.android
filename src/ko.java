import java.util.HashMap;
import java.util.Map;

public final class ko
  extends lt
{
  private String additionalInfo;
  public Boolean editBirthdayDay;
  public Boolean editBirthdayMonth;
  public Boolean editBirthdayYear;
  private final String eventName = "REGISTRATION_USER_INITIAL_INFO_SUCCESS";
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_INITIAL_INFO_SUCCESS");
    if (additionalInfo != null) {
      localHashMap.put("additional_info", additionalInfo);
    }
    if (editBirthdayDay != null) {
      localHashMap.put("edit_birthday_day", editBirthdayDay);
    }
    if (editBirthdayMonth != null) {
      localHashMap.put("edit_birthday_month", editBirthdayMonth);
    }
    if (editBirthdayYear != null) {
      localHashMap.put("edit_birthday_year", editBirthdayYear);
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
      paramObject = (ko)paramObject;
      if (additionalInfo != null)
      {
        if (additionalInfo.equals(additionalInfo)) {}
      }
      else {
        while (additionalInfo != null) {
          return false;
        }
      }
      if (editBirthdayDay != null)
      {
        if (editBirthdayDay.equals(editBirthdayDay)) {}
      }
      else {
        while (editBirthdayDay != null) {
          return false;
        }
      }
      if (editBirthdayMonth != null)
      {
        if (editBirthdayMonth.equals(editBirthdayMonth)) {}
      }
      else {
        while (editBirthdayMonth != null) {
          return false;
        }
      }
      if (editBirthdayYear == null) {
        break;
      }
    } while (editBirthdayYear.equals(editBirthdayYear));
    for (;;)
    {
      return false;
      if (editBirthdayYear == null) {
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
    if (additionalInfo != null)
    {
      i = additionalInfo.hashCode();
      if (editBirthdayDay == null) {
        break label99;
      }
      j = editBirthdayDay.hashCode();
      label39:
      if (editBirthdayMonth == null) {
        break label104;
      }
    }
    label99:
    label104:
    for (int k = editBirthdayMonth.hashCode();; k = 0)
    {
      if (editBirthdayYear != null) {
        m = editBirthdayYear.hashCode();
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
 * Qualified Name:     ko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */