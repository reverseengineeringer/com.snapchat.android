import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rq$1
  implements qc.a
{
  rq$1(rq paramrq, CashTransaction paramCashTransaction) {}
  
  public final void a(@cgb ScCashResponsePayload.Status paramStatus, int paramInt)
  {
    paramStatus = sn.a(this$0, paramInt);
    if (paramStatus != null)
    {
      rq.b(this$0, paramStatus);
      return;
    }
    if (val$transaction != null)
    {
      paramStatus = val$transaction.mSenderUsername;
      if (!TextUtils.equals(ajx.l(), paramStatus)) {
        break label70;
      }
      AnalyticsEvents.a("SQUARE_PHONE_VERIFICATION_FAILED", paramInt);
      qg.a(2131493290, new Object[0]);
    }
    for (;;)
    {
      rq.c(this$0);
      return;
      label70:
      AnalyticsEvents.b("SQUARE_PHONE_VERIFICATION_FAILED", paramInt);
    }
  }
  
  public final void a(@cgb ScCashResponsePayload paramScCashResponsePayload)
  {
    Timber.b("SQPhoneNumberBlocker", "CASH-LOG: SUCCESS received phone signature", new Object[0]);
    paramScCashResponsePayload = (qk.a)paramScCashResponsePayload;
    if ((phoneNumber == null) || (signature == null))
    {
      rq.a(this$0);
      return;
    }
    sh.a local1 = new sh.a()
    {
      public final void a(@cgc si paramAnonymoussi)
      {
        Object localObject2 = null;
        Object localObject3 = null;
        if (paramAnonymoussi != null)
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
        rq.a(this$0, (List)localObject2);
      }
      
      public final void a(@cgc si paramAnonymoussi, int paramAnonymousInt)
      {
        Timber.b("SQPhoneNumberBlocker", "CASH-LOG: FAILED resolve SQPhoneNumberBlocker statusCode[%d]", new Object[] { Integer.valueOf(paramAnonymousInt) });
        rq.b(this$0);
      }
    };
    if ((val$transaction != null) && (!val$transaction.mIsInFlight))
    {
      new se(val$transaction.mTransactionId, phoneNumber, signature, local1).f();
      return;
    }
    new se(phoneNumber, signature, local1).f();
  }
}

/* Location:
 * Qualified Name:     rq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */