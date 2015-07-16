import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.AddSourceType;
import com.snapchat.android.model.Friend.Direction;
import javax.inject.Provider;

public final class agk
  extends age
{
  private final Provider<akp> a;
  private akp b;
  private final boolean c;
  
  private agk(Provider<akp> paramProvider, boolean paramBoolean)
  {
    a = paramProvider;
    c = paramBoolean;
  }
  
  public agk(boolean paramBoolean)
  {
    this(akp.UNSAFE_USER_PROVIDER, paramBoolean);
  }
  
  private String c(@chc Friend paramFriend)
  {
    if (b == null) {
      b = ((akp)a.get());
    }
    if ((b != null) && (b.b(paramFriend))) {}
    for (int i = 1; i != 0; i = 0) {
      return auv.a(null, 2131493201, new Object[0]);
    }
    if (mAddSourceType == Friend.AddSourceType.ADDED_BY_QR_CODE) {
      return auv.a(null, 2131492913, new Object[0]);
    }
    if (mAddSourceType == Friend.AddSourceType.ADDED_BY_PHONE) {
      return auv.a(null, 2131492912, new Object[0]);
    }
    if (mAddSourceType == Friend.AddSourceType.ADDED_BY_USERNAME) {
      return auv.a(null, 2131492914, new Object[0]);
    }
    return null;
  }
  
  public final String a(@chc Friend paramFriend, boolean paramBoolean)
  {
    if ((c) || (mDirection == Friend.Direction.INCOMING))
    {
      String str = mAddSource;
      if (!TextUtils.isEmpty(str)) {
        return str;
      }
      if (paramFriend.n())
      {
        str = c(paramFriend);
        if (!TextUtils.isEmpty(str)) {
          return auv.a(null, 2131493360, new Object[] { str, paramFriend.l() });
        }
        return paramFriend.l();
      }
      return c(paramFriend);
    }
    if (paramFriend.i()) {
      return b(paramFriend);
    }
    return super.a(paramFriend, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     agk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */