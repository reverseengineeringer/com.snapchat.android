import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.util.CashUtils.CurrencyCode;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class mz
{
  private final ScAnalyticsEventEngine mScAnalyticsEventEngine = ScAnalyticsEventEngine.a();
  
  public static void a(@cgb CashFeedItem paramCashFeedItem)
  {
    fv localfv = new fv();
    cashAmount = Double.valueOf(mCashTransaction.mAmount * 1.0D / 100.0D);
    cashCurrency = mCashTransaction.mCurrencyCode.name();
    ScAnalyticsEventEngine.a(localfv);
  }
}

/* Location:
 * Qualified Name:     mz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */