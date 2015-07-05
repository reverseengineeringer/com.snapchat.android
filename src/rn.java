import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CardStatus;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public final class rn
  extends qv
{
  private static final String TAG = "SQInitiatePaymentBlocker";
  @Inject
  protected xr mCashCardManager;
  @Inject
  protected qg mCashErrorReporter;
  @Inject
  protected sn mSquareProvider;
  
  public rn()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@cgb final CashTransaction paramCashTransaction)
  {
    Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: ATTEMPT resolve SQInitiatePaymentBlocker", new Object[0]);
    if (mCashCardManager.a() == null)
    {
      paramCashTransaction = new ArrayList();
      paramCashTransaction.add(new rh());
      b(paramCashTransaction, true);
      return;
    }
    new sc(paramCashTransaction, mCashCardManager.a(), new sk()
    {
      public final void a(int paramAnonymousInt)
      {
        Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: FAILED SQInitiatePaymentBlocker statusCode[%d]", new Object[] { Integer.valueOf(paramAnonymousInt) });
        List localList = sn.a(rn.this, paramAnonymousInt);
        if (localList != null)
        {
          rn.b(rn.this, localList);
          return;
        }
        AnalyticsEvents.a("SQUARE_INITIATE_PAYMENT_FAILED", paramAnonymousInt);
        qg.a(2131493290, new Object[0]);
        rn.c(rn.this);
      }
      
      public final void a(@cgb CashPayment paramAnonymousCashPayment)
      {
        Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: SUCCESS SQInitiatePaymentBlocker %s status[%s]", new Object[] { paramAnonymousCashPayment, mState.name() });
        Object localObject = sn.a(mState, mCancellationReason);
        paramCashTransaction.a((CashTransaction.TransactionStatus)localObject);
        if (mState == CashPayment.State.CANCELED)
        {
          sn.a(mCancellationReason);
          if (localObject == CashTransaction.TransactionStatus.SENDER_CANCELED)
          {
            rn.a(rn.this);
            return;
          }
          rn.b(rn.this);
          return;
        }
        ta localta = mBlockers;
        if (localta != null)
        {
          localObject = localta.b();
          Iterator localIterator = ((List)localObject).iterator();
          do
          {
            paramAnonymousCashPayment = (CashPayment)localObject;
            if (!localIterator.hasNext()) {
              break;
            }
            paramAnonymousCashPayment = (qv)localIterator.next();
          } while (!(paramAnonymousCashPayment instanceof rj));
          Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: SQInitiatePaymentBlocker SUCCESS came back with confirm blocker. Attempting autoresolution.", new Object[0]);
          paramAnonymousCashPayment = atv.a(paramAnonymousCashPayment);
          rn.a(rn.this, paramAnonymousCashPayment);
          return;
        }
        paramAnonymousCashPayment = null;
        if (paramAnonymousCashPayment != null)
        {
          localObject = paramAnonymousCashPayment.iterator();
          do
          {
            if (!((Iterator)localObject).hasNext()) {
              break;
            }
          } while (((qv)((Iterator)localObject).next()).d());
        }
        for (boolean bool = false;; bool = true)
        {
          rn.a(rn.this, paramAnonymousCashPayment, bool);
          if (localta == null) {
            break;
          }
          paramAnonymousCashPayment = mCardBlocker;
          if ((paramAnonymousCashPayment == null) || (mCardStatus != CardStatus.EXPIRED)) {
            break;
          }
          AnalyticsEvents.n("CARD_EXPIRED");
          qg.a(2131493286, new Object[0]);
          return;
        }
      }
    }).f();
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_INITIATE_PAYMENT_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */