import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.CardInputError;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rh$1
  implements qv.a
{
  rh$1(rh paramrh, qw paramqw, String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public final void a(@cgb qv paramqv)
  {
    Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker dismissed when trying to get access token", new Object[0]);
    val$callback.a(CardInputError.UNKNOWN);
  }
  
  public final void a(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    paramqv = new sh.a()
    {
      public final void a(@cgc si paramAnonymoussi)
      {
        Timber.b("SQCardFormBlocker", "CASH-LOG: SUCCESS resolve SQCardFormBlocker", new Object[0]);
        if (paramAnonymoussi != null)
        {
          localObject = (sd.b)paramAnonymoussi;
          this$0.mCashCardManager.a(cardToken);
          if ((blockers == null) || (!blockers.a())) {
            break label166;
          }
        }
        label166:
        for (Object localObject = blockers.b();; localObject = null)
        {
          if ((rh.a(this$0) != null) && (payment != null)) {
            rh.a(this$0).a(sn.a(payment.mState, payment.mCancellationReason));
          }
          this$0.mSquareProvider.a();
          val$callback.a();
          rh.a(this$0, (List)localObject);
          return;
          val$callback.a(rh.a(null));
          return;
        }
      }
      
      public final void a(@cgc si paramAnonymoussi, int paramAnonymousInt)
      {
        Timber.b("SQCardFormBlocker", "CASH-LOG: FAILED resolve SQCardFormBlocker statusCode[%d]", new Object[] { Integer.valueOf(paramAnonymousInt) });
        if ((paramAnonymousInt == 404) && (rh.a(this$0) != null))
        {
          rh.b(this$0);
          new sd(val$pan, val$expiry, val$cvv, val$zip, this).f();
          return;
        }
        if ((paramAnonymousInt == 401) && (!rh.c(this$0)))
        {
          rh.d(this$0);
          rh.a(this$0, val$pan, val$expiry, val$cvv, val$zip, val$callback);
          return;
        }
        ErrorType localErrorType = null;
        if (paramAnonymousInt == 429) {
          localErrorType = ErrorType.TOO_MANY_ATTEMPTS;
        }
        for (;;)
        {
          val$callback.a(rh.a(localErrorType));
          return;
          if (paramAnonymousInt == 0) {
            localErrorType = ErrorType.NETWORK_FAILURE;
          } else if (paramAnonymoussi != null) {
            localErrorType = type;
          }
        }
      }
    };
    if ((rh.a(this$0) != null) && (!athis$0).mIsInFlight))
    {
      new sd(athis$0).mTransactionId, val$pan, val$expiry, val$cvv, val$zip, paramqv).f();
      return;
    }
    new sd(val$pan, val$expiry, val$cvv, val$zip, paramqv).f();
  }
  
  public final void b(@cgb qv paramqv)
  {
    Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker hard failed when trying to get access token", new Object[0]);
    val$callback.a(CardInputError.UNKNOWN);
  }
  
  public final void b(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker failed to get access token", new Object[0]);
    val$callback.a(CardInputError.UNKNOWN);
    rh.a(this$0, paramList, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     rh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */