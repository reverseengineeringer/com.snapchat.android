import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.verification.URLVerificationFragment;
import com.snapchat.android.fragments.verification.URLVerificationFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;

public final class so
  extends rl
{
  private static final String TAG = "SQUrlBlocker";
  @chc
  private final String mUrl;
  
  public so(@chc String paramString)
  {
    mUrl = paramString;
  }
  
  public final void a(@chc CashTransaction paramCashTransaction)
  {
    paramCashTransaction = new URLVerificationFragment();
    paramCashTransaction.a(mUrl);
    URLVerificationFragment.a local1 = new URLVerificationFragment.a()
    {
      public final void a()
      {
        so.a(so.this);
      }
      
      public final void b()
      {
        so.b(so.this);
      }
    };
    e = false;
    d = false;
    a = local1;
    bbo.a().a(new bev(paramCashTransaction));
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_URL_BLOCKER;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
    } while (super.equals(paramObject));
    return false;
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
}

/* Location:
 * Qualified Name:     so
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */