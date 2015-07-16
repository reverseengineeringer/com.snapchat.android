import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class rv
  extends rl
{
  private static final String TAG = "SQAccessTokenBlocker";
  @Inject
  protected yj mCashAuthManager;
  @Inject
  protected qw mCashErrorReporter;
  private boolean mForced = false;
  
  public rv()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public rv(boolean paramBoolean)
  {
    this();
  }
  
  public final void a(@chd final CashTransaction paramCashTransaction)
  {
    if (!mForced)
    {
      ym localym = mCashAuthManager.a();
      if ((localym != null) && (!localym.a(System.currentTimeMillis())))
      {
        super.a(null, true);
        return;
      }
    }
    new rb(new qs.a()
    {
      public final void a(@chc ScCashResponsePayload.Status paramAnonymousStatus, int paramAnonymousInt)
      {
        paramAnonymousStatus.name();
        if (paramCashTransaction != null)
        {
          String str = paramCashTransactionmSenderUsername;
          if (!TextUtils.equals(akr.l(), str)) {
            break label52;
          }
          AnalyticsEvents.a("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", paramAnonymousInt);
        }
        for (;;)
        {
          qw.a(paramCashTransaction, paramAnonymousStatus);
          rv.a(rv.this);
          return;
          label52:
          AnalyticsEvents.b("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", paramAnonymousInt);
        }
      }
      
      public final void a(@chc ScCashResponsePayload paramAnonymousScCashResponsePayload)
      {
        paramAnonymousScCashResponsePayload = (rb.a)paramAnonymousScCashResponsePayload;
        mCashAuthManager.a(accessToken);
        a(null, true);
      }
    }).execute();
  }
  
  protected final void a(@chd List<rl> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_ACCESS_TOKEN_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */