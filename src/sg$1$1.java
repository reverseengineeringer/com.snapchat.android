import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class sg$1$1
  implements sx.a
{
  sg$1$1(sg.1 param1) {}
  
  public final void a(@chd sy paramsy)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramsy != null)
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
          this$1.val$transaction.a(td.a(payment.mState, payment.mCancellationReason));
          localObject2 = localObject1;
        }
      }
    }
    sg.a(this$1.this$0, (List)localObject2);
  }
  
  public final void a(@chd sy paramsy, int paramInt)
  {
    sg.b(this$1.this$0);
  }
}

/* Location:
 * Qualified Name:     sg.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */