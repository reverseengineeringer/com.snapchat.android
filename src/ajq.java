import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnapLogbook;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ajq
{
  private static final ajq INSTANCE = new ajq();
  private static final String TAG = "StoryLibrary";
  private final azm mDevUtils;
  private final List<ajr> mFriendStoriesForDatabase = Collections.synchronizedList(new ArrayList());
  @bwo
  protected final Map<String, StoryCollection> mFriendStoryCollections = Collections.synchronizedMap(new LinkedHashMap());
  public final List<StorySnapLogbook> mMyPostedStorySnapLogbooksForDatabase = Collections.synchronizedList(new ArrayList());
  public final List<ajc> mPostToStories = Collections.synchronizedList(new ArrayList());
  public final Map<String, StoryGroup> mStories = Collections.synchronizedMap(new LinkedHashMap());
  private final Map<String, StoryCollection> mStoryGroupStoryCollections = Collections.synchronizedMap(new HashMap());
  private final ajx mUserPrefs;
  
  private ajq()
  {
    this(ajx.a(), ban.a(), azm.a());
  }
  
  private ajq(ajx paramajx, Bus paramBus, azm paramazm)
  {
    paramBus.a(new bco());
    mUserPrefs = paramajx;
    mDevUtils = paramazm;
  }
  
  public static ajq a()
  {
    return INSTANCE;
  }
  
  private void a(StoryCollection paramStoryCollection)
  {
    synchronized (mFriendStoriesForDatabase)
    {
      paramStoryCollection = paramStoryCollection.f().iterator();
      if (paramStoryCollection.hasNext())
      {
        ajr localajr = (ajr)paramStoryCollection.next();
        mFriendStoriesForDatabase.add(localajr);
      }
    }
  }
  
  private static void a(@cgb List<bhv> paramList, @cgb Collection<StoryCollection> paramCollection)
  {
    if (paramCollection.isEmpty()) {
      return;
    }
    HashMap localHashMap = new HashMap();
    paramList = paramList.iterator();
    Object localObject;
    while (paramList.hasNext())
    {
      localObject = (bhv)paramList.next();
      if (((bhv)localObject).c())
      {
        localObject = ((bhv)localObject).b().iterator();
        while (((Iterator)localObject).hasNext())
        {
          ajr localajr = new ajr(((bhw)((Iterator)localObject).next()).a());
          localHashMap.put(localajr.d(), localajr);
        }
      }
    }
    paramList = paramCollection.iterator();
    while (paramList.hasNext())
    {
      paramCollection = ((StoryCollection)paramList.next()).e().iterator();
      while (paramCollection.hasNext())
      {
        localObject = ((ajr)paramCollection.next()).d();
        if (!localHashMap.containsKey(localObject)) {
          d((String)localObject);
        }
      }
    }
  }
  
  public static void d(@cgb String paramString)
  {
    awq.STORY_RECEIVED_VIDEO_CACHE.c(paramString);
    awq.STORY_RECEIVED_IMAGE_CACHE.c(paramString);
    awq.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.c(paramString);
  }
  
  private void q()
  {
    synchronized (mFriendStoryCollections)
    {
      Object localObject1 = new ArrayList(mFriendStoryCollections.values());
      Collections.sort((List)localObject1);
      mFriendStoryCollections.clear();
      localObject1 = ((List)localObject1).iterator();
      if (((Iterator)localObject1).hasNext())
      {
        StoryCollection localStoryCollection = (StoryCollection)((Iterator)localObject1).next();
        mFriendStoryCollections.put(localStoryCollection.h(), localStoryCollection);
      }
    }
  }
  
  public final StoryCollection a(@cgc String paramString)
  {
    return (StoryCollection)mStoryGroupStoryCollections.get(paramString);
  }
  
  public final void a(ajr paramajr)
  {
    paramajr.aE();
    paramajr = new StorySnapLogbook(paramajr, new ArrayList(), new bjh());
    mStoryId = "my_story_ads79sdf";
    List localList = ((StoryGroup)mStories.get("my_story_ads79sdf")).h();
    localList.add(0, paramajr);
    Collections.sort(localList);
    a(paramajr);
    j();
  }
  
  public final void a(StorySnapLogbook paramStorySnapLogbook)
  {
    mStorySnap.mStoryId = mStoryId;
    mMyPostedStorySnapLogbooksForDatabase.add(0, paramStorySnapLogbook);
  }
  
  public final void a(@cgc List<ajc> paramList)
  {
    if (paramList == null) {
      return;
    }
    ??? = paramList.iterator();
    while (((Iterator)???).hasNext()) {
      nextmTimestamp = SystemClock.elapsedRealtime();
    }
    synchronized (mPostToStories)
    {
      Iterator localIterator = mPostToStories.iterator();
      while (localIterator.hasNext())
      {
        ajc localajc1 = (ajc)localIterator.next();
        if (paramList.contains(localajc1))
        {
          ajc localajc2 = (ajc)paramList.get(paramList.indexOf(localajc1));
          if (!TextUtils.isEmpty(mCustomTitle)) {
            mCustomTitle = mCustomTitle;
          }
          if (!TextUtils.isEmpty(mCustomDescription)) {
            mCustomDescription = mCustomDescription;
          }
          localIterator.remove();
        }
      }
    }
    mPostToStories.addAll(paramList);
    ban.a().a(new bco());
  }
  
  @avl
  public final void a(@cgc List<bhv> paramList, boolean paramBoolean)
  {
    if (paramList == null) {
      return;
    }
    Timber.b("StoryLibrary", "Updating friend stories with isDelta = " + paramBoolean, new Object[0]);
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(paramList.size());
    if (!paramBoolean) {}
    bhv localbhv;
    synchronized (mFriendStoryCollections)
    {
      a(paramList, mFriendStoryCollections.values());
      ??? = paramList.iterator();
      if (!((Iterator)???).hasNext()) {
        break label194;
      }
      localbhv = (bhv)((Iterator)???).next();
      paramList = localbhv.a();
      paramList = (StoryCollection)mFriendStoryCollections.get(paramList);
      if (paramList == null) {}
    }
    for (;;)
    {
      synchronized (mFriendStoriesForDatabase)
      {
        paramList.a(localbhv, mFriendStoriesForDatabase, paramBoolean);
        localLinkedHashMap.put(paramList.h(), paramList);
        break;
        paramList = finally;
        throw paramList;
      }
      paramList = new StoryCollection(localbhv);
      a(paramList);
    }
    label194:
    paramList = mFriendStoryCollections;
    if (!paramBoolean) {}
    try
    {
      mFriendStoryCollections.clear();
      mFriendStoryCollections.putAll(localLinkedHashMap);
      j();
      q();
      return;
    }
    finally {}
  }
  
  @cgc
  public final StoryCollection b(@cgc String paramString)
  {
    return (StoryCollection)mFriendStoryCollections.get(paramString);
  }
  
  public final void b()
  {
    mPostToStories.clear();
    mStories.clear();
    c();
  }
  
  final void b(List<StorySnapLogbook> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      a((StorySnapLogbook)paramList.next());
    }
  }
  
  public final boolean b(StorySnapLogbook paramStorySnapLogbook)
  {
    ajn localajn = ajn.a();
    String str1 = mStorySnap.mClientId;
    synchronized (mStories)
    {
      Iterator localIterator = mStories.values().iterator();
      while (localIterator.hasNext())
      {
        StoryGroup localStoryGroup = (StoryGroup)localIterator.next();
        String str2 = localStoryGroup.c();
        if ((localStoryGroup.h().contains(paramStorySnapLogbook)) || (localajn.b(str2).containsKey(str1)) || (localajn.a(str2).containsKey(str1))) {
          return true;
        }
      }
      return false;
    }
  }
  
  public final void c()
  {
    mFriendStoryCollections.clear();
    mStoryGroupStoryCollections.clear();
    mMyPostedStorySnapLogbooksForDatabase.clear();
    mFriendStoriesForDatabase.clear();
    ajx.aC();
  }
  
  public final void c(@cgc String paramString)
  {
    mFriendStoryCollections.remove(paramString);
    synchronized (mFriendStoriesForDatabase)
    {
      Iterator localIterator = mFriendStoriesForDatabase.iterator();
      while (localIterator.hasNext()) {
        if (TextUtils.equals(nextmUsername, paramString)) {
          localIterator.remove();
        }
      }
    }
  }
  
  public final void c(List<StoryGroup> paramList)
  {
    paramList = paramList.iterator();
    if (paramList.hasNext())
    {
      StoryGroup localStoryGroup = (StoryGroup)paramList.next();
      Object localObject = localStoryGroup.h().iterator();
      while (((Iterator)localObject).hasNext()) {
        nextmStorySnap.aE();
      }
      localObject = (StoryGroup)mStories.get(localStoryGroup.c());
      if (localObject != null)
      {
        localObject = ((StoryGroup)localObject).h();
        ((List)localObject).addAll(0, localStoryGroup.h());
        Collections.sort((List)localObject);
      }
      for (;;)
      {
        if ((localStoryGroup.f()) && (TextUtils.isEmpty(localStoryGroup.g()))) {
          new oo(localStoryGroup.c()).f();
        }
        b(localStoryGroup.h());
        break;
        mStories.put(localStoryGroup.c(), localStoryGroup);
      }
    }
    j();
  }
  
  public final List<ajc> d()
  {
    synchronized (mPostToStories)
    {
      Iterator localIterator = mPostToStories.iterator();
      while (localIterator.hasNext()) {
        if (((ajc)localIterator.next()).b()) {
          localIterator.remove();
        }
      }
    }
    synchronized (mPostToStories)
    {
      ArrayList localArrayList = new ArrayList(mPostToStories);
      localArrayList.add(0, aja.a());
      return localArrayList;
    }
  }
  
  public final void d(List<ajr> arg1)
  {
    mFriendStoryCollections.clear();
    mFriendStoriesForDatabase.clear();
    Iterator localIterator = ???.iterator();
    Object localObject1;
    while (localIterator.hasNext())
    {
      ajr localajr = (ajr)localIterator.next();
      if (localajr.aD())
      {
        Timber.c("StoryLibrary", "Not loading expired StorySnap from database %s", new Object[] { localajr.toString() });
      }
      else
      {
        mFriendStoriesForDatabase.add(localajr);
        localObject1 = (StoryCollection)mFriendStoryCollections.get(mUsername);
        ??? = (List<ajr>)localObject1;
        if (localObject1 == null)
        {
          ??? = new StoryCollection();
          ???.a(mUsername);
          mFriendStoryCollections.put(mUsername, ???);
        }
        ???.e(localajr);
      }
    }
    synchronized (mFriendStoryCollections)
    {
      localObject1 = mFriendStoryCollections.entrySet().iterator();
      if (((Iterator)localObject1).hasNext()) {
        ((StoryCollection)((Map.Entry)((Iterator)localObject1).next()).getValue()).v();
      }
    }
    q();
  }
  
  public final void e()
  {
    int i = 0;
    for (;;)
    {
      synchronized (mFriendStoryCollections)
      {
        Iterator localIterator = mFriendStoryCollections.entrySet().iterator();
        if (localIterator.hasNext())
        {
          if (((StoryCollection)((Map.Entry)localIterator.next()).getValue()).g())
          {
            localIterator.remove();
            i = 1;
          }
        }
        else
        {
          if (i != 0) {
            ban.a().a(new bdc());
          }
          return;
        }
      }
    }
  }
  
  public final ArrayList<StorySnapLogbook> f()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (mStories)
    {
      Iterator localIterator = mStories.values().iterator();
      if (localIterator.hasNext()) {
        localArrayList.addAll(((StoryGroup)localIterator.next()).h());
      }
    }
    return localArrayList1;
  }
  
  public final List<StorySnapLogbook> g()
  {
    synchronized (mMyPostedStorySnapLogbooksForDatabase)
    {
      ArrayList localArrayList = new ArrayList(mMyPostedStorySnapLogbooksForDatabase);
      return localArrayList;
    }
  }
  
  public final void h()
  {
    synchronized (mStories)
    {
      Iterator localIterator = mStories.values().iterator();
      while (localIterator.hasNext())
      {
        StoryGroup localStoryGroup = (StoryGroup)localIterator.next();
        if (localStoryGroup.f()) {
          new oo(localStoryGroup.c()).f();
        }
      }
    }
  }
  
  public final List<StoryGroup> i()
  {
    synchronized (mStories)
    {
      Object localObject1 = new LinkedHashMap(mStories);
      ((LinkedHashMap)localObject1).remove("my_story_ads79sdf");
      localObject1 = new ArrayList(((LinkedHashMap)localObject1).values());
      return (List<StoryGroup>)localObject1;
    }
  }
  
  public final void j()
  {
    for (;;)
    {
      String str;
      synchronized (mStories)
      {
        Iterator localIterator = mStories.values().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localObject2 = (StoryGroup)localIterator.next();
        str = ((StoryGroup)localObject2).c();
        mStoryGroupStoryCollections.remove(str);
        Object localObject3 = ((StoryGroup)localObject2).h();
        if (((List)localObject3).size() == 0) {
          continue;
        }
        localObject2 = new ArrayList(((List)localObject3).size());
        localObject3 = ((List)localObject3).iterator();
        if (((Iterator)localObject3).hasNext()) {
          ((List)localObject2).add(nextmStorySnap);
        }
      }
      Object localObject2 = new StoryCollection((List)localObject2);
      ((StoryCollection)localObject2).t();
      mStoryGroupStoryCollections.put(str, localObject2);
    }
  }
  
  public final Collection<StoryCollection> k()
  {
    synchronized (mFriendStoryCollections)
    {
      Collection localCollection = mFriendStoryCollections.values();
      return localCollection;
    }
  }
  
  public final int l()
  {
    int i = 0;
    for (;;)
    {
      synchronized (mFriendStoryCollections)
      {
        Iterator localIterator = mFriendStoryCollections.values().iterator();
        if (localIterator.hasNext())
        {
          StoryCollection localStoryCollection = (StoryCollection)localIterator.next();
          if ((!localStoryCollection.u()) && (!localStoryCollection.E())) {
            i += 1;
          }
        }
        else
        {
          return i;
        }
      }
    }
  }
  
  @avl
  public final void m()
  {
    synchronized (mFriendStoryCollections)
    {
      Iterator localIterator = mFriendStoryCollections.values().iterator();
      if (localIterator.hasNext()) {
        ((StoryCollection)localIterator.next()).t();
      }
    }
  }
  
  public final List<ajr> n()
  {
    synchronized (mFriendStoriesForDatabase)
    {
      ArrayList localArrayList = new ArrayList(mFriendStoriesForDatabase);
      return localArrayList;
    }
  }
  
  public final List<ajg> o()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    boolean bool = azm.d();
    for (;;)
    {
      synchronized (mFriendStoryCollections)
      {
        Iterator localIterator = mFriendStoryCollections.keySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        Object localObject = (String)localIterator.next();
        if (TextUtils.equals((CharSequence)localObject, ajx.l())) {
          continue;
        }
        localObject = (StoryCollection)mFriendStoryCollections.get(localObject);
        if ((localObject == null) || (((StoryCollection)localObject).w().isEmpty())) {
          continue;
        }
        if (((StoryCollection)localObject).D())
        {
          localObject = new ajo((StoryCollection)localObject);
          if (!((ajg)localObject).E()) {
            break label160;
          }
          if (bool) {
            continue;
          }
          localArrayList2.add(localObject);
        }
      }
      ajg localajg = new ajg(localStoryCollection);
      continue;
      label160:
      localArrayList1.add(localajg);
    }
    Collections.sort(localArrayList1);
    Collections.sort(localArrayList2);
    localArrayList1.addAll(localArrayList2);
    return localArrayList1;
  }
  
  public final List<StoryCollection> p()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    for (;;)
    {
      Object localObject2;
      synchronized (mFriendStoryCollections)
      {
        Iterator localIterator = mFriendStoryCollections.keySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localObject2 = (String)localIterator.next();
        if (TextUtils.equals((CharSequence)localObject2, ajx.l())) {
          continue;
        }
        localObject2 = (StoryCollection)mFriendStoryCollections.get(localObject2);
        if ((localObject2 == null) || (!((StoryCollection)localObject2).E())) {
          continue;
        }
        if (((StoryCollection)localObject2).w().isEmpty()) {
          localArrayList2.add(localObject2);
        }
      }
      localList.add(new ajg((StoryCollection)localObject2));
    }
    Collections.sort(localList);
    Collections.sort(localArrayList2);
    ??? = new ArrayList();
    ((ArrayList)???).addAll(localList);
    ((ArrayList)???).addAll(localArrayList2);
    return (List<StoryCollection>)???;
  }
}

/* Location:
 * Qualified Name:     ajq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */