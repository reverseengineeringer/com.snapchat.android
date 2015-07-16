import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class qt
{
  private static final String TAG = "BlockerManager";
  @Inject
  protected qx mCashProviderManager;
  
  @Inject
  public qt()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@chc CashFeedItem paramCashFeedItem, @chd qt.a parama)
  {
    String str = mCashTransaction.mProvider;
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a("snapcash").b());
      paramCashFeedItem.a(mCashProviderManager.a(str).b());
      paramCashFeedItem.a(parama);
      return;
    }
    qx.a();
    parama.b();
  }
  
  public final void b(@chc CashFeedItem paramCashFeedItem, @chd qt.a parama)
  {
    String str = mCashTransaction.mProvider;
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a("snapcash").c());
      paramCashFeedItem.a(mCashProviderManager.a(str).c());
      paramCashFeedItem.a(parama);
      return;
    }
    qx.a();
    parama.b();
  }
  
  public final void c(@chc CashFeedItem paramCashFeedItem, @chd qt.a parama)
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
      qx.a();
    } while (parama == null);
    parama.b();
  }
  
  public final void d(@chc CashFeedItem paramCashFeedItem, @chd qt.a parama)
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
      qx.a();
    } while (parama == null);
    parama.b();
  }
  
  public final void e(@chc CashFeedItem paramCashFeedItem, @chd qt.a parama)
  {
    String str = mCashTransaction.mProvider;
    paramCashFeedItem.a(mCashProviderManager.a("snapcash").f());
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a(str).f());
      paramCashFeedItem.a(parama);
      return;
    }
    qx.a();
    parama.b();
  }
  
  public final void f(@chc CashFeedItem paramCashFeedItem, @chd qt.a parama)
  {
    String str = mCashTransaction.mProvider;
    if (mCashProviderManager.b(str))
    {
      paramCashFeedItem.a(mCashProviderManager.a("snapcash").g());
      paramCashFeedItem.a(mCashProviderManager.a(str).g());
      paramCashFeedItem.a(parama);
      return;
    }
    qx.a();
    parama.b();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     qt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */