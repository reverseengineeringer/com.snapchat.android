import com.snapchat.android.database.table.FriendTable;
import com.snapchat.android.model.Friend;
import java.util.Collection;

public final class aal
  extends FriendTable
{
  private static aal a = new aal();
  
  public static aal a()
  {
    return a;
  }
  
  protected final Collection<Friend> a(ajv paramajv)
  {
    return paramajv.q();
  }
  
  public final void b(ajv paramajv)
  {
    paramajv.a(a(null, g()));
  }
  
  public final String c()
  {
    return "FriendsWhoAddedMe";
  }
}

/* Location:
 * Qualified Name:     aal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */