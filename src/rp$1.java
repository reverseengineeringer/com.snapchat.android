import com.snapchat.android.Timber;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.fragments.cash.SecurityCodeFragment.a;
import com.snapchat.android.model.CashTransaction;

final class rp$1
  implements SecurityCodeFragment.a
{
  rp$1(rp paramrp, CashTransaction paramCashTransaction, SecurityCodeFragment paramSecurityCodeFragment) {}
  
  public final void a()
  {
    Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment CANCELED", new Object[0]);
    rp.b(this$0);
  }
  
  public final void a(@cgb String paramString)
  {
    Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker ENTERED security code", new Object[0]);
    val$transaction.mSecurityCode = paramString;
    val$fragment.l();
    rp.a(this$0);
  }
  
  public final void b()
  {
    Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment FAILED", new Object[0]);
    rp.c(this$0);
  }
}

/* Location:
 * Qualified Name:     rp.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */