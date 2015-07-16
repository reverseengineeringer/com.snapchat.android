import com.snapchat.android.database.ClientProperty;
import com.snapchat.android.database.SharedPreferenceKey;
import java.util.HashMap;

final class aao$1
  extends HashMap<String, String>
{
  aao$1()
  {
    put(SharedPreferenceKey.HAS_ACCEPTED_SQUARE_TOS.getKey(), ClientProperty.SQUARE_TOS_ACCEPTED.name());
    put(SharedPreferenceKey.HAS_ACCEPTED_SNAPCASH_TOS.getKey(), ClientProperty.SNAPCASH_NEW_TOS_ACCEPTED.name());
  }
}

/* Location:
 * Qualified Name:     aao.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */