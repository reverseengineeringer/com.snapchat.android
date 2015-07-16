import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
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

public final class aki
{
  private static aki sInstance;
  public Map<String, aji> mFailedChatMediaSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  protected Map<String, LinkedHashMap<String, aji>> mFailedPostSnapbryoMaps = Collections.synchronizedMap(new HashMap());
  protected Map<String, aji> mFailedSendDSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  public Map<String, aji> mFailedSendSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  private Map<String, LinkedHashMap<String, aji>> mPostingSnapbryoMaps = Collections.synchronizedMap(new HashMap());
  public Map<String, aji> mSendingDSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  public Map<String, aji> mSendingSnapbryos = Collections.synchronizedMap(new LinkedHashMap());
  private final Object mSnapWombMutex = new Object();
  
  public static aki a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new aki();
      }
      aki localaki = sInstance;
      return localaki;
    }
    finally {}
  }
  
  private void a(Map<String, LinkedHashMap<String, aji>> paramMap, String paramString, aji paramaji)
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
      localLinkedHashMap1.put(mClientId, paramaji);
      return;
    }
  }
  
  private void a(Map<String, LinkedHashMap<String, aji>> paramMap, String paramString1, String paramString2)
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
  
  private void b(Map<String, LinkedHashMap<String, aji>> paramMap, String paramString, aji paramaji)
  {
    a(paramMap, paramString, mClientId);
  }
  
  public final ArrayList<aji> a(Map<String, aji> paramMap)
  {
    ArrayList localArrayList;
    for (;;)
    {
      aji localaji;
      synchronized (mSnapWombMutex)
      {
        localArrayList = new ArrayList();
        paramMap = paramMap.values().iterator();
        if (!paramMap.hasNext()) {
          break;
        }
        localaji = (aji)paramMap.next();
        if (System.currentTimeMillis() - mTime.getTime() < 86400000L) {
          localArrayList.add(localaji);
        }
      }
      paramMap.remove();
      a(localaji);
    }
    return localArrayList;
  }
  
  public final LinkedHashMap<String, aji> a(String paramString)
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
  
  public final void a(aji paramaji)
  {
    Object localObject2;
    Object localObject3;
    synchronized (mSnapWombMutex)
    {
      localObject2 = mClientId;
      localObject3 = (akg)mMediaMailingMetadata;
      if (mSnapType == Mediabryo.SnapType.SNAP)
      {
        mSendingSnapbryos.remove(localObject2);
        mFailedSendSnapbryos.remove(localObject2);
        paramaji = mPostToStories.iterator();
        if (!paramaji.hasNext()) {
          break label214;
        }
        a(nextmStoryId, (String)localObject2);
      }
    }
    if (mSnapType == Mediabryo.SnapType.DISCOVER)
    {
      mSendingDSnapbryos.remove(localObject2);
      mFailedSendDSnapbryos.remove(localObject2);
      localObject2 = akx.c();
      localObject3 = mMediaMailingMetadata;
      int i = ((MediaMailingMetadata)localObject3).d().size();
      if (i != 0)
      {
        if (i != 1) {
          break label217;
        }
        localObject2 = ((akx)localObject2).a(((MediaMailingMetadata)localObject3).e());
        paramaji = (alc)((ChatConversation)localObject2).d(mClientId);
        if (paramaji != null)
        {
          mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED_AND_NON_RECOVERABLE;
          if ((localObject2 != null) && (paramaji != null)) {
            ((ChatConversation)localObject2).b(paramaji);
          }
        }
      }
    }
    for (;;)
    {
      label214:
      return;
      label217:
      paramaji = ((akx)localObject2).b(((MediaMailingMetadata)localObject3).e());
      if (paramaji != null) {
        ((akx)localObject2).b(mId, true);
      }
    }
  }
  
  public final void a(aji paramaji, MediaMailingMetadata.PostStatus paramPostStatus)
  {
    for (;;)
    {
      String str;
      aji localaji;
      synchronized (mSnapWombMutex)
      {
        if (mSnapType != Mediabryo.SnapType.SNAP) {
          return;
        }
        Object localObject2 = (akg)mMediaMailingMetadata;
        ((akg)localObject2).a(paramPostStatus);
        Object localObject3 = mPostToStories;
        paramPostStatus = mPostStatus;
        localObject2 = ((ArrayList)localObject3).iterator();
        if (!((Iterator)localObject2).hasNext()) {
          break label285;
        }
        localObject3 = (ajy)((Iterator)localObject2).next();
        str = mStoryId;
        Object localObject4 = new ArrayList();
        ((ArrayList)localObject4).add(localObject3);
        localaji = paramaji.a();
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
      b(mPostingSnapbryoMaps, str, localaji);
      continue;
      b(mPostingSnapbryoMaps, str, localaji);
      a(mFailedPostSnapbryoMaps, str, localaji);
      continue;
      b(mFailedPostSnapbryoMaps, str, localaji);
      a(mPostingSnapbryoMaps, str, localaji);
      continue;
      label285:
      return;
    }
  }
  
  public final void a(aji paramaji, MediaMailingMetadata.SendStatus paramSendStatus)
  {
    boolean bool = false;
    for (;;)
    {
      Object localObject1;
      MediaMailingMetadata localMediaMailingMetadata;
      int j;
      label156:
      label191:
      Object localObject2;
      synchronized (mSnapWombMutex)
      {
        mMediaMailingMetadata.mSendStatus = paramSendStatus;
        if (akp.g() != null)
        {
          localObject1 = akx.c();
          localMediaMailingMetadata = mMediaMailingMetadata;
          j = localMediaMailingMetadata.d().size();
          if (j > 1)
          {
            localObject1 = ((akx)localObject1).b(localMediaMailingMetadata.e());
            if (localObject1 != null) {
              continue;
            }
            new StringBuilder("Conversation is null : Recipients size = ").append(localMediaMailingMetadata.d().size()).append(", Recipient String = ").append(localMediaMailingMetadata.e());
          }
        }
        else
        {
          if (mSnapType != Mediabryo.SnapType.SNAP) {
            break label804;
          }
        }
        switch (aki.1.$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$SendStatus[paramSendStatus.ordinal()])
        {
        case 1: 
          return;
          localObject1 = ((akx)localObject1).a(localMediaMailingMetadata.e());
          continue;
          if (mUploadStatus != MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE)
          {
            i = 1;
            break label936;
            mIsSavableConversation = bool;
            if (mSnapType != Mediabryo.SnapType.SNAP) {
              break label491;
            }
            localObject3 = ((ChatConversation)localObject1).c(mClientId);
            localObject2 = localObject3;
            if (localObject3 == null) {
              localObject2 = new ake(paramaji);
            }
            if ((j != 1) || (i != 0)) {
              break label337;
            }
            mIsSavableSnap = false;
            switch (zi.1.a[mSendStatus.ordinal()])
            {
            case 1: 
              label300:
              bbo.a().a(new bca(mId, ((ake)localObject2).d()));
            }
          }
          break;
        }
      }
      int i = 0;
      break label936;
      label337:
      mIsSavableSnap = true;
      continue;
      ((ChatConversation)localObject1).a((ake)localObject2);
      continue;
      ((ChatConversation)localObject1).l(((ake)localObject2).d());
      mTimestamp = System.currentTimeMillis();
      Object localObject3 = mId;
      long l = mTimestamp;
      mFailedSnaps.add(localObject2);
      ((ake)localObject2).e();
      ((ChatConversation)localObject1).c((ChatFeedItem)localObject2);
      ((ChatConversation)localObject1).a((ChatFeedItem)localObject2, FeedIconChangeType.FAILED_TO_SEND);
      continue;
      ((ChatConversation)localObject1).j(((ake)localObject2).d());
      mTimestamp = System.currentTimeMillis();
      localObject3 = mId;
      l = mTimestamp;
      mFailedSnaps.remove(localObject2);
      ((ChatConversation)localObject1).c((ChatFeedItem)localObject2);
      ((ChatConversation)localObject1).a((ChatFeedItem)localObject2, FeedIconChangeType.SENDING);
      continue;
      label491:
      if (mSnapType == Mediabryo.SnapType.DISCOVER)
      {
        localObject3 = (alc)((ChatConversation)localObject1).d(mClientId);
        localObject2 = localObject3;
        if (localObject3 == null)
        {
          localObject2 = new alc(paramaji);
          ((ChatConversation)localObject1).a((ChatFeedItem)localObject2);
        }
        switch (zi.1.a[mSendStatus.ordinal()])
        {
        }
        for (;;)
        {
          if (mSendStatus != MediaMailingMetadata.SendStatus.SENT)
          {
            mTimestamp = System.currentTimeMillis();
            bbo.a().a(new bca(mId, ((alc)localObject2).d()));
            break;
            mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
            ((ChatConversation)localObject1).b((ChatFeedItem)localObject2);
            ((ChatConversation)localObject1).a((ChatFeedItem)localObject2, FeedIconChangeType.SENT);
            continue;
            mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
            ((ChatConversation)localObject1).l(((alc)localObject2).d());
            ((ChatConversation)localObject1).a((ChatFeedItem)localObject2, FeedIconChangeType.FAILED_TO_SEND);
            continue;
            mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
            ((ChatConversation)localObject1).j(((alc)localObject2).d());
            ((ChatConversation)localObject1).a((ChatFeedItem)localObject2, FeedIconChangeType.SENDING);
            continue;
          }
          break;
          mSendingSnapbryos.remove(mClientId);
          break label156;
          mSendingSnapbryos.remove(mClientId);
          mFailedSendSnapbryos.put(mClientId, paramaji);
          break label156;
          mFailedSendSnapbryos.remove(mClientId);
          mSendingSnapbryos.put(mClientId, paramaji);
          break label156;
          label804:
          if (mSnapType != Mediabryo.SnapType.DISCOVER) {
            break label156;
          }
          switch (aki.1.$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$SendStatus[paramSendStatus.ordinal()])
          {
          case 1: 
            mSendingDSnapbryos.remove(mClientId);
            break;
          case 2: 
            mSendingDSnapbryos.remove(mClientId);
            mFailedSendDSnapbryos.put(mClientId, paramaji);
            break;
          case 3: 
          case 4: 
            mFailedSendDSnapbryos.remove(mClientId);
            mSendingDSnapbryos.put(mClientId, paramaji);
            break;
            break;
            label936:
            if ((i == 0) && (j != 1)) {
              break label191;
            }
            bool = true;
            break label191;
            break label300;
          }
        }
      }
    }
  }
  
  public final void a(aji paramaji, MediaMailingMetadata.UploadStatus paramUploadStatus)
  {
    for (;;)
    {
      synchronized (mSnapWombMutex)
      {
        mMediaMailingMetadata.mUploadStatus = paramUploadStatus;
        switch (aki.1.$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$UploadStatus[paramUploadStatus.ordinal()])
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
          mFailedSendDSnapbryos.put(mClientId, paramaji);
        } else if (mIsChatMedia) {
          mFailedChatMediaSnapbryos.put(mClientId, paramaji);
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
  
  public final void a(String paramString, zp paramzp)
  {
    synchronized (mSnapWombMutex)
    {
      Iterator localIterator = mFailedPostSnapbryoMaps.values().iterator();
      while (localIterator.hasNext())
      {
        aji localaji = (aji)((LinkedHashMap)localIterator.next()).get(paramString);
        if (localaji != null) {
          paramzp.a(localaji, false, true);
        }
      }
    }
  }
  
  public final void a(List<aji> paramList)
  {
    synchronized (mSnapWombMutex)
    {
      paramList = new ArrayList(c(paramList).values());
      mFailedPostSnapbryoMaps.clear();
      Iterator localIterator1 = paramList.iterator();
      while (localIterator1.hasNext())
      {
        aji localaji = (aji)localIterator1.next();
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
          paramList.put(mClientId, localaji);
        }
      }
    }
  }
  
  public final LinkedHashMap<String, aji> b(String paramString)
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
  
  public final void b(aji paramaji)
  {
    a(paramaji, MediaMailingMetadata.PostStatus.FAILED);
  }
  
  public final void b(List<aji> paramList)
  {
    mFailedSendDSnapbryos = c(paramList);
  }
  
  public final HashMap<String, LinkedHashMap<String, aji>> c()
  {
    synchronized (mSnapWombMutex)
    {
      HashMap localHashMap = new HashMap(mPostingSnapbryoMaps);
      return localHashMap;
    }
  }
  
  public final LinkedHashMap<String, aji> c(List<aji> paramList)
  {
    LinkedHashMap localLinkedHashMap;
    for (;;)
    {
      aji localaji;
      synchronized (mSnapWombMutex)
      {
        localLinkedHashMap = new LinkedHashMap();
        Collections.sort(paramList);
        paramList = paramList.iterator();
        if (!paramList.hasNext()) {
          break;
        }
        localaji = (aji)paramList.next();
        if (((System.currentTimeMillis() - mTime.getTime() < 86400000L) && ((axo.MY_SNAP_IMAGE_CACHE.a(mClientId) != null) || (axo.MY_SNAP_VIDEO_CACHE.a(mClientId) != null))) || (((DiscoverShareCache)axo.DISCOVER_SHARE).a(mClientId, DiscoverShareCache.DiscoverShareFileType.BLOB) != null)) {
          localLinkedHashMap.put(mClientId, localaji);
        }
      }
      a(localaji);
    }
    return localLinkedHashMap;
  }
  
  public final void c(String paramString)
  {
    synchronized (mSnapWombMutex)
    {
      aji localaji = (aji)mSendingSnapbryos.remove(paramString);
      if (localaji != null) {
        mFailedSendSnapbryos.put(paramString, localaji);
      }
      return;
    }
  }
  
  public final ArrayList<aji> d()
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
  
  public final LinkedHashMap<String, aji> e()
  {
    synchronized (mSnapWombMutex)
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(mFailedSendSnapbryos);
      return localLinkedHashMap;
    }
  }
  
  public final LinkedHashMap<String, aji> f()
  {
    synchronized (mSnapWombMutex)
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(mFailedSendDSnapbryos);
      return localLinkedHashMap;
    }
  }
  
  public final ArrayList<aji> g()
  {
    return a(mFailedSendDSnapbryos);
  }
  
  public final LinkedHashMap<String, aji> h()
  {
    synchronized (mSnapWombMutex)
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(mFailedChatMediaSnapbryos);
      return localLinkedHashMap;
    }
  }
}

/* Location:
 * Qualified Name:     aki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */