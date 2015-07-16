import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class agx
  implements bvk<ChatFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<yq> c;
  private final Provider<yw> d;
  private final Provider<yt> e;
  
  static
  {
    if (!agx.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agx(bvk<SnapchatFragment> parambvk, Provider<yq> paramProvider, Provider<yw> paramProvider1, Provider<yt> paramProvider2)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
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
  
  public static bvk<ChatFragment> a(bvk<SnapchatFragment> parambvk, Provider<yq> paramProvider, Provider<yw> paramProvider1, Provider<yt> paramProvider2)
  {
    return new agx(parambvk, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     agx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */