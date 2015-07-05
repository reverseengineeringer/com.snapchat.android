import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class rt
  extends qv
{
  @Inject
  protected qg mCashErrorReporter;
  @Inject
  protected sn mSquareProvider;
  
  public rt()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@cgb final CashTransaction paramCashTransaction)
  {
    new sg(mTransactionId, new sk()
    {
      public final void a(int paramAnonymousInt)
      {
        if (paramAnonymousInt == 404)
        {
          a(atv.a(new rn()), true);
          return;
        }
        List localList = sn.a(rt.this, paramAnonymousInt);
        if (localList != null)
        {
          b(localList, true);
          return;
        }
        AnalyticsEvents.a("SQUARE_RETRIEVE_PAYMENT_FAILED", paramAnonymousInt);
        qg.a(2131493290, new Object[0]);
        b(null, false);
      }
      
      public final void a(@cgb CashPayment paramAnonymousCashPayment)
      {
        if (mState == CashPayment.State.CANCELED)
        {
          localCancellationReason = mCancellationReason;
          sn.a(localCancellationReason);
          if ((localCancellationReason != CashPayment.CancellationReason.SQUARE_CANCELED) && (localCancellationReason != CashPayment.CancellationReason.RECIPIENT_CANCELED))
          {
            rt.a(rt.this);
            return;
          }
        }
        paramCashTransaction.a(sn.a(mState, mCancellationReason));
        CashPayment.CancellationReason localCancellationReason = null;
        ta localta = mBlockers;
        paramAnonymousCashPayment = localCancellationReason;
        if (localta != null) {
          paramAnonymousCashPayment = localta.b();
        }
        a(paramAnonymousCashPayment, true);
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
    return BlockerOrder.SQ_RETRIEVE_SENDING_CASH_PAYMENT_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */