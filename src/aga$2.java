import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;
import java.util.List;
import java.util.Set;

final class aga$2
  extends qg
{
  aga$2(aga paramaga, FriendAction paramFriendAction1, Friend paramFriend1, String paramString1, String paramString2, String paramString3, boolean paramBoolean, FriendAction.BlockReason paramBlockReason, FriendAction paramFriendAction2, Friend paramFriend2, agf paramagf)
  {
    super(paramFriendAction1, paramFriend1, paramString1, paramString2, paramString3, paramBoolean, null, paramBlockReason);
  }
  
  @cdn
  protected final void a(bli parambli, @chd akp paramakp)
  {
    super.a(parambli, paramakp);
    d.b(a, d.e());
    c.a(new Runnable()
    {
      public final void run()
      {
        switch (aga.3.a[a.ordinal()])
        {
        }
        for (;;)
        {
          d.notifyDataSetChanged();
          return;
          d.a.remove(b);
        }
      }
    });
  }
  
  @cdn
  public final void a(@chd bli parambli, @chc us paramus)
  {
    super.a(parambli, paramus);
    switch (aga.3.a[a.ordinal()])
    {
    default: 
      return;
    case 4: 
      aga.a(d).remove(b);
      c.a(b);
      return;
    }
    aga.b(d).remove(b);
    c.c(b);
  }
  
  public final void execute()
  {
    switch (aga.3.a[a.ordinal()])
    {
    }
    for (;;)
    {
      super.execute();
      return;
      aga.a(d).add(b);
      c.a(b);
      continue;
      aga.b(d).add(b);
      c.c(b);
    }
  }
}

/* Location:
 * Qualified Name:     aga.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */