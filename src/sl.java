import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class sl
  extends rl
{
  @Inject
  protected yj mCashAuthManager;
  private boolean mRetriedAfter401 = false;
  
  public sl()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  protected static tg a(@chc ti.a parama)
  {
    return new ti(parama);
  }
  
  public final void a(@chd CashTransaction paramCashTransaction)
  {
    paramCashTransaction = new rv();
    mListener = new rl.a()
    {
      public final void a(@chc rl paramAnonymousrl)
      {
        sl.c(sl.this);
      }
      
      public final void a(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        if ((paramAnonymousList == null) || (paramAnonymousList.isEmpty()))
        {
          sl.a(new ti.a()
          {
            public final void a()
            {
              a(null, true);
            }
            
            public final void a(int paramAnonymous2Int)
            {
              if ((paramAnonymous2Int == 401) && (!sl.a(sl.this)))
              {
                sl.b(sl.this);
                mCashAuthManager.a(null);
                a(null);
                return;
              }
              b(null, false);
            }
          }).execute();
          return;
        }
        b(null, false);
      }
      
      public final void b(@chc rl paramAnonymousrl)
      {
        sl.d(sl.this);
      }
      
      public final void b(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        b(null, false);
      }
    };
    paramCashTransaction.a(null);
  }
  
  protected final void a(@chd List<rl> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  protected final void b(@chd List<rl> paramList, boolean paramBoolean)
  {
    super.b(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_UNLINK_CARD_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     sl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */