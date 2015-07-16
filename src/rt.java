import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class rt
  extends rl
{
  @Inject
  protected qw mCashErrorReporter;
  
  public rt()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@chd final CashTransaction paramCashTransaction)
  {
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
          if (paramCashTransaction != null)
          {
            localObject2 = localObject1;
            if (payment != null)
            {
              paramCashTransaction.a(td.a(payment.mState, payment.mCancellationReason));
              localObject2 = localObject1;
            }
          }
        }
        akr.aj();
        rt.a(rt.this, (List)localObject2);
      }
      
      public final void a(@chd sy paramAnonymoussy, int paramAnonymousInt)
      {
        paramAnonymoussy = td.a(rt.this, paramAnonymousInt);
        if (paramAnonymoussy != null)
        {
          rt.b(rt.this, paramAnonymoussy);
          return;
        }
        if (paramCashTransaction != null)
        {
          paramAnonymoussy = paramCashTransactionmSenderUsername;
          if (!TextUtils.equals(akr.l(), paramAnonymoussy)) {
            break label70;
          }
          AnalyticsEvents.a("SQUARE_ACCEPT_TERMS_FAILED", paramAnonymousInt);
          qw.a(2131493290, new Object[0]);
        }
        for (;;)
        {
          rt.a(rt.this);
          return;
          label70:
          AnalyticsEvents.b("SQUARE_ACCEPT_TERMS_FAILED", paramAnonymousInt);
        }
      }
    };
    if ((paramCashTransaction != null) && (!mIsInFlight))
    {
      new sp(mTransactionId, local1).execute();
      return;
    }
    new sp(local1).execute();
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_ACCEPT_TERMS_BLOCKER;
  }
  
  public final boolean d()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     rt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */