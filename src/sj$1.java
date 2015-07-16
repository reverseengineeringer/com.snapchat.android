import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class sj$1
  implements ta
{
  sj$1(sj paramsj, CashTransaction paramCashTransaction) {}
  
  public final void a(int paramInt)
  {
    if (paramInt == 404)
    {
      this$0.a(aut.a(new sd()), true);
      return;
    }
    List localList = td.a(this$0, paramInt);
    if (localList != null)
    {
      this$0.b(localList, true);
      return;
    }
    AnalyticsEvents.a("SQUARE_RETRIEVE_PAYMENT_FAILED", paramInt);
    qw.a(2131493290, new Object[0]);
    this$0.b(null, false);
  }
  
  public final void a(@chc CashPayment paramCashPayment)
  {
    if (mState == CashPayment.State.CANCELED)
    {
      localCancellationReason = mCancellationReason;
      td.a(localCancellationReason);
      if ((localCancellationReason != CashPayment.CancellationReason.SQUARE_CANCELED) && (localCancellationReason != CashPayment.CancellationReason.RECIPIENT_CANCELED))
      {
        sj.a(this$0);
        return;
      }
    }
    val$transaction.a(td.a(mState, mCancellationReason));
    CashPayment.CancellationReason localCancellationReason = null;
    tq localtq = mBlockers;
    paramCashPayment = localCancellationReason;
    if (localtq != null) {
      paramCashPayment = localtq.b();
    }
    this$0.a(paramCashPayment, true);
  }
}

/* Location:
 * Qualified Name:     sj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */