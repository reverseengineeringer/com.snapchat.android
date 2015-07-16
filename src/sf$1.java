import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.fragments.cash.SecurityCodeFragment.a;
import com.snapchat.android.model.CashTransaction;

final class sf$1
  implements SecurityCodeFragment.a
{
  sf$1(sf paramsf, CashTransaction paramCashTransaction, SecurityCodeFragment paramSecurityCodeFragment) {}
  
  public final void a()
  {
    sf.b(this$0);
  }
  
  public final void a(@chc String paramString)
  {
    val$transaction.mSecurityCode = paramString;
    val$fragment.l();
    sf.a(this$0);
  }
  
  public final void b()
  {
    sf.c(this$0);
  }
}

/* Location:
 * Qualified Name:     sf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */