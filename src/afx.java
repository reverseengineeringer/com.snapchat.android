import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class afx
  implements buj<ChatFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<xu> c;
  private final Provider<ya> d;
  private final Provider<xx> e;
  
  static
  {
    if (!afx.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private afx(buj<SnapchatFragment> parambuj, Provider<xu> paramProvider, Provider<ya> paramProvider1, Provider<xx> paramProvider2)
  {
    if ((!a) && (parambuj == null)) {
      throw new AssertionError();
    }
    b = parambuj;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    d = paramProvider1;
    if ((!a) && (paramProvider2 == null)) {
      throw new AssertionError();
    }
    e = paramProvider2;
  }
  
  public static buj<ChatFragment> a(buj<SnapchatFragment> parambuj, Provider<xu> paramProvider, Provider<ya> paramProvider1, Provider<xx> paramProvider2)
  {
    return new afx(parambuj, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     afx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */