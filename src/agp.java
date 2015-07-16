import com.snapchat.android.fragments.cash.CashSettingsFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class agp
  implements bvk<CashSettingsFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<qx> c;
  
  static
  {
    if (!agp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agp(bvk<SnapchatFragment> parambvk, Provider<qx> paramProvider)
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
  
  public static bvk<CashSettingsFragment> a(bvk<SnapchatFragment> parambvk, Provider<qx> paramProvider)
  {
    return new agp(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */