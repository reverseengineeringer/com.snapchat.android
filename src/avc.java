import android.content.SharedPreferences.Editor;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.validation.constraints.NotNull;

public final class avc
{
  private static final avc INSTANCE = new avc();
  
  public static avc a()
  {
    return INSTANCE;
  }
  
  public static ArrayList<Friend> a(@NotNull ajv paramajv, FriendSectionizer.FriendSection paramFriendSection)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(paramajv.o());
    localHashSet.addAll(paramajv.q());
    localHashSet.addAll(paramajv.r());
    paramajv = paramajv.s().iterator();
    while (paramajv.hasNext())
    {
      Friend localFriend = (Friend)paramajv.next();
      if (!localHashSet.contains(localFriend))
      {
        mFriendSection = paramFriendSection;
        localArrayList.add(localFriend);
      }
    }
    return localArrayList;
  }
  
  public static void a(bkp parambkp, @NotNull ajv paramajv)
  {
    if (!parambkp.b()) {
      return;
    }
    parambkp = parambkp.a();
    ajx.a();
    long l = System.currentTimeMillis();
    Object localObject = ajx.bt();
    while (((List)localObject).size() > 10) {
      ((List)localObject).remove(((List)localObject).size() - 1);
    }
    ((List)localObject).add(0, Long.valueOf(l));
    ajx.b().putString(SharedPreferenceKey.IDENTITY_SUGGESTED_FRIEND_FIND_TIMESTAMPS.getKey(), avb.a((Collection)localObject, "~")).apply();
    localObject = new ArrayList();
    parambkp = parambkp.iterator();
    while (parambkp.hasNext()) {
      ((List)localObject).add(new Friend((bkn)parambkp.next()));
    }
    paramajv.b((List)localObject);
  }
  
  public static boolean a(ajv paramajv, ajx paramajx)
  {
    if ((paramajv == null) || (paramajx == null) || (paramajv.s().size() == 0) || (ajx.bt() == null) || (ajx.bt().size() == 0)) {
      return true;
    }
    paramajv = (Long)ajx.bt().get(0);
    return Long.valueOf(System.currentTimeMillis()).longValue() - paramajv.longValue() > ajx.bu() * 3600000L;
  }
}

/* Location:
 * Qualified Name:     avc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */