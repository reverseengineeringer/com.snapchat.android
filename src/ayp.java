import com.snapchat.android.util.chat.SecureChatSession;
import javax.inject.Provider;

public final class ayp
  implements bvk<SecureChatSession>
{
  private final Provider<aum> mGsonProvider;
  
  static
  {
    if (!ayp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ayp(Provider<aum> paramProvider)
  {
    assert (paramProvider != null);
    mGsonProvider = paramProvider;
  }
  
  public static bvk<SecureChatSession> a(Provider<aum> paramProvider)
  {
    return new ayp(paramProvider);
  }
}

/* Location:
 * Qualified Name:     ayp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */