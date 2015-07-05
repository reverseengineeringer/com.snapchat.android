import android.text.TextUtils;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rd$1
  implements sh.a
{
  rd$1(rd paramrd, CashTransaction paramCashTransaction) {}
  
  public final void a(@cgc si paramsi)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramsi != null)
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
          val$transaction.a(sn.a(payment.mState, payment.mCancellationReason));
          localObject2 = localObject1;
        }
      }
    }
    ajx.ak();
    rd.a(this$0, (List)localObject2);
  }
  
  public final void a(@cgc si paramsi, int paramInt)
  {
    paramsi = sn.a(this$0, paramInt);
    if (paramsi != null)
    {
      rd.b(this$0, paramsi);
      return;
    }
    if (val$transaction != null)
    {
      paramsi = val$transaction.mSenderUsername;
      if (!TextUtils.equals(ajx.l(), paramsi)) {
        break label70;
      }
      AnalyticsEvents.a("SQUARE_ACCEPT_TERMS_FAILED", paramInt);
      qg.a(2131493290, new Object[0]);
    }
    for (;;)
    {
      rd.a(this$0);
      return;
      label70:
      AnalyticsEvents.b("SQUARE_ACCEPT_TERMS_FAILED", paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     rd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */