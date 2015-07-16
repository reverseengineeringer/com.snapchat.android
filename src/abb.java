import com.snapchat.android.database.table.FriendTable;
import com.snapchat.android.model.Friend;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public final class abb
  extends FriendTable
{
  private static abb a;
  
  public static abb a()
  {
    try
    {
      if (a == null) {
        a = new abb();
      }
      abb localabb = a;
      return localabb;
    }
    finally {}
  }
  
  protected final Collection<Friend> a(akp paramakp)
  {
    return paramakp.n();
  }
  
  public final void b(akp paramakp)
  {
    List localList2 = a(null, g());
    synchronized (mContactsOnSnapchat)
    {
      mContactsOnSnapchat.clear();
      mContactsOnSnapchat.addAll(localList2);
      mContactsOnSnapchatSet.clear();
      mContactsOnSnapchatSet.addAll(mContactsOnSnapchat);
      return;
    }
  }
  
  public final String c()
  {
    return "ContactsOnSnapchatTable";
  }
}

/* Location:
 * Qualified Name:     abb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */