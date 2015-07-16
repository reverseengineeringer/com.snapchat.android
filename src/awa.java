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

public final class awa
{
  private static final awa INSTANCE = new awa();
  private static final int MAX_VISIBLE_SUGGESTED_FRIEND_NUM = 30;
  
  public static awa a()
  {
    return INSTANCE;
  }
  
  public static ArrayList<Friend> a(@NotNull akp paramakp, FriendSectionizer.FriendSection paramFriendSection)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(paramakp.o());
    localHashSet.addAll(paramakp.q());
    localHashSet.addAll(paramakp.r());
    paramakp = paramakp.s().iterator();
    do
    {
      Friend localFriend;
      do
      {
        if (!paramakp.hasNext()) {
          break;
        }
        localFriend = (Friend)paramakp.next();
      } while (localHashSet.contains(localFriend));
      mFriendSection = paramFriendSection;
      localArrayList.add(localFriend);
    } while (localArrayList.size() < 30);
    return localArrayList;
  }
  
  public static void a(blq paramblq, @NotNull akp paramakp)
  {
    if (!paramblq.b()) {
      return;
    }
    paramblq = paramblq.a();
    akr.a();
    long l = System.currentTimeMillis();
    Object localObject = akr.bq();
    while (((List)localObject).size() > 10) {
      ((List)localObject).remove(((List)localObject).size() - 1);
    }
    ((List)localObject).add(0, Long.valueOf(l));
    akr.b().putString(SharedPreferenceKey.IDENTITY_SUGGESTED_FRIEND_FIND_TIMESTAMPS.getKey(), avz.a((Collection)localObject, "~")).apply();
    localObject = new ArrayList();
    paramblq = paramblq.iterator();
    while (paramblq.hasNext()) {
      ((List)localObject).add(new Friend((blo)paramblq.next()));
    }
    paramakp.b((List)localObject);
  }
  
  public static boolean a(akp paramakp, akr paramakr)
  {
    if ((paramakp == null) || (paramakr == null) || (paramakp.s().size() == 0) || (akr.bq() == null) || (akr.bq().size() == 0)) {
      return true;
    }
    paramakp = (Long)akr.bq().get(0);
    return Long.valueOf(System.currentTimeMillis()).longValue() - paramakp.longValue() > akr.br() * 3600000L;
  }
}

/* Location:
 * Qualified Name:     awa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */