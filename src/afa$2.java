import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;
import java.util.List;
import java.util.Set;

final class afa$2
  extends pp
{
  afa$2(afa paramafa, FriendAction paramFriendAction1, Friend paramFriend1, String paramString1, String paramString2, String paramString3, boolean paramBoolean, FriendAction.BlockReason paramBlockReason, FriendAction paramFriendAction2, Friend paramFriend2, aff paramaff)
  {
    super(paramFriendAction1, paramFriend1, paramString1, paramString2, paramString3, paramBoolean, null, paramBlockReason);
  }
  
  @ccm
  protected final void a(bkh parambkh, @cgc ajv paramajv)
  {
    super.a(parambkh, paramajv);
    c.a(new Runnable()
    {
      public final void run()
      {
        switch (afa.3.a[a.ordinal()])
        {
        }
        for (;;)
        {
          d.notifyDataSetChanged();
          return;
          afa.c(d).remove(b);
        }
      }
    });
  }
  
  @ccm
  public final void a(@cgc bkh parambkh, @cgb uc paramuc)
  {
    super.a(parambkh, paramuc);
    switch (afa.3.a[a.ordinal()])
    {
    default: 
      return;
    case 4: 
      afa.a(d).remove(b);
      c.a(b);
      return;
    }
    afa.b(d).remove(b);
    c.c(b);
  }
  
  public final void f()
  {
    switch (afa.3.a[a.ordinal()])
    {
    }
    for (;;)
    {
      super.f();
      return;
      afa.a(d).add(b);
      c.a(b);
      continue;
      afa.b(d).add(b);
      c.c(b);
    }
  }
}

/* Location:
 * Qualified Name:     afa.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */