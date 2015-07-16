import com.snapchat.android.model.Friend;
import java.util.HashMap;

public final class agn
  extends age
{
  public final String a(@chc Friend paramFriend, boolean paramBoolean)
  {
    if (!paramBoolean) {
      return "";
    }
    switch (agn.1.a[mDirection.ordinal()])
    {
    default: 
      if (paramFriend.i()) {
        return b(paramFriend);
      }
      break;
    case 1: 
    case 2: 
      if (paramFriend.n()) {
        return auv.a(null, 2131492876, new Object[] { paramFriend.l() });
      }
      return auv.a(null, 2131492875, new Object[0]);
    case 3: 
      Object localObject = (ajp)ajp.sUsernamesToProfileInfo.get(paramFriend.l());
      if (localObject != null)
      {
        localObject = auy.b(mScore);
        if (paramFriend.n()) {
          return auv.a(null, 2131493584, new Object[] { paramFriend.l(), localObject });
        }
        return auv.a(null, 2131492928, new Object[] { localObject });
      }
      if (paramFriend.n()) {
        return paramFriend.l();
      }
      return auv.a(null, 2131493213, new Object[0]);
    }
    return super.a(paramFriend, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     agn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */