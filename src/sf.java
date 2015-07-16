import android.text.TextUtils;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.fragments.cash.SecurityCodeFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

public final class sf
  extends rl
{
  private static final String TAG = "SQInitiationConfirmBlocker";
  
  public final void a(@chc final CashTransaction paramCashTransaction)
  {
    final Object localObject = mTransactionId;
    localObject = mRecipientUsername;
    paramCashTransaction.a();
    if (TextUtils.isEmpty(mSecurityCode))
    {
      localObject = new SecurityCodeFragment();
      b = new SecurityCodeFragment.a()
      {
        public final void a()
        {
          sf.b(sf.this);
        }
        
        public final void a(@chc String paramAnonymousString)
        {
          paramCashTransactionmSecurityCode = paramAnonymousString;
          localObject.l();
          sf.a(sf.this);
        }
        
        public final void b()
        {
          sf.c(sf.this);
        }
      };
      bbo.a().a(new bev((SnapchatFragment)localObject));
      return;
    }
    a(null, true);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_INITIATION_CONFIRM_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     sf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */