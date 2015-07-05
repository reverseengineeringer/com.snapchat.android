import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;
import java.util.List;

final class rx$1
  implements sk
{
  rx$1(rx paramrx, CashTransaction paramCashTransaction) {}
  
  public final void a(int paramInt)
  {
    Timber.b("SQUpdateReceivedCashPaymentBlocker", "CASH-LOG: SQUpdateReceivedCashPaymentBlocker FAILED to retrieve cash payment id[%s] statusCode[%d]", new Object[] { val$transaction.mTransactionId, Integer.valueOf(paramInt) });
    this$0.a(null, false);
  }
  
  public final void a(@cgb CashPayment paramCashPayment)
  {
    Timber.b("SQUpdateReceivedCashPaymentBlocker", "CASH-LOG: SQUpdateReceivedCashPaymentBlocker RECEIVED cash payment %s", new Object[] { paramCashPayment });
    List localList = null;
    ta localta = mBlockers;
    if (localta != null) {
      localList = localta.b();
    }
    val$transaction.a(sn.a(mState, mCancellationReason));
    this$0.a(localList, false);
    ban.a().a(new baz(val$transaction.mConversationId, val$transaction.mTransactionId));
  }
}

/* Location:
 * Qualified Name:     rx.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */