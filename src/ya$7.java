import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.model.chat.CashFeedItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

final class ya$7
  implements qp.a
{
  ya$7(ya paramya, HashMap paramHashMap) {}
  
  private void b()
  {
    Collection localCollection = a.values();
    Iterator localIterator = localCollection.iterator();
    while (localIterator.hasNext()) {
      ((CashFeedItem)localIterator.next()).a(false);
    }
    CashFeedItemTable.a(SnapchatApplication.b(), localCollection);
  }
  
  public final void a()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED marking all items as viewed", new Object[0]);
    b();
  }
  
  public final void a(List<String> paramList)
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SUCCESS marked as viewed %d items", new Object[] { Integer.valueOf(paramList.size()) });
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      localArrayList.add(a.remove(str));
    }
    CashFeedItemTable.a(SnapchatApplication.b(), localArrayList);
    b();
  }
}

/* Location:
 * Qualified Name:     ya.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */