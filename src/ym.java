import android.text.TextUtils;
import android.util.Pair;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ym
{
  public static atw<ChatConversation> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(akc.b().e());
    Object localObject = ajv.g();
    if (localObject != null)
    {
      localObject = ((ajv)localObject).l().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Friend localFriend = (Friend)((Iterator)localObject).next();
        if (!a(localFriend)) {
          localArrayList.add(new ChatConversation(ajx.l(), localFriend.h(), true));
        }
      }
    }
    return atw.a(localArrayList);
  }
  
  @cgc
  public static Snap a(@cgb String arg0, String paramString2)
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
  
  @cgc
  public static ChatConversation a(String paramString)
  {
    Iterator localIterator = akc.b().e().iterator();
    while (localIterator.hasNext())
    {
      ChatConversation localChatConversation = (ChatConversation)localIterator.next();
      if (TextUtils.equals(paramString, mId)) {
        return localChatConversation;
      }
    }
    return null;
  }
  
  public static String a(@cgb ChatConversation paramChatConversation)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    paramChatConversation = mTheirUsername.split(",");
    int k = paramChatConversation.length;
    int j = 0;
    while (i < k)
    {
      localStringBuilder.append(atm.e(paramChatConversation[i].trim(), ajv.g()));
      j += 1;
      if (j != paramChatConversation.length) {
        localStringBuilder.append(", ");
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static boolean a(Friend paramFriend)
  {
    return b(paramFriend.h()) != null;
  }
  
  @cgc
  public static ChatConversation b(@cgc String paramString)
  {
    if ((ajv.g() == null) || (paramString == null)) {
      return null;
    }
    return a(axi.a(paramString));
  }
  
  @cgb
  public static List<CashFeedItem> b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = akc.b().e().iterator();
    while (localIterator.hasNext()) {
      localArrayList.addAll(((ChatConversation)localIterator.next()).E());
    }
    return localArrayList;
  }
  
  public static Pair<Integer, Integer> c(String paramString)
  {
    Iterator localIterator1 = akc.b().e().iterator();
    int j = 0;
    int i = 0;
    while (localIterator1.hasNext()) {
      synchronized (((ChatConversation)localIterator1.next()).o())
      {
        Iterator localIterator2 = ???.iterator();
        while (localIterator2.hasNext())
        {
          Object localObject = (ChatFeedItem)localIterator2.next();
          if ((localObject instanceof akb))
          {
            localObject = (akb)localObject;
            if ((TextUtils.equals(paramString, ((akb)localObject).Y())) && (!((akb)localObject).ao())) {
              i += 1;
            }
          }
          else if (((localObject instanceof aje)) && (!((aje)localObject).z()))
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
 * Qualified Name:     ym
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */