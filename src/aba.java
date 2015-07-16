import com.snapchat.android.database.table.FriendTable;
import com.snapchat.android.model.Friend;
import java.util.Collection;
import java.util.List;

public final class aba
  extends FriendTable
{
  private static aba a;
  
  public static aba a()
  {
    try
    {
      if (a == null) {
        a = new aba();
      }
      aba localaba = a;
      return localaba;
    }
    finally {}
  }
  
  protected final Collection<Friend> a(akp paramakp)
  {
    return paramakp.m();
  }
  
  public final void b(akp paramakp)
  {
    List localList2 = a(null, g());
    synchronized (mContactsNotOnSnapchat)
    {
      mContactsNotOnSnapchat.clear();
      mContactsNotOnSnapchat.addAll(localList2);
      return;
    }
  }
  
  public final String c()
  {
    return "ContactsNotOnSnapchatTable";
  }
}

/* Location:
 * Qualified Name:     aba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */