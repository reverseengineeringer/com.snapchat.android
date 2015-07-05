import com.snapchat.android.database.table.FriendTable;
import com.snapchat.android.model.Friend;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public final class aac
  extends FriendTable
{
  private static aac a;
  
  public static aac a()
  {
    try
    {
      if (a == null) {
        a = new aac();
      }
      aac localaac = a;
      return localaac;
    }
    finally {}
  }
  
  protected final Collection<Friend> a(ajv paramajv)
  {
    return paramajv.n();
  }
  
  public final void b(ajv paramajv)
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
 * Qualified Name:     aac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */