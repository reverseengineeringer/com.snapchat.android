import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class sg
  extends rl
{
  private static final String TAG = "SQPhoneNumberBlocker";
  @Inject
  protected qw mCashErrorReporter;
  
  public sg()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@chd final CashTransaction paramCashTransaction)
  {
    new ra(new qs.a()
    {
      public final void a(@chc ScCashResponsePayload.Status paramAnonymousStatus, int paramAnonymousInt)
      {
        paramAnonymousStatus = td.a(sg.this, paramAnonymousInt);
        if (paramAnonymousStatus != null)
        {
          sg.b(sg.this, paramAnonymousStatus);
          return;
        }
        if (paramCashTransaction != null)
        {
          paramAnonymousStatus = paramCashTransactionmSenderUsername;
          if (!TextUtils.equals(akr.l(), paramAnonymousStatus)) {
            break label70;
          }
          AnalyticsEvents.a("SQUARE_PHONE_VERIFICATION_FAILED", paramAnonymousInt);
          qw.a(2131493290, new Object[0]);
        }
        for (;;)
        {
          sg.c(sg.this);
          return;
          label70:
          AnalyticsEvents.b("SQUARE_PHONE_VERIFICATION_FAILED", paramAnonymousInt);
        }
      }
      
      public final void a(@chc ScCashResponsePayload paramAnonymousScCashResponsePayload)
      {
        paramAnonymousScCashResponsePayload = (ra.a)paramAnonymousScCashResponsePayload;
        if ((phoneNumber == null) || (signature == null))
        {
          sg.a(sg.this);
          return;
        }
        sx.a local1 = new sx.a()
        {
          public final void a(@chd sy paramAnonymous2sy)
          {
            Object localObject2 = null;
            Object localObject3 = null;
            if (paramAnonymous2sy != null)
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
            sg.a(sg.this, (List)localObject2);
          }
          
          public final void a(@chd sy paramAnonymous2sy, int paramAnonymous2Int)
          {
            sg.b(sg.this);
          }
        };
        if ((paramCashTransaction != null) && (!paramCashTransactionmIsInFlight))
        {
          new su(paramCashTransactionmTransactionId, phoneNumber, signature, local1).execute();
          return;
        }
        new su(phoneNumber, signature, local1).execute();
      }
    }).execute();
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
 * Qualified Name:     sg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */