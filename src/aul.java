import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import com.snapchat.android.model.CashTransaction.a;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class aul
{
  private static final String TAG = "ServerChatConversationUtils";
  
  public static ChatConversation a(bhd parambhd)
  {
    if (parambhd == null) {}
    String[] arrayOfString;
    String str;
    do
    {
      return null;
      arrayOfString = parambhd.a().split("~");
      str = ajx.l();
    } while (str == null);
    int j = arrayOfString.length;
    int i = 0;
    Object localObject;
    if (i < j)
    {
      localObject = arrayOfString[i];
      if (((String)localObject).equals(str)) {}
    }
    for (;;)
    {
      localObject = new ChatConversation(str, (String)localObject);
      akc.b().a((ChatConversation)localObject, parambhd, false, false);
      if (!mIsUserInConversation)
      {
        Timber.g("ServerChatConversationUtils", "CHAT-LOG: ServerChatConversation sending release message for %s", new Object[] { mId });
        new yj().a((ChatConversation)localObject, bit.a.DELETE);
      }
      return (ChatConversation)localObject;
      i += 1;
      break;
      localObject = str;
    }
  }
  
  public static List<ChatFeedItem> a(List<bhh> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    String str = ajx.l();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      bhh localbhh = (bhh)localIterator.next();
      if (localbhh.d())
      {
        paramList = localbhh.c();
        if (paramList.b()) {
          switch (paramList.a().d())
          {
          default: 
            paramList = new akj(paramList);
          }
        }
        for (;;)
        {
          paramList.d(localbhh.g());
          localArrayList.add(paramList);
          break;
          paramList = new aki(paramList);
          continue;
          paramList = new ChatMedia(paramList);
          continue;
          ReleaseManager.a();
          ReleaseManager.k();
          paramList = new akh(paramList);
          continue;
          paramList = new akg(paramList);
          continue;
          paramList = new akg(paramList);
          continue;
          paramList = new akj(paramList);
        }
      }
      if (localbhh.b())
      {
        localArrayList.add(aut.a(localbhh.a()));
      }
      else if (localbhh.f())
      {
        paramList = CashTransaction.a.a(localbhh.e());
        if ((!TextUtils.equals(str, mRecipientUsername)) || (mTransactionStatus != CashTransaction.TransactionStatus.INITIATED))
        {
          paramList = new CashFeedItem(paramList);
          mIterToken = localbhh.g();
          localArrayList.add(paramList);
        }
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     aul
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */