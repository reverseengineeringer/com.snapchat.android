import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rx$1$1
  implements sx.a
{
  rx$1$1(rx.1 param1) {}
  
  public final void a(@chd sy paramsy)
  {
    if (paramsy != null)
    {
      localObject = (st.b)paramsy;
      this$1.this$0.mCashCardManager.a(cardToken);
      if ((blockers == null) || (!blockers.a())) {
        break label155;
      }
    }
    label155:
    for (Object localObject = blockers.b();; localObject = null)
    {
      if ((rx.a(this$1.this$0) != null) && (payment != null)) {
        rx.a(this$1.this$0).a(td.a(payment.mState, payment.mCancellationReason));
      }
      this$1.this$0.mSquareProvider.a();
      this$1.val$callback.a();
      rx.a(this$1.this$0, (List)localObject);
      return;
      this$1.val$callback.a(rx.a(null));
      return;
    }
  }
  
  public final void a(@chd sy paramsy, int paramInt)
  {
    if ((paramInt == 404) && (rx.a(this$1.this$0) != null))
    {
      rx.b(this$1.this$0);
      new st(this$1.val$pan, this$1.val$expiry, this$1.val$cvv, this$1.val$zip, this).execute();
      return;
    }
    if ((paramInt == 401) && (!rx.c(this$1.this$0)))
    {
      rx.d(this$1.this$0);
      rx.a(this$1.this$0, this$1.val$pan, this$1.val$expiry, this$1.val$cvv, this$1.val$zip, this$1.val$callback);
      return;
    }
    ErrorType localErrorType = null;
    if (paramInt == 429) {
      localErrorType = ErrorType.TOO_MANY_ATTEMPTS;
    }
    for (;;)
    {
      this$1.val$callback.a(rx.a(localErrorType));
      return;
      if (paramInt == 0) {
        localErrorType = ErrorType.NETWORK_FAILURE;
      } else if (paramsy != null) {
        localErrorType = type;
      }
    }
  }
}

/* Location:
 * Qualified Name:     rx.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */