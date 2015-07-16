import android.text.TextUtils;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class sg$1
  implements qs.a
{
  sg$1(sg paramsg, CashTransaction paramCashTransaction) {}
  
  public final void a(@chc ScCashResponsePayload.Status paramStatus, int paramInt)
  {
    paramStatus = td.a(this$0, paramInt);
    if (paramStatus != null)
    {
      sg.b(this$0, paramStatus);
      return;
    }
    if (val$transaction != null)
    {
      paramStatus = val$transaction.mSenderUsername;
      if (!TextUtils.equals(akr.l(), paramStatus)) {
        break label70;
      }
      AnalyticsEvents.a("SQUARE_PHONE_VERIFICATION_FAILED", paramInt);
      qw.a(2131493290, new Object[0]);
    }
    for (;;)
    {
      sg.c(this$0);
      return;
      label70:
      AnalyticsEvents.b("SQUARE_PHONE_VERIFICATION_FAILED", paramInt);
    }
  }
  
  public final void a(@chc ScCashResponsePayload paramScCashResponsePayload)
  {
    paramScCashResponsePayload = (ra.a)paramScCashResponsePayload;
    if ((phoneNumber == null) || (signature == null))
    {
      sg.a(this$0);
      return;
    }
    sx.a local1 = new sx.a()
    {
      public final void a(@chd sy paramAnonymoussy)
      {
        Object localObject2 = null;
        Object localObject3 = null;
        if (paramAnonymoussy != null)
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
        sg.a(this$0, (List)localObject2);
      }
      
      public final void a(@chd sy paramAnonymoussy, int paramAnonymousInt)
      {
        sg.b(this$0);
      }
    };
    if ((val$transaction != null) && (!val$transaction.mIsInFlight))
    {
      new su(val$transaction.mTransactionId, phoneNumber, signature, local1).execute();
      return;
    }
    new su(phoneNumber, signature, local1).execute();
  }
}

/* Location:
 * Qualified Name:     sg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */