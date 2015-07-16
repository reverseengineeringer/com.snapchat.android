import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;
import java.util.List;

public final class sn
  extends rl
{
  private static final String TAG = "SQUpdateReceivedCashPaymentBlocker";
  
  public final void a(@chc final CashTransaction paramCashTransaction)
  {
    new sw(mTransactionId, new ta()
    {
      public final void a(int paramAnonymousInt)
      {
        String str = paramCashTransactionmTransactionId;
        a(null, false);
      }
      
      public final void a(@chc CashPayment paramAnonymousCashPayment)
      {
        List localList = null;
        tq localtq = mBlockers;
        if (localtq != null) {
          localList = localtq.b();
        }
        paramCashTransaction.a(td.a(mState, mCancellationReason));
        a(localList, false);
        bbo.a().a(new bca(paramCashTransactionmConversationId, paramCashTransactionmTransactionId));
      }
    }).execute();
  }
  
  protected final void a(@chd List<rl> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  protected final void b(@chd List<rl> paramList, boolean paramBoolean)
  {
    super.b(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_UPDATE_RECEIVED_CASH_PAYMENT_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     sn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */