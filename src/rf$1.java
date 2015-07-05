import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.model.CashTransaction;

final class rf$1
  implements qc.a
{
  rf$1(rf paramrf, CashTransaction paramCashTransaction) {}
  
  public final void a(@cgb ScCashResponsePayload.Status paramStatus, int paramInt)
  {
    Timber.b("SQAccessTokenBlocker", "CASH-LOG: FAILED resolve SQAccessTokenBlocker status[%s] statusCode[%d]", new Object[] { paramStatus.name(), Integer.valueOf(paramInt) });
    if (val$transaction != null)
    {
      String str = val$transaction.mSenderUsername;
      if (!TextUtils.equals(ajx.l(), str)) {
        break label72;
      }
      AnalyticsEvents.a("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", paramInt);
    }
    for (;;)
    {
      qg.a(val$transaction, paramStatus);
      rf.a(this$0);
      return;
      label72:
      AnalyticsEvents.b("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", paramInt);
    }
  }
  
  public final void a(@cgb ScCashResponsePayload paramScCashResponsePayload)
  {
    Timber.b("SQAccessTokenBlocker", "CASH-LOG: SUCCESS resolve SQAccessTokenBlocker", new Object[0]);
    paramScCashResponsePayload = (ql.a)paramScCashResponsePayload;
    this$0.mCashAuthManager.a(accessToken);
    this$0.a(null, true);
  }
}

/* Location:
 * Qualified Name:     rf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */