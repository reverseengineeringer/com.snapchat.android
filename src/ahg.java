import com.snapchat.android.fragments.sendto.SendToFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class ahg
  implements bvk<SendToFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<aas> c;
  
  static
  {
    if (!ahg.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahg(bvk<SnapchatFragment> parambvk, Provider<aas> paramProvider)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static bvk<SendToFragment> a(bvk<SnapchatFragment> parambvk, Provider<aas> paramProvider)
  {
    return new ahg(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ahg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */