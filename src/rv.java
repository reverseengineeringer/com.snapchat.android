import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class rv
  extends qv
{
  @Inject
  protected xn mCashAuthManager;
  private boolean mRetriedAfter401 = false;
  
  public rv()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  protected static sq a(@cgb ss.a parama)
  {
    return new ss(parama);
  }
  
  public final void a(@cgc CashTransaction paramCashTransaction)
  {
    paramCashTransaction = new rf();
    mListener = new qv.a()
    {
      public final void a(@cgb qv paramAnonymousqv)
      {
        rv.c(rv.this);
      }
      
      public final void a(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        if ((paramAnonymousList == null) || (paramAnonymousList.isEmpty()))
        {
          rv.a(new ss.a()
          {
            public final void a()
            {
              a(null, true);
            }
            
            public final void a(int paramAnonymous2Int)
            {
              if ((paramAnonymous2Int == 401) && (!rv.a(rv.this)))
              {
                rv.b(rv.this);
                mCashAuthManager.a(null);
                a(null);
                return;
              }
              b(null, false);
            }
          }).f();
          return;
        }
        b(null, false);
      }
      
      public final void b(@cgb qv paramAnonymousqv)
      {
        rv.d(rv.this);
      }
      
      public final void b(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        b(null, false);
      }
    };
    paramCashTransaction.a(null);
  }
  
  protected final void a(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  protected final void b(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.b(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_UNLINK_CARD_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */