import com.snapchat.android.fragments.sendto.SendToFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class agj
  implements buj<SendToFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<zs> c;
  
  static
  {
    if (!agj.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agj(buj<SnapchatFragment> parambuj, Provider<zs> paramProvider)
  {
    if ((!a) && (parambuj == null)) {
      throw new AssertionError();
    }
    b = parambuj;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static buj<SendToFragment> a(buj<SnapchatFragment> parambuj, Provider<zs> paramProvider)
  {
    return new agj(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */