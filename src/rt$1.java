import android.text.TextUtils;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rt$1
  implements sx.a
{
  rt$1(rt paramrt, CashTransaction paramCashTransaction) {}
  
  public final void a(@chd sy paramsy)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramsy != null)
    {
      Object localObject1 = localObject3;
      if (blockers != null)
      {
        localObject1 = localObject3;
        if (blockers.a()) {
          localObject1 = blockers.b();
        }
      }
      localObject2 = localObject1;
      if (val$transaction != null)
      {
        localObject2 = localObject1;
        if (payment != null)
        {
          val$transaction.a(td.a(payment.mState, payment.mCancellationReason));
          localObject2 = localObject1;
        }
      }
    }
    akr.aj();
    rt.a(this$0, (List)localObject2);
  }
  
  public final void a(@chd sy paramsy, int paramInt)
  {
    paramsy = td.a(this$0, paramInt);
    if (paramsy != null)
    {
      rt.b(this$0, paramsy);
      return;
    }
    if (val$transaction != null)
    {
      paramsy = val$transaction.mSenderUsername;
      if (!TextUtils.equals(akr.l(), paramsy)) {
        break label70;
      }
      AnalyticsEvents.a("SQUARE_ACCEPT_TERMS_FAILED", paramInt);
      qw.a(2131493290, new Object[0]);
    }
    for (;;)
    {
      rt.a(this$0);
      return;
      label70:
      AnalyticsEvents.b("SQUARE_ACCEPT_TERMS_FAILED", paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     rt.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */