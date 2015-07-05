import android.widget.EditText;
import com.snapchat.android.ui.cash.CardNumberEditText;
import javax.inject.Provider;

public final class apt
  implements buj<CardNumberEditText>
{
  private final buj<EditText> b;
  private final Provider<atb> c;
  
  static
  {
    if (!apt.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private apt(buj<EditText> parambuj, Provider<atb> paramProvider)
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
  
  public static buj<CardNumberEditText> a(buj<EditText> parambuj, Provider<atb> paramProvider)
  {
    return new apt(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     apt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */