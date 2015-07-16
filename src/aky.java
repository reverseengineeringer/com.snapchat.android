import com.snapchat.android.model.chat.ChatConversation;
import javax.inject.Provider;

public final class aky
  implements bvk<ChatConversation>
{
  private final Provider<aum> mGsonWrapperProvider;
  private final Provider<yw> mSendingCashManagerProvider;
  private final Provider<aze> mSlightlySecurePreferencesProvider;
  
  static
  {
    if (!aky.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private aky(Provider<aze> paramProvider, Provider<yw> paramProvider1, Provider<aum> paramProvider2)
  {
    assert (paramProvider != null);
    mSlightlySecurePreferencesProvider = paramProvider;
    assert (paramProvider1 != null);
    mSendingCashManagerProvider = paramProvider1;
    assert (paramProvider2 != null);
    mGsonWrapperProvider = paramProvider2;
  }
  
  public static bvk<ChatConversation> a(Provider<aze> paramProvider, Provider<yw> paramProvider1, Provider<aum> paramProvider2)
  {
    return new aky(paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     aky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */