import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class rd
  extends qv
{
  @Inject
  protected qg mCashErrorReporter;
  
  public rd()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@cgc final CashTransaction paramCashTransaction)
  {
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
          if (paramCashTransaction != null)
          {
            localObject2 = localObject1;
            if (payment != null)
            {
              paramCashTransaction.a(sn.a(payment.mState, payment.mCancellationReason));
              localObject2 = localObject1;
            }
          }
        }
        ajx.ak();
        rd.a(rd.this, (List)localObject2);
      }
      
      public final void a(@cgc si paramAnonymoussi, int paramAnonymousInt)
      {
        paramAnonymoussi = sn.a(rd.this, paramAnonymousInt);
        if (paramAnonymoussi != null)
        {
          rd.b(rd.this, paramAnonymoussi);
          return;
        }
        if (paramCashTransaction != null)
        {
          paramAnonymoussi = paramCashTransactionmSenderUsername;
          if (!TextUtils.equals(ajx.l(), paramAnonymoussi)) {
            break label70;
          }
          AnalyticsEvents.a("SQUARE_ACCEPT_TERMS_FAILED", paramAnonymousInt);
          qg.a(2131493290, new Object[0]);
        }
        for (;;)
        {
          rd.a(rd.this);
          return;
          label70:
          AnalyticsEvents.b("SQUARE_ACCEPT_TERMS_FAILED", paramAnonymousInt);
        }
      }
    };
    if ((paramCashTransaction != null) && (!mIsInFlight))
    {
      new rz(mTransactionId, local1).f();
      return;
    }
    new rz(local1).f();
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
 * Qualified Name:     rd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */