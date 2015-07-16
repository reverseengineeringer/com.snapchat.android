import android.text.TextUtils;
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

public final class avj
{
  private static final String TAG = "ServerChatConversationUtils";
  
  public static ChatConversation a(bid parambid)
  {
    if (parambid == null) {}
    String[] arrayOfString;
    String str;
    do
    {
      return null;
      arrayOfString = parambid.a().split("~");
      str = akr.l();
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
      akx.c().a((ChatConversation)localObject, parambid, false, false);
      if (!mIsUserInConversation)
      {
        parambid = mId;
        new zf().a((ChatConversation)localObject, bju.a.DELETE);
      }
      return (ChatConversation)localObject;
      i += 1;
      break;
      localObject = str;
    }
  }
  
  public static List<ChatFeedItem> a(List<bih> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    String str = akr.l();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      bih localbih = (bih)localIterator.next();
      if (localbih.d())
      {
        paramList = localbih.c();
        if (paramList.b()) {
          switch (paramList.a().d())
          {
          default: 
            paramList = new ale(paramList);
          }
        }
        for (;;)
        {
          paramList.d(localbih.g());
          localArrayList.add(paramList);
          break;
          paramList = new ald(paramList);
          continue;
          paramList = new ChatMedia(paramList);
          continue;
          ReleaseManager.a();
          ReleaseManager.k();
          paramList = new alc(paramList);
          continue;
          paramList = new alb(paramList);
          continue;
          paramList = new alb(paramList);
          continue;
          paramList = new ale(paramList);
        }
      }
      if (localbih.b())
      {
        localArrayList.add(avr.a(localbih.a()));
      }
      else if (localbih.f())
      {
        paramList = CashTransaction.a.a(localbih.e());
        if ((!TextUtils.equals(str, mRecipientUsername)) || (mTransactionStatus != CashTransaction.TransactionStatus.INITIATED))
        {
          paramList = new CashFeedItem(paramList);
          mIterToken = localbih.g();
          localArrayList.add(paramList);
        }
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     avj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */