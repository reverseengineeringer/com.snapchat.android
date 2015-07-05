import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.AddSourceType;
import com.snapchat.android.model.Friend.Direction;
import javax.inject.Provider;

public final class afk
  extends afe
{
  private final Provider<ajv> a;
  private ajv b;
  private final boolean c;
  
  private afk(Provider<ajv> paramProvider, boolean paramBoolean)
  {
    a = paramProvider;
    c = paramBoolean;
  }
  
  public afk(boolean paramBoolean)
  {
    this(ajv.UNSAFE_USER_PROVIDER, paramBoolean);
  }
  
  private String c(@cgb Friend paramFriend)
  {
    if (b == null) {
      b = ((ajv)a.get());
    }
    if ((b != null) && (b.b(paramFriend))) {}
    for (int i = 1; i != 0; i = 0) {
      return atx.a(null, 2131493201, new Object[0]);
    }
    if (mAddSourceType == Friend.AddSourceType.ADDED_BY_QR_CODE) {
      return atx.a(null, 2131492913, new Object[0]);
    }
    if (mAddSourceType == Friend.AddSourceType.ADDED_BY_PHONE) {
      return atx.a(null, 2131492912, new Object[0]);
    }
    if (mAddSourceType == Friend.AddSourceType.ADDED_BY_USERNAME) {
      return atx.a(null, 2131492914, new Object[0]);
    }
    return null;
  }
  
  public final String a(@cgb Friend paramFriend, boolean paramBoolean)
  {
    if ((c) || (mDirection == Friend.Direction.INCOMING))
    {
      String str = mAddSource;
      if (!TextUtils.isEmpty(str)) {
        return str;
      }
      if (paramFriend.j())
      {
        str = c(paramFriend);
        if (!TextUtils.isEmpty(str)) {
          return atx.a(null, 2131493360, new Object[] { str, paramFriend.h() });
        }
        return paramFriend.h();
      }
      return c(paramFriend);
    }
    if (paramFriend.n()) {
      return b(paramFriend);
    }
    return super.a(paramFriend, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     afk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */