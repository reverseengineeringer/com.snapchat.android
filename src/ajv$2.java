import com.snapchat.android.model.Friend;
import java.util.Comparator;
import java.util.HashMap;

final class ajv$2
  implements Comparator<Friend>
{
  ajv$2(ajv paramajv, HashMap paramHashMap) {}
  
  private long a(Friend paramFriend)
  {
    paramFriend = (Long)val$timestamps.get(paramFriend);
    if (paramFriend == null) {
      return 0L;
    }
    return paramFriend.longValue();
  }
}

/* Location:
 * Qualified Name:     ajv.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */