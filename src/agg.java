import com.snapchat.android.model.Friend;
import java.util.Set;

public final class agg
  extends age
{
  private auv a;
  private Set<String> b;
  
  public agg(Set<String> paramSet, auv paramauv)
  {
    a = paramauv;
    b = paramSet;
  }
  
  public final String a(@chc Friend paramFriend)
  {
    if (paramFriend.n()) {
      return paramFriend.a();
    }
    return paramFriend.l();
  }
  
  public final String a(@chc Friend paramFriend, boolean paramBoolean)
  {
    paramBoolean = b.contains(paramFriend.l());
    if ((paramFriend.n()) && (paramBoolean)) {
      return paramFriend.l() + " - " + auv.a(2131492911, new Object[0]);
    }
    if (paramFriend.n()) {
      return paramFriend.l();
    }
    if (paramBoolean) {
      return auv.a(2131492911, new Object[0]);
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     agg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */