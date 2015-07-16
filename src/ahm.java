import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class ahm
  implements bvk<WebFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<aum> c;
  
  static
  {
    if (!ahm.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahm(bvk<SnapchatFragment> parambvk, Provider<aum> paramProvider)
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
  
  public static bvk<WebFragment> a(bvk<SnapchatFragment> parambvk, Provider<aum> paramProvider)
  {
    return new ahm(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ahm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */