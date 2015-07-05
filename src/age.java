import com.snapchat.android.model.chat.ChatConversation;
import javax.inject.Provider;

public final class age
  implements buj<agd>
{
  private final buj<apf<ChatConversation>> b;
  private final Provider<azo> c;
  
  static
  {
    if (!age.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private age(buj<apf<ChatConversation>> parambuj, Provider<azo> paramProvider)
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
  
  public static buj<agd> a(buj<apf<ChatConversation>> parambuj, Provider<azo> paramProvider)
  {
    return new age(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     age
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */