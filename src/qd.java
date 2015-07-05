import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class qd
{
  private static final String TAG = "BlockerManager";
  @Inject
  protected qh mCashProviderManager;
  
  @Inject
  public qd()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@cgb CashFeedItem paramCashFeedItem, @cgc qd.a parama)
  {
    String str = mCashTransaction.mProvider;
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a("snapcash").b());
      paramCashFeedItem.a(mCashProviderManager.a(str).b());
      paramCashFeedItem.a(parama);
      return;
    }
    qh.a();
    parama.b();
  }
  
  public final void b(@cgb CashFeedItem paramCashFeedItem, @cgc qd.a parama)
  {
    String str = mCashTransaction.mProvider;
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a("snapcash").c());
      paramCashFeedItem.a(mCashProviderManager.a(str).c());
      paramCashFeedItem.a(parama);
      return;
    }
    qh.a();
    parama.b();
  }
  
  public final void c(@cgb CashFeedItem paramCashFeedItem, @cgc qd.a parama)
  {
    String str = mCashTransaction.mProvider;
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a("snapcash").d());
      paramCashFeedItem.a(mCashProviderManager.a(str).d());
      paramCashFeedItem.a(parama);
    }
    do
    {
      return;
      qh.a();
    } while (parama == null);
    parama.b();
  }
  
  public final void d(@cgb CashFeedItem paramCashFeedItem, @cgc qd.a parama)
  {
    String str = mCashTransaction.mProvider;
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a("snapcash").e());
      paramCashFeedItem.a(mCashProviderManager.a(str).e());
      paramCashFeedItem.a(parama);
    }
    do
    {
      return;
      qh.a();
    } while (parama == null);
    parama.b();
  }
  
  public final void e(@cgb CashFeedItem paramCashFeedItem, @cgc qd.a parama)
  {
    String str = mCashTransaction.mProvider;
    paramCashFeedItem.a(mCashProviderManager.a("snapcash").f());
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a(str).f());
      paramCashFeedItem.a(parama);
      return;
    }
    qh.a();
    parama.b();
  }
  
  public final void f(@cgb CashFeedItem paramCashFeedItem, @cgc qd.a parama)
  {
    String str = mCashTransaction.mProvider;
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a("snapcash").g());
      paramCashFeedItem.a(mCashProviderManager.a(str).g());
      paramCashFeedItem.a(parama);
      return;
    }
    qh.a();
    parama.b();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     qd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */