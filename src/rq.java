import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class rq
  extends qv
{
  private static final String TAG = "SQPhoneNumberBlocker";
  @Inject
  protected qg mCashErrorReporter;
  
  public rq()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@cgc final CashTransaction paramCashTransaction)
  {
    Timber.b("SQPhoneNumberBlocker", "CASH-LOG: ATTEMPT resolve SQPhoneNumberBlocker", new Object[0]);
    new qk(new qc.a()
    {
      public final void a(@cgb ScCashResponsePayload.Status paramAnonymousStatus, int paramAnonymousInt)
      {
        paramAnonymousStatus = sn.a(rq.this, paramAnonymousInt);
        if (paramAnonymousStatus != null)
        {
          rq.b(rq.this, paramAnonymousStatus);
          return;
        }
        if (paramCashTransaction != null)
        {
          paramAnonymousStatus = paramCashTransactionmSenderUsername;
          if (!TextUtils.equals(ajx.l(), paramAnonymousStatus)) {
            break label70;
          }
          AnalyticsEvents.a("SQUARE_PHONE_VERIFICATION_FAILED", paramAnonymousInt);
          qg.a(2131493290, new Object[0]);
        }
        for (;;)
        {
          rq.c(rq.this);
          return;
          label70:
          AnalyticsEvents.b("SQUARE_PHONE_VERIFICATION_FAILED", paramAnonymousInt);
        }
      }
      
      public final void a(@cgb ScCashResponsePayload paramAnonymousScCashResponsePayload)
      {
        Timber.b("SQPhoneNumberBlocker", "CASH-LOG: SUCCESS received phone signature", new Object[0]);
        paramAnonymousScCashResponsePayload = (qk.a)paramAnonymousScCashResponsePayload;
        if ((phoneNumber == null) || (signature == null))
        {
          rq.a(rq.this);
          return;
        }
        sh.a local1 = new sh.a()
        {
          public final void a(@cgc si paramAnonymous2si)
          {
            Object localObject2 = null;
            Object localObject3 = null;
            if (paramAnonymous2si != null)
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
            rq.a(rq.this, (List)localObject2);
          }
          
          public final void a(@cgc si paramAnonymous2si, int paramAnonymous2Int)
          {
            Timber.b("SQPhoneNumberBlocker", "CASH-LOG: FAILED resolve SQPhoneNumberBlocker statusCode[%d]", new Object[] { Integer.valueOf(paramAnonymous2Int) });
            rq.b(rq.this);
          }
        };
        if ((paramCashTransaction != null) && (!paramCashTransactionmIsInFlight))
        {
          new se(paramCashTransactionmTransactionId, phoneNumber, signature, local1).f();
          return;
        }
        new se(phoneNumber, signature, local1).f();
      }
    }).f();
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_PHONE_NUMBER_BLOCKER;
  }
  
  public final boolean d()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     rq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */