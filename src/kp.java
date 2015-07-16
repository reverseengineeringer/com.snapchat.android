import java.util.HashMap;
import java.util.Map;

public final class kp
  extends ml
{
  public Long attemptCount;
  private final String eventName = "REGISTRATION_USER_CAPTCHA_FAIL";
  public Long imageCount;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "REGISTRATION_USER_CAPTCHA_FAIL");
    if (attemptCount != null) {
      localHashMap.put("attempt_count", attemptCount);
    }
    if (imageCount != null) {
      localHashMap.put("image_count", imageCount);
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
      paramObject = (kp)paramObject;
      if (attemptCount != null)
      {
        if (attemptCount.equals(attemptCount)) {}
      }
      else {
        while (attemptCount != null) {
          return false;
        }
      }
      if (imageCount == null) {
        break;
      }
    } while (imageCount.equals(imageCount));
    for (;;)
    {
      return false;
      if (imageCount == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    if (attemptCount != null) {}
    for (int i = attemptCount.hashCode();; i = 0)
    {
      if (imageCount != null) {
        j = imageCount.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
}

/* Location:
 * Qualified Name:     kp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */