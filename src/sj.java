import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class sj
  extends rl
{
  @Inject
  protected qw mCashErrorReporter;
  @Inject
  protected td mSquareProvider;
  
  public sj()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@chc final CashTransaction paramCashTransaction)
  {
    new sw(mTransactionId, new ta()
    {
      public final void a(int paramAnonymousInt)
      {
        if (paramAnonymousInt == 404)
        {
          a(aut.a(new sd()), true);
          return;
        }
        List localList = td.a(sj.this, paramAnonymousInt);
        if (localList != null)
        {
          b(localList, true);
          return;
        }
        AnalyticsEvents.a("SQUARE_RETRIEVE_PAYMENT_FAILED", paramAnonymousInt);
        qw.a(2131493290, new Object[0]);
        b(null, false);
      }
      
      public final void a(@chc CashPayment paramAnonymousCashPayment)
      {
        if (mState == CashPayment.State.CANCELED)
        {
          localCancellationReason = mCancellationReason;
          td.a(localCancellationReason);
          if ((localCancellationReason != CashPayment.CancellationReason.SQUARE_CANCELED) && (localCancellationReason != CashPayment.CancellationReason.RECIPIENT_CANCELED))
          {
            sj.a(sj.this);
            return;
          }
        }
        paramCashTransaction.a(td.a(mState, mCancellationReason));
        CashPayment.CancellationReason localCancellationReason = null;
        tq localtq = mBlockers;
        paramAnonymousCashPayment = localCancellationReason;
        if (localtq != null) {
          paramAnonymousCashPayment = localtq.b();
        }
        a(paramAnonymousCashPayment, true);
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
    return BlockerOrder.SQ_RETRIEVE_SENDING_CASH_PAYMENT_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     sj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */