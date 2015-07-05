import com.snapchat.android.model.Friend;
import java.util.HashMap;

public final class afn
  extends afe
{
  public final String a(@cgb Friend paramFriend, boolean paramBoolean)
  {
    if (!paramBoolean) {
      return "";
    }
    switch (afn.1.a[mDirection.ordinal()])
    {
    default: 
      if (paramFriend.n()) {
        return b(paramFriend);
      }
      break;
    case 1: 
    case 2: 
      if (paramFriend.j()) {
        return atx.a(null, 2131492876, new Object[] { paramFriend.h() });
      }
      return atx.a(null, 2131492875, new Object[0]);
    case 3: 
      Object localObject = (ait)ait.sUsernamesToProfileInfo.get(paramFriend.h());
      if (localObject != null)
      {
        localObject = aua.b(mScore);
        if (paramFriend.j()) {
          return atx.a(null, 2131493586, new Object[] { paramFriend.h(), localObject });
        }
        return atx.a(null, 2131492928, new Object[] { localObject });
      }
      if (paramFriend.j()) {
        return paramFriend.h();
      }
      return atx.a(null, 2131493213, new Object[0]);
    }
    return super.a(paramFriend, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     afn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */