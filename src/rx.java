import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;
import java.util.List;

public final class rx
  extends qv
{
  private static final String TAG = "SQUpdateReceivedCashPaymentBlocker";
  
  public final void a(@cgb final CashTransaction paramCashTransaction)
  {
    new sg(mTransactionId, new sk()
    {
      public final void a(int paramAnonymousInt)
      {
        Timber.b("SQUpdateReceivedCashPaymentBlocker", "CASH-LOG: SQUpdateReceivedCashPaymentBlocker FAILED to retrieve cash payment id[%s] statusCode[%d]", new Object[] { paramCashTransactionmTransactionId, Integer.valueOf(paramAnonymousInt) });
        a(null, false);
      }
      
      public final void a(@cgb CashPayment paramAnonymousCashPayment)
      {
        Timber.b("SQUpdateReceivedCashPaymentBlocker", "CASH-LOG: SQUpdateReceivedCashPaymentBlocker RECEIVED cash payment %s", new Object[] { paramAnonymousCashPayment });
        List localList = null;
        ta localta = mBlockers;
        if (localta != null) {
          localList = localta.b();
        }
        paramCashTransaction.a(sn.a(mState, mCancellationReason));
        a(localList, false);
        ban.a().a(new baz(paramCashTransactionmConversationId, paramCashTransactionmTransactionId));
      }
    }).f();
  }
  
  protected final void a(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  protected final void b(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.b(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_UPDATE_RECEIVED_CASH_PAYMENT_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */