import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority;
import com.snapchat.android.model.chat.ChatMedia;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class yn
{
  private static yn a;
  
  @cgb
  public static List<ChatFeedItem> a(@cgb ChatConversation paramChatConversation, @cgb List<ChatFeedItem> paramList)
  {
    if (paramList.size() == 0) {
      return new ArrayList();
    }
    paramList = c(paramChatConversation, paramList);
    int i = ((ChatFeedItem)paramList.get(0)).a(paramChatConversation);
    if (i == ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT.ordinal()) {
      return new ArrayList(Arrays.asList(new ChatFeedItem[] { paramChatConversation.c() }));
    }
    if (i == ChatFeedItem.FeedIconPriority.NEW.ordinal()) {
      return b(paramChatConversation, paramList);
    }
    return d(paramChatConversation, paramList);
  }
  
  public static yn a()
  {
    try
    {
      if (a == null) {
        a = new yn();
      }
      yn localyn = a;
      return localyn;
    }
    finally {}
  }
  
  @cgb
  private static List<ChatFeedItem> b(@cgb ChatConversation paramChatConversation, @cgb List<ChatFeedItem> paramList)
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
          break label146;
        }
        if (localChatFeedItem.b(paramChatConversation) >= ((ChatFeedItem)localHashMap.get(paramList)).b(paramChatConversation)) {
          break;
        }
        localHashMap.put(paramList, localChatFeedItem);
        break;
        if ((localChatFeedItem instanceof akb)) {
          paramList = akb.class.getSimpleName();
        } else if ((localChatFeedItem instanceof CashFeedItem)) {
          paramList = CashFeedItem.class.getSimpleName();
        } else {
          paramList = localChatFeedItem.getClass().getSimpleName();
        }
      }
      label146:
      localHashMap.put(paramList, localChatFeedItem);
    }
    return new ArrayList(localHashMap.values());
  }
  
  @cgb
  private static List<ChatFeedItem> c(@cgb ChatConversation paramChatConversation, @cgb List<ChatFeedItem> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    int i = -1;
    while (paramList.hasNext())
    {
      ChatFeedItem localChatFeedItem = (ChatFeedItem)paramList.next();
      int k = localChatFeedItem.a(paramChatConversation);
      int j = i;
      if (k > i)
      {
        localArrayList.clear();
        j = k;
      }
      i = j;
      if (k == j)
      {
        localArrayList.add(localChatFeedItem);
        i = j;
      }
    }
    return localArrayList;
  }
  
  @cgb
  private static List<ChatFeedItem> d(@cgb ChatConversation paramChatConversation, @cgb List<ChatFeedItem> paramList)
  {
    ChatFeedItem localChatFeedItem = (ChatFeedItem)paramList.get(0);
    Iterator localIterator = paramList.iterator();
    paramList = localChatFeedItem;
    if (localIterator.hasNext())
    {
      localChatFeedItem = (ChatFeedItem)localIterator.next();
      if (localChatFeedItem.b(paramChatConversation) <= paramList.b(paramChatConversation)) {
        break label81;
      }
      paramList = localChatFeedItem;
    }
    label81:
    for (;;)
    {
      break;
      return new ArrayList(Arrays.asList(new ChatFeedItem[] { paramList }));
    }
  }
  
  public final void a(@cgb final ChatConversation paramChatConversation, boolean paramBoolean)
  {
    Object localObject1 = mId;
    Object localObject2 = mItemsForFeedIcon;
    if (mIsStub)
    {
      mItemsForFeedIcon = new ArrayList();
      return;
    }
    boolean bool2 = false;
    boolean bool1 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    Snap localSnap = mLastSnapFromServer;
    akb localakb = mLastChatFromServer;
    CashFeedItem localCashFeedItem = mLastCashFromServer;
    List localList = paramChatConversation.o();
    Object localObject3;
    if (localObject2 != null) {
      try
      {
        localObject3 = ((List)localObject2).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (ChatFeedItem)((Iterator)localObject3).next();
          if ((((ChatFeedItem)localObject4).O()) && (!localList.contains(localObject4))) {
            ((ChatFeedItem)localObject4).p();
          }
        }
        localObject3 = a(paramChatConversation, localList);
      }
      finally {}
    }
    Object localObject4 = localList.iterator();
    for (;;)
    {
      label161:
      ChatFeedItem localChatFeedItem;
      if (((Iterator)localObject4).hasNext())
      {
        localChatFeedItem = (ChatFeedItem)((Iterator)localObject4).next();
        if ((localChatFeedItem instanceof Snap))
        {
          bool5 = bool2;
          if (!(localChatFeedItem instanceof aje)) {
            break label796;
          }
          bool5 = bool2;
          if (((aje)localChatFeedItem).z()) {
            break label796;
          }
          bool5 = true;
          if (!((aje)localChatFeedItem).aj()) {
            break label796;
          }
          bool2 = true;
          bool5 = true;
        }
      }
      for (;;)
      {
        if ((localSnap == null) || (localChatFeedItem.W() >= localSnap.W()))
        {
          mLastSnapFromServer = ((Snap)localChatFeedItem);
          bool3 = bool2;
          bool2 = bool5;
          break label161;
          if ((localChatFeedItem instanceof akb))
          {
            if (((!(localChatFeedItem instanceof aki)) && (!(localChatFeedItem instanceof ChatMedia)) && (!(localChatFeedItem instanceof akj))) || (!TextUtils.equals(localChatFeedItem.j(), mTheirUsername)) || (localChatFeedItem.ao())) {
              break label778;
            }
            bool1 = true;
          }
          label534:
          label712:
          label778:
          for (;;)
          {
            if ((localakb == null) || (localChatFeedItem.W() >= localakb.W()))
            {
              mLastChatFromServer = ((akb)localChatFeedItem);
              break label161;
              if ((localChatFeedItem instanceof CashFeedItem))
              {
                if ((!axi.a(localChatFeedItem)) && (!((CashFeedItem)localChatFeedItem).h())) {
                  bool4 = true;
                }
                for (;;)
                {
                  if ((localCashFeedItem != null) && (localChatFeedItem.W() < localCashFeedItem.W())) {
                    break label803;
                  }
                  mLastCashFromServer = ((CashFeedItem)localChatFeedItem);
                  break label803;
                  if (localakb != null) {
                    ((List)localObject3).add(localakb);
                  }
                  if (localSnap != null) {
                    ((List)localObject3).add(localSnap);
                  }
                  if (localCashFeedItem != null) {
                    ((List)localObject3).add(localCashFeedItem);
                  }
                  localList = a(paramChatConversation, (List)localObject3);
                  if (localList.isEmpty())
                  {
                    Timber.g("FeedIconManager", "FEEDICON-LOG: We couldn't find feed icons from existing content for %s", new Object[] { localObject1 });
                    if ((localObject2 != null) && (!((List)localObject2).isEmpty())) {
                      break;
                    }
                    if ((localObject2 != null) && (((List)localObject2).size() == localList.size())) {
                      break label712;
                    }
                  }
                  for (int i = 1;; i = 0)
                  {
                    mItemsForFeedIcon = localList;
                    if (!localList.isEmpty())
                    {
                      localObject1 = (ChatFeedItem)localList.get(0);
                      localObject2 = mItemForFeedIcon;
                      if ((localObject2 == null) || (!localObject1.equals(localObject2))) {
                        i = 1;
                      }
                    }
                    for (mItemForFeedIcon = ((ChatFeedItem)localObject1);; mItemForFeedIcon = null)
                    {
                      if (i != 0) {
                        Timber.g("FeedIconManager", "FEEDICON-LOG: Feed icons changed for %s: %s", new Object[] { mId, mItemsForFeedIcon });
                      }
                      paramChatConversation.d(bool1);
                      mHasUnviewedReceivedSnaps = bool2;
                      mHasUnviewedSnapsWithAudio = bool3;
                      mHasUnviewedCash = bool4;
                      if (!paramBoolean) {
                        break;
                      }
                      ban.a().a(new bcv());
                      return;
                      Collections.sort(localList, new Comparator() {});
                      break label534;
                    }
                  }
                }
              }
              bool5 = bool1;
              bool6 = bool2;
              bool1 = bool4;
              bool2 = bool3;
              bool3 = bool5;
              bool4 = bool6;
              break label827;
            }
            bool5 = bool4;
            bool4 = bool1;
            bool6 = bool2;
            bool1 = bool5;
            bool2 = bool3;
            bool3 = bool4;
            bool4 = bool6;
            break label827;
          }
        }
        bool3 = bool1;
        bool1 = bool4;
        bool4 = bool5;
        break label827;
        label796:
        bool2 = bool3;
      }
      label803:
      boolean bool5 = bool4;
      boolean bool6 = bool3;
      bool4 = bool2;
      bool3 = bool1;
      bool2 = bool6;
      bool1 = bool5;
      label827:
      bool5 = bool3;
      bool6 = bool4;
      bool4 = bool1;
      bool3 = bool2;
      bool1 = bool5;
      bool2 = bool6;
    }
  }
}

/* Location:
 * Qualified Name:     yn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */