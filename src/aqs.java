import android.widget.EditText;
import com.snapchat.android.ui.cash.CardNumberEditText;
import javax.inject.Provider;

public final class aqs
  implements bvk<CardNumberEditText>
{
  private final bvk<EditText> b;
  private final Provider<aua> c;
  
  static
  {
    if (!aqs.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private aqs(bvk<EditText> parambvk, Provider<aua> paramProvider)
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
  
  public static bvk<CardNumberEditText> a(bvk<EditText> parambvk, Provider<aua> paramProvider)
  {
    return new aqs(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     aqs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */