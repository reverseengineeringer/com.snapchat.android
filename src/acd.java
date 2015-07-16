import com.snapchat.android.database.table.FriendTable;
import com.snapchat.android.model.Friend;
import java.util.Collection;

public final class acd
  extends FriendTable
{
  private static acd a;
  
  public static acd a()
  {
    try
    {
      if (a == null) {
        a = new acd();
      }
      acd localacd = a;
      return localacd;
    }
    finally {}
  }
  
  protected final Collection<Friend> a(akp paramakp)
  {
    return paramakp.s();
  }
  
  public final void b(akp paramakp)
  {
    paramakp.b(a(null, g()));
  }
  
  public final String c()
  {
    return "SuggestedFriendsTable";
  }
}

/* Location:
 * Qualified Name:     acd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */