import android.text.TextUtils;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.model.CashTransaction;

final class rv$1
  implements qs.a
{
  rv$1(rv paramrv, CashTransaction paramCashTransaction) {}
  
  public final void a(@chc ScCashResponsePayload.Status paramStatus, int paramInt)
  {
    paramStatus.name();
    if (val$transaction != null)
    {
      String str = val$transaction.mSenderUsername;
      if (!TextUtils.equals(akr.l(), str)) {
        break label52;
      }
      AnalyticsEvents.a("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", paramInt);
    }
    for (;;)
    {
      qw.a(val$transaction, paramStatus);
      rv.a(this$0);
      return;
      label52:
      AnalyticsEvents.b("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", paramInt);
    }
  }
  
  public final void a(@chc ScCashResponsePayload paramScCashResponsePayload)
  {
    paramScCashResponsePayload = (rb.a)paramScCashResponsePayload;
    this$0.mCashAuthManager.a(accessToken);
    this$0.a(null, true);
  }
}

/* Location:
 * Qualified Name:     rv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */