import com.snapchat.android.fragments.cash.TransactionHistoryFragment;
import com.snapchat.android.fragments.settings.WebFragment;
import javax.inject.Provider;

public final class afq
  implements buj<TransactionHistoryFragment>
{
  private final buj<WebFragment> b;
  private final Provider<xn> c;
  
  static
  {
    if (!afq.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private afq(buj<WebFragment> parambuj, Provider<xn> paramProvider)
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
  
  public static buj<TransactionHistoryFragment> a(buj<WebFragment> parambuj, Provider<xn> paramProvider)
  {
    return new afq(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     afq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */