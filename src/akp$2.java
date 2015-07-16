import com.snapchat.android.model.Friend;
import java.util.Comparator;
import java.util.HashMap;

final class akp$2
  implements Comparator<Friend>
{
  akp$2(akp paramakp, HashMap paramHashMap) {}
  
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
 * Qualified Name:     akp.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */