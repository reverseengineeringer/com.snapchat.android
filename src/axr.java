import com.snapchat.android.util.chat.SecureChatSession;
import javax.inject.Provider;

public final class axr
  implements buj<SecureChatSession>
{
  private final Provider<ato> mGsonProvider;
  
  static
  {
    if (!axr.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private axr(Provider<ato> paramProvider)
  {
    assert (paramProvider != null);
    mGsonProvider = paramProvider;
  }
  
  public static buj<SecureChatSession> a(Provider<ato> paramProvider)
  {
    return new axr(paramProvider);
  }
}

/* Location:
 * Qualified Name:     axr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */