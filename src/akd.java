import com.snapchat.android.model.chat.ChatConversation;
import javax.inject.Provider;

public final class akd
  implements buj<ChatConversation>
{
  private final Provider<ato> mGsonWrapperProvider;
  private final Provider<ya> mSendingCashManagerProvider;
  private final Provider<ayg> mSlightlySecurePreferencesProvider;
  
  static
  {
    if (!akd.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private akd(Provider<ayg> paramProvider, Provider<ya> paramProvider1, Provider<ato> paramProvider2)
  {
    assert (paramProvider != null);
    mSlightlySecurePreferencesProvider = paramProvider;
    assert (paramProvider1 != null);
    mSendingCashManagerProvider = paramProvider1;
    assert (paramProvider2 != null);
    mGsonWrapperProvider = paramProvider2;
  }
  
  public static buj<ChatConversation> a(Provider<ayg> paramProvider, Provider<ya> paramProvider1, Provider<ato> paramProvider2)
  {
    return new akd(paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     akd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */