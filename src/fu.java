import java.util.HashMap;
import java.util.Map;

public final class fu
  extends lt
{
  private final String eventName = "APP_SESSION_START";
  public Long sessionSeqNum;
  public Long sinceLastSessionSec;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "APP_SESSION_START");
    if (sessionSeqNum != null) {
      localHashMap.put("session_seq_num", sessionSeqNum);
    }
    if (sinceLastSessionSec != null) {
      localHashMap.put("since_last_session_sec", sinceLastSessionSec);
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
      paramObject = (fu)paramObject;
      if (sessionSeqNum != null)
      {
        if (sessionSeqNum.equals(sessionSeqNum)) {}
      }
      else {
        while (sessionSeqNum != null) {
          return false;
        }
      }
      if (sinceLastSessionSec == null) {
        break;
      }
    } while (sinceLastSessionSec.equals(sinceLastSessionSec));
    for (;;)
    {
      return false;
      if (sinceLastSessionSec == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    if (sessionSeqNum != null) {}
    for (int i = sessionSeqNum.hashCode();; i = 0)
    {
      if (sinceLastSessionSec != null) {
        j = sinceLastSessionSec.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
}

/* Location:
 * Qualified Name:     fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */