import android.text.TextUtils;
import android.util.Pair;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class zi
{
  @chd
  public static Snap a(@chc String arg0, String paramString2)
  {
    ??? = b(???);
    if (??? == null) {
      return null;
    }
    synchronized (???.o())
    {
      Iterator localIterator = ???.iterator();
      while (localIterator.hasNext())
      {
        ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator.next();
        if (((localChatFeedItem instanceof Snap)) && (localChatFeedItem.d().equals(paramString2)))
        {
          paramString2 = (Snap)localChatFeedItem;
          return paramString2;
        }
      }
    }
    return null;
  }
  
  @chd
  public static ChatConversation a(String paramString)
  {
    Iterator localIterator = akx.c().f().iterator();
    while (localIterator.hasNext())
    {
      ChatConversation localChatConversation = (ChatConversation)localIterator.next();
      if (TextUtils.equals(paramString, mId)) {
        return localChatConversation;
      }
    }
    return null;
  }
  
  public static String a(@chc ChatConversation paramChatConversation)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    paramChatConversation = mTheirUsername.split(",");
    int k = paramChatConversation.length;
    int j = 0;
    while (i < k)
    {
      localStringBuilder.append(auk.e(paramChatConversation[i].trim(), akp.g()));
      j += 1;
      if (j != paramChatConversation.length) {
        localStringBuilder.append(", ");
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  @chc
  public static List<CashFeedItem> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = akx.c().f().iterator();
    while (localIterator.hasNext()) {
      localArrayList.addAll(((ChatConversation)localIterator.next()).D());
    }
    return localArrayList;
  }
  
  @chd
  public static ChatConversation b(@chd String paramString)
  {
    if ((akp.g() == null) || (paramString == null)) {
      return null;
    }
    return a(ayg.a(paramString));
  }
  
  public static Pair<Integer, Integer> c(String paramString)
  {
    Iterator localIterator1 = akx.c().f().iterator();
    int j = 0;
    int i = 0;
    while (localIterator1.hasNext()) {
      synchronized (((ChatConversation)localIterator1.next()).o())
      {
        Iterator localIterator2 = ???.iterator();
        while (localIterator2.hasNext())
        {
          Object localObject = (ChatFeedItem)localIterator2.next();
          if ((localObject instanceof akw))
          {
            localObject = (akw)localObject;
            if ((TextUtils.equals(paramString, ((akw)localObject).Z())) && (!((akw)localObject).am())) {
              i += 1;
            }
          }
          else if (((localObject instanceof aka)) && (!((aka)localObject).A()))
          {
            j += 1;
          }
        }
      }
    }
    return Pair.create(Integer.valueOf(i), Integer.valueOf(j));
  }
}

/* Location:
 * Qualified Name:     zi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */