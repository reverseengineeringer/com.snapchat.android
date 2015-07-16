import com.snapchat.android.fragments.cash.TransactionHistoryFragment;
import com.snapchat.android.fragments.settings.WebFragment;
import javax.inject.Provider;

public final class agq
  implements bvk<TransactionHistoryFragment>
{
  private final bvk<WebFragment> b;
  private final Provider<yj> c;
  
  static
  {
    if (!agq.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agq(bvk<WebFragment> parambvk, Provider<yj> paramProvider)
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
  
  public static bvk<TransactionHistoryFragment> a(bvk<WebFragment> parambvk, Provider<yj> paramProvider)
  {
    return new agq(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */