import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.fragments.cash.SecurityCodeFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;

public final class rp
  extends qv
{
  private static final String TAG = "SQInitiationConfirmBlocker";
  
  public final void a(@cgb final CashTransaction paramCashTransaction)
  {
    Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: ATTEMPT resolve SQInitiationConfirmBlocker transaction_id[%s] recipient[%s] amount [%s]", new Object[] { mTransactionId, mRecipientUsername, paramCashTransaction.a() });
    if (TextUtils.isEmpty(mSecurityCode))
    {
      final SecurityCodeFragment localSecurityCodeFragment = new SecurityCodeFragment();
      b = new SecurityCodeFragment.a()
      {
        public final void a()
        {
          Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment CANCELED", new Object[0]);
          rp.b(rp.this);
        }
        
        public final void a(@cgb String paramAnonymousString)
        {
          Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker ENTERED security code", new Object[0]);
          paramCashTransactionmSecurityCode = paramAnonymousString;
          localSecurityCodeFragment.l();
          rp.a(rp.this);
        }
        
        public final void b()
        {
          Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment FAILED", new Object[0]);
          rp.c(rp.this);
        }
      };
      ban.a().a(new bdw(localSecurityCodeFragment));
      return;
    }
    a(null, true);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_INITIATION_CONFIRM_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */