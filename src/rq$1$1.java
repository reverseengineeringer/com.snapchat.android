import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rq$1$1
  implements sh.a
{
  rq$1$1(rq.1 param1) {}
  
  public final void a(@cgc si paramsi)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramsi != null)
    {
      Object localObject1 = localObject3;
      if (blockers != null)
      {
        localObject1 = localObject3;
        if (blockers.a()) {
          localObject1 = blockers.b();
        }
      }
      localObject2 = localObject1;
      if (this$1.val$transaction != null)
      {
        localObject2 = localObject1;
        if (payment != null)
        {
          this$1.val$transaction.a(sn.a(payment.mState, payment.mCancellationReason));
          localObject2 = localObject1;
        }
      }
    }
    rq.a(this$1.this$0, (List)localObject2);
  }
  
  public final void a(@cgc si paramsi, int paramInt)
  {
    Timber.b("SQPhoneNumberBlocker", "CASH-LOG: FAILED resolve SQPhoneNumberBlocker statusCode[%d]", new Object[] { Integer.valueOf(paramInt) });
    rq.b(this$1.this$0);
  }
}

/* Location:
 * Qualified Name:     rq.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */