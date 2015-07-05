import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.square.data.CardStatus;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.Iterator;
import java.util.List;

final class rn$1
  implements sk
{
  rn$1(rn paramrn, CashTransaction paramCashTransaction) {}
  
  public final void a(int paramInt)
  {
    Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: FAILED SQInitiatePaymentBlocker statusCode[%d]", new Object[] { Integer.valueOf(paramInt) });
    List localList = sn.a(this$0, paramInt);
    if (localList != null)
    {
      rn.b(this$0, localList);
      return;
    }
    AnalyticsEvents.a("SQUARE_INITIATE_PAYMENT_FAILED", paramInt);
    qg.a(2131493290, new Object[0]);
    rn.c(this$0);
  }
  
  public final void a(@cgb CashPayment paramCashPayment)
  {
    Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: SUCCESS SQInitiatePaymentBlocker %s status[%s]", new Object[] { paramCashPayment, mState.name() });
    Object localObject = sn.a(mState, mCancellationReason);
    val$transaction.a((CashTransaction.TransactionStatus)localObject);
    if (mState == CashPayment.State.CANCELED)
    {
      sn.a(mCancellationReason);
      if (localObject == CashTransaction.TransactionStatus.SENDER_CANCELED)
      {
        rn.a(this$0);
        return;
      }
      rn.b(this$0);
      return;
    }
    ta localta = mBlockers;
    if (localta != null)
    {
      localObject = localta.b();
      Iterator localIterator = ((List)localObject).iterator();
      do
      {
        paramCashPayment = (CashPayment)localObject;
        if (!localIterator.hasNext()) {
          break;
        }
        paramCashPayment = (qv)localIterator.next();
      } while (!(paramCashPayment instanceof rj));
      Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: SQInitiatePaymentBlocker SUCCESS came back with confirm blocker. Attempting autoresolution.", new Object[0]);
      paramCashPayment = atv.a(paramCashPayment);
      rn.a(this$0, paramCashPayment);
      return;
    }
    paramCashPayment = null;
    if (paramCashPayment != null)
    {
      localObject = paramCashPayment.iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
      } while (((qv)((Iterator)localObject).next()).d());
    }
    for (boolean bool = false;; bool = true)
    {
      rn.a(this$0, paramCashPayment, bool);
      if (localta == null) {
        break;
      }
      paramCashPayment = mCardBlocker;
      if ((paramCashPayment == null) || (mCardStatus != CardStatus.EXPIRED)) {
        break;
      }
      AnalyticsEvents.n("CARD_EXPIRED");
      qg.a(2131493286, new Object[0]);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     rn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */