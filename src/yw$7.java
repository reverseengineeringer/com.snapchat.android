import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class yw$7
  implements rf.a
{
  yw$7(yw paramyw, Map paramMap, ChatConversation paramChatConversation) {}
  
  private void b()
  {
    Collection localCollection = a.values();
    Iterator localIterator = localCollection.iterator();
    while (localIterator.hasNext()) {
      nextmCashTransaction.mFailToSendReleaseMessage = true;
    }
    CashFeedItemTable.a(SnapchatApplication.b(), localCollection);
  }
  
  public final void a()
  {
    b();
  }
  
  public final void a(List<String> paramList)
  {
    paramList.size();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(a.remove(str));
    }
    yw.b(b.mId, paramList);
    CashFeedItemTable.a(SnapchatApplication.b(), localArrayList);
    b();
  }
}

/* Location:
 * Qualified Name:     yw.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */