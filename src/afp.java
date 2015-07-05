import com.snapchat.android.fragments.cash.CashSettingsFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class afp
  implements buj<CashSettingsFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<qh> c;
  
  static
  {
    if (!afp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private afp(buj<SnapchatFragment> parambuj, Provider<qh> paramProvider)
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
  
  public static buj<CashSettingsFragment> a(buj<SnapchatFragment> parambuj, Provider<qh> paramProvider)
  {
    return new afp(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     afp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */