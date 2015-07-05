import com.snapchat.android.Timber;
import com.snapchat.android.model.Friend;

public final class afa$c
{
  Friend a;
  Friend b;
  boolean c;
  boolean d;
  
  public final boolean a(@cgb Friend paramFriend)
  {
    return paramFriend.equals(a);
  }
  
  public final void b(Friend paramFriend)
  {
    Timber.c("AddFriendsAdapter", "select " + paramFriend.h(), new Object[0]);
    b = a;
    if (a(paramFriend)) {}
    for (a = null;; a = paramFriend)
    {
      c = true;
      d = true;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     afa.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */