import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.cash.SQAcceptTermsFragment;
import com.snapchat.android.fragments.cash.SQAcceptTermsFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;

public final class rn
  extends rl
{
  public final void a(@chc CashTransaction paramCashTransaction)
  {
    if (akr.T())
    {
      a(null, true);
      return;
    }
    paramCashTransaction = new SQAcceptTermsFragment();
    a = new SQAcceptTermsFragment.a()
    {
      public final void a()
      {
        rn.a(rn.this);
      }
      
      public final void b()
      {
        rn.b(rn.this);
      }
    };
    bbo.a().a(new bev(paramCashTransaction));
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.LOCAL_SQ_ACCEPT_TERMS_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */