import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class vi
{
  final ChatConversation a;
  private final Object b;
  private ChatFeedItem.FeedIconPriority c;
  
  public vi(@q ChatConversation paramChatConversation)
  {
    a = paramChatConversation;
    b = new Object();
  }
  
  private static List<ChatFeedItem> a(List<ChatFeedItem> paramList)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator.next();
      if ((localChatFeedItem instanceof Snap)) {
        paramList = Snap.class.getSimpleName();
      }
      for (;;)
      {
        if (!localHashMap.containsKey(paramList)) {
          break label137;
        }
        if (localChatFeedItem.U() >= ((ChatFeedItem)localHashMap.get(paramList)).U()) {
          break;
        }
        localHashMap.put(paramList, localChatFeedItem);
        break;
        if ((localChatFeedItem instanceof akw)) {
          paramList = akw.class.getSimpleName();
        } else if ((localChatFeedItem instanceof CashFeedItem)) {
          paramList = CashFeedItem.class.getSimpleName();
        } else {
          paramList = localChatFeedItem.getClass().getSimpleName();
        }
      }
      label137:
      localHashMap.put(paramList, localChatFeedItem);
    }
    return new ArrayList(localHashMap.values());
  }
  
  private void a(ChatFeedItem paramChatFeedItem)
  {
    if ((!paramChatFeedItem.q()) && (!paramChatFeedItem.r())) {}
    Object localObject;
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (!(paramChatFeedItem instanceof Snap)) {
              break;
            }
            localObject = a.mLastSnapFromServer;
          } while ((localObject != null) && (paramChatFeedItem.U() < ((Snap)localObject).U()));
          a.mLastSnapFromServer = ((Snap)paramChatFeedItem);
          return;
          if (!(paramChatFeedItem instanceof akw)) {
            break;
          }
          localObject = a.mLastChatFromServer;
        } while ((localObject != null) && (paramChatFeedItem.U() < ((akw)localObject).U()));
        a.mLastChatFromServer = ((akw)paramChatFeedItem);
        return;
      } while (!(paramChatFeedItem instanceof CashFeedItem));
      localObject = a.mLastCashFromServer;
    } while ((localObject != null) && (paramChatFeedItem.U() < ((CashFeedItem)localObject).U()));
    a.mLastCashFromServer = ((CashFeedItem)paramChatFeedItem);
  }
  
  private boolean a(ChatFeedItem paramChatFeedItem, ChatFeedItem.FeedIconPriority paramFeedIconPriority1, ChatFeedItem.FeedIconPriority paramFeedIconPriority2)
  {
    if ((c != null) && (c.compareTo(paramFeedIconPriority1) > 0))
    {
      new StringBuilder("FEEDICON-LOG: updateItemForFeedIconAndPriorityIfNecessary not updating because ").append(paramFeedIconPriority1).append(" < ").append(c);
      return false;
    }
    paramFeedIconPriority1 = a.mItemsForFeedIcon;
    paramFeedIconPriority1.clear();
    paramFeedIconPriority1.add(paramChatFeedItem);
    new StringBuilder("FEEDICON-LOG: updateItemForFeedIconAndPriorityIfNecessary updated icons. Previous priority: ").append(c).append(" new priority: ").append(paramFeedIconPriority2).append(" items: ").append(paramChatFeedItem);
    c = paramFeedIconPriority2;
    return true;
  }
  
  private static boolean a(List<ChatFeedItem> paramList1, List<ChatFeedItem> paramList2)
  {
    if (paramList1.size() != paramList2.size()) {}
    while (!new HashSet(paramList1).equals(new HashSet(paramList2))) {
      return true;
    }
    return false;
  }
  
  private static ChatFeedItem b(List<ChatFeedItem> paramList)
  {
    Object localObject = null;
    Iterator localIterator = paramList.iterator();
    paramList = (List<ChatFeedItem>)localObject;
    ChatFeedItem localChatFeedItem;
    if (localIterator.hasNext())
    {
      localChatFeedItem = (ChatFeedItem)localIterator.next();
      localObject = localChatFeedItem;
      if (paramList != null) {
        if (localChatFeedItem.U() <= paramList.U()) {
          break label61;
        }
      }
    }
    label61:
    for (localObject = localChatFeedItem;; localObject = paramList)
    {
      paramList = (List<ChatFeedItem>)localObject;
      break;
      return paramList;
    }
  }
  
  private List<ChatFeedItem> b()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject3;
    int i;
    synchronized (a.o())
    {
      c(???);
      localObject2 = new HashSet(???);
      localObject3 = a.mLastSnapFromServer;
      Object localObject4 = a.mLastChatFromServer;
      CashFeedItem localCashFeedItem = a.mLastCashFromServer;
      if ((localObject3 != null) && (!TextUtils.isEmpty(((Snap)localObject3).d()))) {
        ((Set)localObject2).add(localObject3);
      }
      if (localObject4 != null) {
        ((Set)localObject2).add(localObject4);
      }
      if (localCashFeedItem != null) {
        ((Set)localObject2).add(localCashFeedItem);
      }
      if (((Set)localObject2).isEmpty()) {
        break label341;
      }
      localObject3 = new ArrayList();
      localObject2 = ((Set)localObject2).iterator();
      i = -1;
      while (((Iterator)localObject2).hasNext())
      {
        localObject4 = (ChatFeedItem)((Iterator)localObject2).next();
        int k = ((ChatFeedItem)localObject4).b(a);
        int j = i;
        if (k > i)
        {
          ((List)localObject3).clear();
          j = k;
        }
        i = j;
        if (k == j)
        {
          ((List)localObject3).add(localObject4);
          i = j;
        }
      }
    }
    Object localObject2 = ChatFeedItem.FeedIconPriority.values()[i];
    if (localObject2 == ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT)
    {
      ((List)localObject1).add(a.c());
      new StringBuilder("FEEDICON-LOG: getHighestPriorityItemsForIcon for ").append(a.mId).append(" (").append(localObject2).append("): ").append(localObject1);
    }
    for (;;)
    {
      return (List<ChatFeedItem>)localObject1;
      List localList1;
      if (localObject2 == ChatFeedItem.FeedIconPriority.NEW)
      {
        localList1 = a((List)localObject3);
        break;
      }
      localList1.add(b((List)localObject3));
      break;
      label341:
      new StringBuilder("FEEDICON-LOG: getHighestPriorityItemForIcon but no items in conversation ").append(a.mId);
    }
  }
  
  private void c(List<ChatFeedItem> paramList)
  {
    try
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        a((ChatFeedItem)localIterator.next());
      }
    }
    finally {}
  }
  
  public final boolean a()
  {
    new StringBuilder("FEEDICON-LOG: updateFeedIcons for ").append(a.mId);
    for (;;)
    {
      synchronized (b)
      {
        List localList1 = a.mItemsForFeedIcon;
        List localList2 = b();
        if (localList2.isEmpty()) {
          return false;
        }
        ChatFeedItem.FeedIconPriority localFeedIconPriority = ChatFeedItem.FeedIconPriority.values()[((ChatFeedItem)localList2.get(0)).b(a)];
        if ((localFeedIconPriority == ChatFeedItem.FeedIconPriority.CURRENTLY_TICKING) || (c != localFeedIconPriority)) {
          break label171;
        }
        if (a(localList1, localList2))
        {
          break label171;
          localList1.clear();
          localList1.addAll(localList2);
          c = localFeedIconPriority;
          new StringBuilder("FEEDICON-LOG: updateFeedIcons determined priority ").append(c).append(" with items: ").append(localList1);
          return bool;
        }
      }
      boolean bool = false;
      continue;
      label171:
      bool = true;
    }
  }
  
  public final boolean a(ChatFeedItem paramChatFeedItem, FeedIconChangeType paramFeedIconChangeType)
  {
    boolean bool;
    synchronized (b)
    {
      switch (vi.4.a[paramFeedIconChangeType.ordinal()])
      {
      case 1: 
        return false;
        new StringBuilder("FEEDICON-LOG: onItemReceived ").append(paramChatFeedItem);
        if ((c != null) && (c.compareTo(ChatFeedItem.FeedIconPriority.NEW) > 0))
        {
          new StringBuilder("FEEDICON-LOG: Previous priority is > NEW ").append(c);
          bool = false;
          label128:
          return bool;
        }
        break;
      }
    }
    a(paramChatFeedItem);
    if ((c != null) && (c.equals(ChatFeedItem.FeedIconPriority.NEW)))
    {
      paramFeedIconChangeType = new ArrayList(a.mItemsForFeedIcon);
      paramFeedIconChangeType.add(paramChatFeedItem);
      paramChatFeedItem = a(paramFeedIconChangeType);
      if (a(a.mItemsForFeedIcon, paramChatFeedItem))
      {
        a.mItemsForFeedIcon.clear();
        a.mItemsForFeedIcon.addAll(paramChatFeedItem);
        new StringBuilder("FEEDICON-LOG: items for feed icon: ").append(paramFeedIconChangeType);
      }
    }
    else
    {
      for (;;)
      {
        c = ChatFeedItem.FeedIconPriority.NEW;
        bool = true;
        break;
        a.mItemsForFeedIcon.clear();
        a.mItemsForFeedIcon.add(paramChatFeedItem);
      }
      paramFeedIconChangeType = ChatFeedItem.FeedIconPriority.CURRENTLY_TICKING;
      bool = a(paramChatFeedItem, paramFeedIconChangeType, paramFeedIconChangeType);
      return bool;
      new StringBuilder("FEEDICON-LOG: onItemViewed ").append(paramChatFeedItem);
      paramFeedIconChangeType = a.mItemsForFeedIcon;
      if ((paramChatFeedItem instanceof aka)) {
        if (paramChatFeedItem.b(a) == ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT.ordinal())
        {
          paramFeedIconChangeType.clear();
          paramFeedIconChangeType.add(a.c());
          new StringBuilder("FEEDICON-LOG: onItemViewed previous priority: ").append(c).append(" and priority is now UNOPENED_SNAP_AVAILABLE_NEXT with icon ").append(paramFeedIconChangeType);
          c = ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT;
          label409:
          a(paramChatFeedItem);
          new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
          {
            public final void run()
            {
              a.r();
            }
          }, 5000L);
          bool = true;
        }
      }
    }
    for (;;)
    {
      return bool;
      paramFeedIconChangeType.clear();
      paramFeedIconChangeType.add(paramChatFeedItem);
      new StringBuilder("FEEDICON-LOG: onItemViewed previous priority: ").append(c).append(" and priority is now RECENTLY_OPENED_LAST_SNAP with icon ").append(paramFeedIconChangeType);
      c = ChatFeedItem.FeedIconPriority.RECENTLY_OPENED_LAST_SNAP;
      break label409;
      if (((paramChatFeedItem instanceof ake)) && (paramFeedIconChangeType.size() == 1) && (((ChatFeedItem)paramFeedIconChangeType.get(0)).equals(paramChatFeedItem)))
      {
        new StringBuilder("FEEDICON-LOG: onItemViewed SentSnap and updating last item as viewed. Previous priority: ").append(c);
        a(paramChatFeedItem);
        bool = true;
        continue;
        new StringBuilder("FEEDICON-LOG: onItemSending ").append(paramChatFeedItem);
        paramFeedIconChangeType = ChatFeedItem.FeedIconPriority.SENDING;
        bool = a(paramChatFeedItem, paramFeedIconChangeType, paramFeedIconChangeType);
        return bool;
        new StringBuilder("FEEDICON-LOG: onItemSent ").append(paramChatFeedItem);
        bool = a(paramChatFeedItem, ChatFeedItem.FeedIconPriority.SENDING, ChatFeedItem.FeedIconPriority.RECENTLY_SENT);
        a(paramChatFeedItem);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
        {
          public final void run()
          {
            a.r();
          }
        }, 1100L);
        return bool;
        new StringBuilder("FEEDICON-LOG: onItemFailedToSend ").append(paramChatFeedItem);
        bool = a(paramChatFeedItem, ChatFeedItem.FeedIconPriority.SENDING, ChatFeedItem.FeedIconPriority.FAILED);
        if (paramChatFeedItem.p()) {
          new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
          {
            public final void run()
            {
              a.r();
            }
          }, 2000L);
        }
        return bool;
        new StringBuilder("FEEDICON-LOG: onItemLoading ").append(paramChatFeedItem);
        paramFeedIconChangeType = ChatFeedItem.FeedIconPriority.NEW;
        bool = a(paramChatFeedItem, paramFeedIconChangeType, paramFeedIconChangeType);
        return bool;
        new StringBuilder("FEEDICON-LOG: onItemLoaded ").append(paramChatFeedItem);
        paramFeedIconChangeType = ChatFeedItem.FeedIconPriority.NEW;
        bool = a(paramChatFeedItem, paramFeedIconChangeType, paramFeedIconChangeType);
        return bool;
        new StringBuilder("FEEDICON-LOG: onItemFailedToLoad ").append(paramChatFeedItem);
        paramFeedIconChangeType = ChatFeedItem.FeedIconPriority.NEW;
        bool = a(paramChatFeedItem, paramFeedIconChangeType, paramFeedIconChangeType);
        return bool;
        break;
        bool = false;
        break label128;
      }
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     vi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */