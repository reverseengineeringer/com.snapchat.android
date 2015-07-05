import com.snapchat.android.database.table.FriendTable;
import com.snapchat.android.model.Friend;
import java.util.Collection;
import java.util.List;

public final class aab
  extends FriendTable
{
  private static aab a;
  
  public static aab a()
  {
    try
    {
      if (a == null) {
        a = new aab();
      }
      aab localaab = a;
      return localaab;
    }
    finally {}
  }
  
  protected final Collection<Friend> a(ajv paramajv)
  {
    return paramajv.m();
  }
  
  public final void b(ajv paramajv)
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
 * Qualified Name:     aab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */