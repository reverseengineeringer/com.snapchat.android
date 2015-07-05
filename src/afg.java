import com.snapchat.android.model.Friend;
import java.util.Set;

public final class afg
  extends afe
{
  private atx a;
  private Set<String> b;
  
  public afg(Set<String> paramSet, atx paramatx)
  {
    a = paramatx;
    b = paramSet;
  }
  
  public final String a(@cgb Friend paramFriend)
  {
    if (paramFriend.j()) {
      return paramFriend.a();
    }
    return paramFriend.h();
  }
  
  public final String a(@cgb Friend paramFriend, boolean paramBoolean)
  {
    paramBoolean = b.contains(paramFriend.h());
    if ((paramFriend.j()) && (paramBoolean)) {
      return paramFriend.h() + " - " + atx.a(2131492911, new Object[0]);
    }
    if (paramFriend.j()) {
      return paramFriend.h();
    }
    if (paramBoolean) {
      return atx.a(2131492911, new Object[0]);
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     afg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */