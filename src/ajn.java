import com.snapchat.android.Timber;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.PostStatus;
import com.snapchat.android.model.MediaMailingMetadata.SendStatus;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.snapchat.android.util.cache.DiscoverShareCache;
import com.snapchat.android.util.cache.DiscoverShareCache.DiscoverShareFileType;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ajn
{
  private static ajn sInstance;
  public Map<String, aim> mFailedChatMediaSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  protected Map<String, LinkedHashMap<String, aim>> mFailedPostSnapbryoMaps = Collections.synchronizedMap(new HashMap());
  protected Map<String, aim> mFailedSendDSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  public Map<String, aim> mFailedSendSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  private Map<String, LinkedHashMap<String, aim>> mPostingSnapbryoMaps = Collections.synchronizedMap(new HashMap());
  public Map<String, aim> mSendingDSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  public Map<String, aim> mSendingSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  private final Object mSnapWombMutex = new Object();
  
  public static ajn a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new ajn();
      }
      ajn localajn = sInstance;
      return localajn;
    }
    finally {}
  }
  
  private void a(Map<String, LinkedHashMap<String, aim>> paramMap, String paramString, aim paramaim)
  {
    synchronized (mSnapWombMutex)
    {
      LinkedHashMap localLinkedHashMap2 = (LinkedHashMap)paramMap.get(paramString);
      LinkedHashMap localLinkedHashMap1 = localLinkedHashMap2;
      if (localLinkedHashMap2 == null)
      {
        localLinkedHashMap1 = new LinkedHashMap();
        paramMap.put(paramString, localLinkedHashMap1);
      }
      localLinkedHashMap1.put(mClientId, paramaim);
      return;
    }
  }
  
  private void a(Map<String, LinkedHashMap<String, aim>> paramMap, String paramString1, String paramString2)
  {
    synchronized (mSnapWombMutex)
    {
      paramMap = (LinkedHashMap)paramMap.get(paramString1);
      if (paramMap == null) {
        return;
      }
      paramMap.remove(paramString2);
      return;
    }
  }
  
  public static void b()
  {
    try
    {
      sInstance = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void b(Map<String, LinkedHashMap<String, aim>> paramMap, String paramString, aim paramaim)
  {
    a(paramMap, paramString, mClientId);
  }
  
  public final ArrayList<aim> a(Map<String, aim> paramMap)
  {
    ArrayList localArrayList;
    for (;;)
    {
      aim localaim;
      synchronized (mSnapWombMutex)
      {
        localArrayList = new ArrayList();
        paramMap = paramMap.values().iterator();
        if (!paramMap.hasNext()) {
          break;
        }
        localaim = (aim)paramMap.next();
        if (System.currentTimeMillis() - mTime.getTime() < 86400000L) {
          localArrayList.add(localaim);
        }
      }
      paramMap.remove();
      a(localaim);
    }
    return localArrayList;
  }
  
  public final LinkedHashMap<String, aim> a(String paramString)
  {
    synchronized (mSnapWombMutex)
    {
      paramString = (LinkedHashMap)mPostingSnapbryoMaps.get(paramString);
      if (paramString == null)
      {
        paramString = new LinkedHashMap();
        return paramString;
      }
      paramString = new LinkedHashMap(paramString);
      return paramString;
    }
  }
  
  public final void a(aim paramaim)
  {
    Object localObject2;
    Object localObject3;
    synchronized (mSnapWombMutex)
    {
      localObject2 = mClientId;
      localObject3 = (ajk)mMediaMailingMetadata;
      if (mSnapType == Mediabryo.SnapType.SNAP)
      {
        mSendingSnapbryos.remove(localObject2);
        mFailedSendSnapbryos.remove(localObject2);
        paramaim = mPostToStories.iterator();
        if (!paramaim.hasNext()) {
          break label214;
        }
        a(nextmStoryId, (String)localObject2);
      }
    }
    if (mSnapType == Mediabryo.SnapType.DISCOVER)
    {
      mSendingDSnapbryos.remove(localObject2);
      mFailedSendDSnapbryos.remove(localObject2);
      localObject2 = akc.b();
      localObject3 = mMediaMailingMetadata;
      int i = ((MediaMailingMetadata)localObject3).d().size();
      if (i != 0)
      {
        if (i != 1) {
          break label217;
        }
        localObject2 = ((akc)localObject2).a(((MediaMailingMetadata)localObject3).e());
        paramaim = (akh)((ChatConversation)localObject2).d(mClientId);
        if (paramaim != null)
        {
          mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED_AND_NON_RECOVERABLE;
          if ((localObject2 != null) && (paramaim != null)) {
            ((ChatConversation)localObject2).b(paramaim);
          }
        }
      }
    }
    for (;;)
    {
      label214:
      return;
      label217:
      paramaim = ((akc)localObject2).b(((MediaMailingMetadata)localObject3).e());
      if (paramaim != null) {
        ((akc)localObject2).b(mId, true);
      }
    }
  }
  
  public final void a(aim paramaim, MediaMailingMetadata.PostStatus paramPostStatus)
  {
    for (;;)
    {
      String str;
      aim localaim;
      synchronized (mSnapWombMutex)
      {
        if (mSnapType != Mediabryo.SnapType.SNAP) {
          return;
        }
        Object localObject2 = (ajk)mMediaMailingMetadata;
        ((ajk)localObject2).a(paramPostStatus);
        Object localObject3 = mPostToStories;
        paramPostStatus = mPostStatus;
        localObject2 = ((ArrayList)localObject3).iterator();
        if (!((Iterator)localObject2).hasNext()) {
          break label285;
        }
        localObject3 = (ajc)((Iterator)localObject2).next();
        str = mStoryId;
        Object localObject4 = new ArrayList();
        ((ArrayList)localObject4).add(localObject3);
        localaim = paramaim.a();
        mMediaMailingMetadata).mPostToStories = ((ArrayList)localObject4);
        switch (paramPostStatus)
        {
        case ???: 
          localObject4 = amStories;
          if (((Map)localObject4).containsKey(str)) {
            continue;
          }
          ((Map)localObject4).put(str, new StoryGroup(str, mStoryGroupDisplayName));
        }
      }
      b(mPostingSnapbryoMaps, str, localaim);
      continue;
      b(mPostingSnapbryoMaps, str, localaim);
      a(mFailedPostSnapbryoMaps, str, localaim);
      continue;
      b(mFailedPostSnapbryoMaps, str, localaim);
      a(mPostingSnapbryoMaps, str, localaim);
      continue;
      label285:
      return;
    }
  }
  
  public final void a(aim paramaim, MediaMailingMetadata.SendStatus paramSendStatus)
  {
    boolean bool = false;
    for (;;)
    {
      label88:
      MediaMailingMetadata localMediaMailingMetadata;
      int j;
      synchronized (mSnapWombMutex)
      {
        mMediaMailingMetadata.mSendStatus = paramSendStatus;
        if (ajv.g() == null)
        {
          Timber.f("ConversationUtils", "User has been logged out", new Object[0]);
          if (mSnapType != Mediabryo.SnapType.SNAP) {
            break label856;
          }
        }
        switch (ajn.1.$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$SendStatus[paramSendStatus.ordinal()])
        {
        case 1: 
          return;
          localObject1 = akc.b();
          localMediaMailingMetadata = mMediaMailingMetadata;
          j = localMediaMailingMetadata.d().size();
          if (j > 1)
          {
            localObject1 = ((akc)localObject1).b(localMediaMailingMetadata.e());
            if (localObject1 != null) {
              break label208;
            }
            Timber.f("ConversationUtils", "Conversation is null : Recipients size = " + localMediaMailingMetadata.d().size() + ", Recipient String = " + localMediaMailingMetadata.e(), new Object[0]);
          }
          break;
        }
      }
      Object localObject1 = ((akc)localObject1).a(localMediaMailingMetadata.e());
      continue;
      label208:
      int i;
      Object localObject2;
      if (mUploadStatus != MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE)
      {
        i = 1;
        break label988;
        mIsSavableConversation = bool;
        Object localObject3;
        if (mSnapType == Mediabryo.SnapType.SNAP)
        {
          localObject3 = ((ChatConversation)localObject1).c(mClientId);
          localObject2 = localObject3;
          if (localObject3 == null) {
            localObject2 = new aji(paramaim);
          }
          if ((j == 1) && (i == 0)) {
            mIsSavableSnap = false;
          }
        }
        label287:
        switch (ym.1.a[mSendStatus.ordinal()])
        {
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
          for (;;)
          {
            label332:
            yn.a().a((ChatConversation)localObject1, false);
            ban.a().a(new baz(mId, ((aji)localObject2).d()));
            ban.a().a(new ben());
            break;
            mIsSavableSnap = true;
            break label287;
            ((ChatConversation)localObject1).a((aji)localObject2);
            continue;
            ((ChatConversation)localObject1).l(((aji)localObject2).d());
            mTimestamp = System.currentTimeMillis();
            Timber.c("ChatConversation", "SNAP-LOG: setSendingSnapFailed updated conversation timestamp for %s to %d but did not call sortAndUpdateConversationsList", new Object[] { mId, Long.valueOf(mTimestamp) });
            mFailedSnaps.add(localObject2);
            ((aji)localObject2).e();
            ((ChatConversation)localObject1).c((ChatFeedItem)localObject2);
            continue;
            ((ChatConversation)localObject1).j(((aji)localObject2).d());
            mTimestamp = System.currentTimeMillis();
            Timber.c("ChatConversation", "SNAP-LOG: onSendOrRetrySnap updated conversation timestamp for %s to %d but did not call sortAndUpdateConversationsList", new Object[] { mId, Long.valueOf(mTimestamp) });
            mFailedSnaps.remove(localObject2);
            ((ChatConversation)localObject1).c((ChatFeedItem)localObject2);
          }
          if (mSnapType != Mediabryo.SnapType.DISCOVER) {
            continue;
          }
          localObject3 = (akh)((ChatConversation)localObject1).d(mClientId);
          localObject2 = localObject3;
          if (localObject3 == null)
          {
            localObject2 = new akh(paramaim);
            ((ChatConversation)localObject1).a((ChatFeedItem)localObject2);
          }
          switch (ym.1.a[mSendStatus.ordinal()])
          {
          }
          break;
        }
      }
      while (mSendStatus != MediaMailingMetadata.SendStatus.SENT)
      {
        mTimestamp = System.currentTimeMillis();
        yn.a().a((ChatConversation)localObject1, false);
        ban.a().a(new baz(mId, ((akh)localObject2).d()));
        ban.a().a(new ben());
        break;
        mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
        ((ChatConversation)localObject1).b((ChatFeedItem)localObject2);
        continue;
        mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
        ((ChatConversation)localObject1).l(((akh)localObject2).d());
        continue;
        mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
        ((ChatConversation)localObject1).j(((akh)localObject2).d());
        continue;
        mSendingSnapbryos.remove(mClientId);
        break label88;
        mSendingSnapbryos.remove(mClientId);
        mFailedSendSnapbryos.put(mClientId, paramaim);
        break label88;
        mFailedSendSnapbryos.remove(mClientId);
        mSendingSnapbryos.put(mClientId, paramaim);
        break label88;
        label856:
        if (mSnapType != Mediabryo.SnapType.DISCOVER) {
          break label88;
        }
        switch (ajn.1.$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$SendStatus[paramSendStatus.ordinal()])
        {
        case 1: 
          mSendingDSnapbryos.remove(mClientId);
          break;
        case 2: 
          mSendingDSnapbryos.remove(mClientId);
          mFailedSendDSnapbryos.put(mClientId, paramaim);
          break;
        case 3: 
        case 4: 
          mFailedSendDSnapbryos.remove(mClientId);
          mSendingDSnapbryos.put(mClientId, paramaim);
          break;
          break;
          label988:
          while ((i != 0) || (j == 1))
          {
            bool = true;
            break;
            break label332;
            i = 0;
          }
        }
      }
    }
  }
  
  public final void a(aim paramaim, MediaMailingMetadata.UploadStatus paramUploadStatus)
  {
    for (;;)
    {
      synchronized (mSnapWombMutex)
      {
        mMediaMailingMetadata.mUploadStatus = paramUploadStatus;
        switch (ajn.1.$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$UploadStatus[paramUploadStatus.ordinal()])
        {
        case 1: 
          return;
        case 2: 
        case 3: 
          if (mSnapType == Mediabryo.SnapType.DISCOVER) {
            mFailedSendDSnapbryos.remove(mClientId);
          }
          break;
        }
      }
      if (mIsChatMedia)
      {
        mFailedChatMediaSnapbryos.remove(mClientId);
        continue;
        if (mSnapType == Mediabryo.SnapType.DISCOVER) {
          mFailedSendDSnapbryos.put(mClientId, paramaim);
        } else if (mIsChatMedia) {
          mFailedChatMediaSnapbryos.put(mClientId, paramaim);
        }
      }
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    synchronized (mSnapWombMutex)
    {
      a(mPostingSnapbryoMaps, paramString1, paramString2);
      a(mFailedPostSnapbryoMaps, paramString1, paramString2);
      return;
    }
  }
  
  public final void a(String paramString, yt paramyt)
  {
    synchronized (mSnapWombMutex)
    {
      Iterator localIterator = mFailedPostSnapbryoMaps.values().iterator();
      while (localIterator.hasNext())
      {
        aim localaim = (aim)((LinkedHashMap)localIterator.next()).get(paramString);
        if (localaim != null) {
          paramyt.a(localaim, false, true);
        }
      }
    }
  }
  
  public final void a(List<aim> paramList)
  {
    synchronized (mSnapWombMutex)
    {
      paramList = new ArrayList(c(paramList).values());
      mFailedPostSnapbryoMaps.clear();
      Iterator localIterator1 = paramList.iterator();
      while (localIterator1.hasNext())
      {
        aim localaim = (aim)localIterator1.next();
        Iterator localIterator2 = mMediaMailingMetadata).mPostToStories.iterator();
        if (localIterator2.hasNext())
        {
          String str = nextmStoryId;
          LinkedHashMap localLinkedHashMap = (LinkedHashMap)mFailedPostSnapbryoMaps.get(str);
          paramList = localLinkedHashMap;
          if (localLinkedHashMap == null)
          {
            paramList = new LinkedHashMap();
            mFailedPostSnapbryoMaps.put(str, paramList);
          }
          paramList.put(mClientId, localaim);
        }
      }
    }
  }
  
  public final LinkedHashMap<String, aim> b(String paramString)
  {
    synchronized (mSnapWombMutex)
    {
      paramString = (LinkedHashMap)mFailedPostSnapbryoMaps.get(paramString);
      if (paramString == null)
      {
        paramString = new LinkedHashMap();
        return paramString;
      }
      paramString = new LinkedHashMap(paramString);
      return paramString;
    }
  }
  
  public final void b(aim paramaim)
  {
    a(paramaim, MediaMailingMetadata.PostStatus.FAILED);
  }
  
  public final void b(List<aim> paramList)
  {
    mFailedSendDSnapbryos = c(paramList);
  }
  
  public final HashMap<String, LinkedHashMap<String, aim>> c()
  {
    synchronized (mSnapWombMutex)
    {
      HashMap localHashMap = new HashMap(mPostingSnapbryoMaps);
      return localHashMap;
    }
  }
  
  public final LinkedHashMap<String, aim> c(List<aim> paramList)
  {
    LinkedHashMap localLinkedHashMap;
    for (;;)
    {
      aim localaim;
      synchronized (mSnapWombMutex)
      {
        localLinkedHashMap = new LinkedHashMap();
        Collections.sort(paramList);
        paramList = paramList.iterator();
        if (!paramList.hasNext()) {
          break;
        }
        localaim = (aim)paramList.next();
        if (((System.currentTimeMillis() - mTime.getTime() < 86400000L) && ((awq.MY_SNAP_IMAGE_CACHE.a(mClientId) != null) || (awq.MY_SNAP_VIDEO_CACHE.a(mClientId) != null))) || (((DiscoverShareCache)awq.DISCOVER_SHARE).a(mClientId, DiscoverShareCache.DiscoverShareFileType.BLOB) != null)) {
          localLinkedHashMap.put(mClientId, localaim);
        }
      }
      a(localaim);
    }
    return localLinkedHashMap;
  }
  
  public final void c(String paramString)
  {
    synchronized (mSnapWombMutex)
    {
      aim localaim = (aim)mSendingSnapbryos.remove(paramString);
      if (localaim != null) {
        mFailedSendSnapbryos.put(paramString, localaim);
      }
      return;
    }
  }
  
  public final ArrayList<aim> d()
  {
    synchronized (mSnapWombMutex)
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap();
      Iterator localIterator = mFailedPostSnapbryoMaps.values().iterator();
      if (localIterator.hasNext()) {
        localLinkedHashMap.putAll((LinkedHashMap)localIterator.next());
      }
    }
    ArrayList localArrayList = a(localMap);
    return localArrayList;
  }
  
  public final LinkedHashMap<String, aim> e()
  {
    synchronized (mSnapWombMutex)
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(mFailedSendSnapbryos);
      return localLinkedHashMap;
    }
  }
  
  public final LinkedHashMap<String, aim> f()
  {
    synchronized (mSnapWombMutex)
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(mFailedSendDSnapbryos);
      return localLinkedHashMap;
    }
  }
  
  public final ArrayList<aim> g()
  {
    return a(mFailedSendDSnapbryos);
  }
  
  public final LinkedHashMap<String, aim> h()
  {
    synchronized (mSnapWombMutex)
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(mFailedChatMediaSnapbryos);
      return localLinkedHashMap;
    }
  }
}

/* Location:
 * Qualified Name:     ajn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */