import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class rf
  extends qv
{
  private static final String TAG = "SQAccessTokenBlocker";
  @Inject
  protected xn mCashAuthManager;
  @Inject
  protected qg mCashErrorReporter;
  private boolean mForced = false;
  
  public rf()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public rf(boolean paramBoolean)
  {
    this();
  }
  
  public final void a(@cgc final CashTransaction paramCashTransaction)
  {
    Timber.b("SQAccessTokenBlocker", "CASH-LOG: ATTEMPT resolve SQAccessTokenBlocker", new Object[0]);
    if (!mForced)
    {
      xq localxq = mCashAuthManager.a();
      if ((localxq != null) && (!localxq.a(System.currentTimeMillis())))
      {
        super.a(null, true);
        return;
      }
    }
    new ql(new qc.a()
    {
      public final void a(@cgb ScCashResponsePayload.Status paramAnonymousStatus, int paramAnonymousInt)
      {
        Timber.b("SQAccessTokenBlocker", "CASH-LOG: FAILED resolve SQAccessTokenBlocker status[%s] statusCode[%d]", new Object[] { paramAnonymousStatus.name(), Integer.valueOf(paramAnonymousInt) });
        if (paramCashTransaction != null)
        {
          String str = paramCashTransactionmSenderUsername;
          if (!TextUtils.equals(ajx.l(), str)) {
            break label72;
          }
          AnalyticsEvents.a("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", paramAnonymousInt);
        }
        for (;;)
        {
          qg.a(paramCashTransaction, paramAnonymousStatus);
          rf.a(rf.this);
          return;
          label72:
          AnalyticsEvents.b("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", paramAnonymousInt);
        }
      }
      
      public final void a(@cgb ScCashResponsePayload paramAnonymousScCashResponsePayload)
      {
        Timber.b("SQAccessTokenBlocker", "CASH-LOG: SUCCESS resolve SQAccessTokenBlocker", new Object[0]);
        paramAnonymousScCashResponsePayload = (ql.a)paramAnonymousScCashResponsePayload;
        mCashAuthManager.a(accessToken);
        a(null, true);
      }
    }).f();
  }
  
  protected final void a(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_ACCESS_TOKEN_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */