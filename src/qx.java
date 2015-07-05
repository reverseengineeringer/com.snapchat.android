import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.cash.SQAcceptTermsFragment;
import com.snapchat.android.fragments.cash.SQAcceptTermsFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;

public final class qx
  extends qv
{
  public final void a(@cgb CashTransaction paramCashTransaction)
  {
    if (ajx.T())
    {
      a(null, true);
      return;
    }
    paramCashTransaction = new SQAcceptTermsFragment();
    a = new SQAcceptTermsFragment.a()
    {
      public final void a()
      {
        qx.a(qx.this);
      }
      
      public final void b()
      {
        qx.b(qx.this);
      }
    };
    ban.a().a(new bdw(paramCashTransaction));
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.LOCAL_SQ_ACCEPT_TERMS_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     qx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */