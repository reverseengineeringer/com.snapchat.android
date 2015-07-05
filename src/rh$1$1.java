import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rh$1$1
  implements sh.a
{
  rh$1$1(rh.1 param1) {}
  
  public final void a(@cgc si paramsi)
  {
    Timber.b("SQCardFormBlocker", "CASH-LOG: SUCCESS resolve SQCardFormBlocker", new Object[0]);
    if (paramsi != null)
    {
      localObject = (sd.b)paramsi;
      this$1.this$0.mCashCardManager.a(cardToken);
      if ((blockers == null) || (!blockers.a())) {
        break label166;
      }
    }
    label166:
    for (Object localObject = blockers.b();; localObject = null)
    {
      if ((rh.a(this$1.this$0) != null) && (payment != null)) {
        rh.a(this$1.this$0).a(sn.a(payment.mState, payment.mCancellationReason));
      }
      this$1.this$0.mSquareProvider.a();
      this$1.val$callback.a();
      rh.a(this$1.this$0, (List)localObject);
      return;
      this$1.val$callback.a(rh.a(null));
      return;
    }
  }
  
  public final void a(@cgc si paramsi, int paramInt)
  {
    Timber.b("SQCardFormBlocker", "CASH-LOG: FAILED resolve SQCardFormBlocker statusCode[%d]", new Object[] { Integer.valueOf(paramInt) });
    if ((paramInt == 404) && (rh.a(this$1.this$0) != null))
    {
      rh.b(this$1.this$0);
      new sd(this$1.val$pan, this$1.val$expiry, this$1.val$cvv, this$1.val$zip, this).f();
      return;
    }
    if ((paramInt == 401) && (!rh.c(this$1.this$0)))
    {
      rh.d(this$1.this$0);
      rh.a(this$1.this$0, this$1.val$pan, this$1.val$expiry, this$1.val$cvv, this$1.val$zip, this$1.val$callback);
      return;
    }
    ErrorType localErrorType = null;
    if (paramInt == 429) {
      localErrorType = ErrorType.TOO_MANY_ATTEMPTS;
    }
    for (;;)
    {
      this$1.val$callback.a(rh.a(localErrorType));
      return;
      if (paramInt == 0) {
        localErrorType = ErrorType.NETWORK_FAILURE;
      } else if (paramsi != null) {
        localErrorType = type;
      }
    }
  }
}

/* Location:
 * Qualified Name:     rh.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */