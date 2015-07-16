import com.snapchat.android.database.table.FriendTable;
import com.snapchat.android.model.Friend;
import java.util.Collection;

public final class abk
  extends FriendTable
{
  private static abk a = new abk();
  
  public static abk a()
  {
    return a;
  }
  
  protected final Collection<Friend> a(akp paramakp)
  {
    return paramakp.q();
  }
  
  public final void b(akp paramakp)
  {
    paramakp.a(a(null, g()));
  }
  
  public final String c()
  {
    return "FriendsWhoAddedMe";
  }
}

/* Location:
 * Qualified Name:     abk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */