import com.snapchat.android.database.ClientProperty;
import com.snapchat.android.database.SharedPreferenceKey;
import java.util.HashMap;

final class zo$2
  extends HashMap<String, String>
{
  zo$2()
  {
    put(ClientProperty.SQUARE_TOS_ACCEPTED.name(), SharedPreferenceKey.HAS_ACCEPTED_SQUARE_TOS.getKey());
    put(ClientProperty.SNAPCASH_NEW_TOS_ACCEPTED.name(), SharedPreferenceKey.HAS_ACCEPTED_SNAPCASH_TOS.getKey());
  }
}

/* Location:
 * Qualified Name:     zo.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */