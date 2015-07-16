import com.snapchat.android.api2.cash.blockers.CardInputError;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rx$1
  implements rl.a
{
  rx$1(rx paramrx, rm paramrm, String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public final void a(@chc rl paramrl)
  {
    val$callback.a(CardInputError.UNKNOWN);
  }
  
  public final void a(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    paramrl = new sx.a()
    {
      public final void a(@chd sy paramAnonymoussy)
      {
        if (paramAnonymoussy != null)
        {
          localObject = (st.b)paramAnonymoussy;
          this$0.mCashCardManager.a(cardToken);
          if ((blockers == null) || (!blockers.a())) {
            break label155;
          }
        }
        label155:
        for (Object localObject = blockers.b();; localObject = null)
        {
          if ((rx.a(this$0) != null) && (payment != null)) {
            rx.a(this$0).a(td.a(payment.mState, payment.mCancellationReason));
          }
          this$0.mSquareProvider.a();
          val$callback.a();
          rx.a(this$0, (List)localObject);
          return;
          val$callback.a(rx.a(null));
          return;
        }
      }
      
      public final void a(@chd sy paramAnonymoussy, int paramAnonymousInt)
      {
        if ((paramAnonymousInt == 404) && (rx.a(this$0) != null))
        {
          rx.b(this$0);
          new st(val$pan, val$expiry, val$cvv, val$zip, this).execute();
          return;
        }
        if ((paramAnonymousInt == 401) && (!rx.c(this$0)))
        {
          rx.d(this$0);
          rx.a(this$0, val$pan, val$expiry, val$cvv, val$zip, val$callback);
          return;
        }
        ErrorType localErrorType = null;
        if (paramAnonymousInt == 429) {
          localErrorType = ErrorType.TOO_MANY_ATTEMPTS;
        }
        for (;;)
        {
          val$callback.a(rx.a(localErrorType));
          return;
          if (paramAnonymousInt == 0) {
            localErrorType = ErrorType.NETWORK_FAILURE;
          } else if (paramAnonymoussy != null) {
            localErrorType = type;
          }
        }
      }
    };
    if ((rx.a(this$0) != null) && (!athis$0).mIsInFlight))
    {
      new st(athis$0).mTransactionId, val$pan, val$expiry, val$cvv, val$zip, paramrl).execute();
      return;
    }
    new st(val$pan, val$expiry, val$cvv, val$zip, paramrl).execute();
  }
  
  public final void b(@chc rl paramrl)
  {
    val$callback.a(CardInputError.UNKNOWN);
  }
  
  public final void b(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    val$callback.a(CardInputError.UNKNOWN);
    rx.a(this$0, paramList, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     rx.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */