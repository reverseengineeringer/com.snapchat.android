import java.util.HashMap;
import java.util.Map;

public final class gj
  extends ml
{
  public Double ackTimeSec;
  private final String eventName = "CHAT_CHAT_VIEW";
  public ih mediaType;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "CHAT_CHAT_VIEW");
    if (ackTimeSec != null) {
      localHashMap.put("ack_time_sec", ackTimeSec);
    }
    if (mediaType != null) {
      localHashMap.put("media_type", mediaType);
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
      paramObject = (gj)paramObject;
      if (ackTimeSec != null)
      {
        if (ackTimeSec.equals(ackTimeSec)) {}
      }
      else {
        while (ackTimeSec != null) {
          return false;
        }
      }
      if (mediaType == null) {
        break;
      }
    } while (mediaType.equals(mediaType));
    for (;;)
    {
      return false;
      if (mediaType == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    if (ackTimeSec != null) {}
    for (int i = ackTimeSec.hashCode();; i = 0)
    {
      if (mediaType != null) {
        j = mediaType.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
}

/* Location:
 * Qualified Name:     gj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */