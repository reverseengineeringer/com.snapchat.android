import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rt$1
  implements sk
{
  rt$1(rt paramrt, CashTransaction paramCashTransaction) {}
  
  public final void a(int paramInt)
  {
    if (paramInt == 404)
    {
      this$0.a(atv.a(new rn()), true);
      return;
    }
    List localList = sn.a(this$0, paramInt);
    if (localList != null)
    {
      this$0.b(localList, true);
      return;
    }
    AnalyticsEvents.a("SQUARE_RETRIEVE_PAYMENT_FAILED", paramInt);
    qg.a(2131493290, new Object[0]);
    this$0.b(null, false);
  }
  
  public final void a(@cgb CashPayment paramCashPayment)
  {
    if (mState == CashPayment.State.CANCELED)
    {
      localCancellationReason = mCancellationReason;
      sn.a(localCancellationReason);
      if ((localCancellationReason != CashPayment.CancellationReason.SQUARE_CANCELED) && (localCancellationReason != CashPayment.CancellationReason.RECIPIENT_CANCELED))
      {
        rt.a(this$0);
        return;
      }
    }
    val$transaction.a(sn.a(mState, mCancellationReason));
    CashPayment.CancellationReason localCancellationReason = null;
    ta localta = mBlockers;
    paramCashPayment = localCancellationReason;
    if (localta != null) {
      paramCashPayment = localta.b();
    }
    this$0.a(paramCashPayment, true);
  }
}

/* Location:
 * Qualified Name:     rt.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */