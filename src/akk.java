import android.os.SystemClock;
import android.text.TextUtils;
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

public final class akk
{
  private static final akk INSTANCE = new akk();
  private static final String TAG = "StoryLibrary";
  private final bal mDevUtils;
  @bxp
  protected final Map<String, StoryCollection> mFriendStoryCollections = Collections.synchronizedMap(new LinkedHashMap());
  public final List<StorySnapLogbook> mMyPostedStorySnapLogbooksForDatabase = Collections.synchronizedList(new ArrayList());
  public final List<ajy> mPostToStories = Collections.synchronizedList(new ArrayList());
  public final Map<String, StoryGroup> mStories = Collections.synchronizedMap(new LinkedHashMap());
  private final Map<String, StoryCollection> mStoryGroupStoryCollections = Collections.synchronizedMap(new HashMap());
  private final akr mUserPrefs;
  
  private akk()
  {
    this(akr.a(), bbo.a(), bal.a());
  }
  
  private akk(akr paramakr, Bus paramBus, bal parambal)
  {
    paramBus.a(new bdo());
    mUserPrefs = paramakr;
    mDevUtils = parambal;
  }
  
  public static akk a()
  {
    return INSTANCE;
  }
  
  private static void a(@chc List<biv> paramList, @chc Collection<StoryCollection> paramCollection)
  {
    if (paramCollection.isEmpty()) {
      return;
    }
    HashMap localHashMap = new HashMap();
    paramList = paramList.iterator();
    Object localObject;
    while (paramList.hasNext())
    {
      localObject = (biv)paramList.next();
      if (((biv)localObject).c())
      {
        localObject = ((biv)localObject).b().iterator();
        while (((Iterator)localObject).hasNext())
        {
          akl localakl = new akl(((biw)((Iterator)localObject).next()).a());
          localHashMap.put(localakl.d(), localakl);
        }
      }
    }
    paramList = paramCollection.iterator();
    while (paramList.hasNext())
    {
      paramCollection = ((StoryCollection)paramList.next()).f().iterator();
      while (paramCollection.hasNext())
      {
        localObject = ((akl)paramCollection.next()).d();
        if (!localHashMap.containsKey(localObject)) {
          d((String)localObject);
        }
      }
    }
  }
  
  public static void d(@chc String paramString)
  {
    axo.STORY_RECEIVED_VIDEO_CACHE.c(paramString);
    axo.STORY_RECEIVED_IMAGE_CACHE.c(paramString);
    axo.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.c(paramString);
  }
  
  private void p()
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
        mFriendStoryCollections.put(localStoryCollection.l(), localStoryCollection);
      }
    }
  }
  
  public final StoryCollection a(@chd String paramString)
  {
    return (StoryCollection)mStoryGroupStoryCollections.get(paramString);
  }
  
  public final void a(akl paramakl)
  {
    paramakl.az();
    paramakl = new StorySnapLogbook(paramakl, new ArrayList(), new bki());
    mStoryId = "my_story_ads79sdf";
    List localList = ((StoryGroup)mStories.get("my_story_ads79sdf")).h();
    localList.add(0, paramakl);
    Collections.sort(localList);
    a(paramakl);
    j();
  }
  
  public final void a(StorySnapLogbook paramStorySnapLogbook)
  {
    mStorySnap.mStoryId = mStoryId;
    mMyPostedStorySnapLogbooksForDatabase.add(0, paramStorySnapLogbook);
  }
  
  public final void a(@chd List<ajy> paramList)
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
        ajy localajy1 = (ajy)localIterator.next();
        if (paramList.contains(localajy1))
        {
          ajy localajy2 = (ajy)paramList.get(paramList.indexOf(localajy1));
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
    bbo.a().a(new bdo());
  }
  
  @awj
  public final void a(@chd List<biv> paramList, boolean paramBoolean)
  {
    if (paramList == null) {
      return;
    }
    paramList.size();
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(paramList.size());
    Map localMap = mFriendStoryCollections;
    if (!paramBoolean) {}
    for (;;)
    {
      try
      {
        a(paramList, mFriendStoryCollections.values());
        Iterator localIterator = paramList.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        biv localbiv = (biv)localIterator.next();
        paramList = localbiv.a();
        paramList = (StoryCollection)mFriendStoryCollections.get(paramList);
        if (paramList != null)
        {
          paramList.a(localbiv, paramBoolean);
          localLinkedHashMap.put(paramList.l(), paramList);
        }
        else
        {
          paramList = new StoryCollection(localbiv);
        }
      }
      finally {}
    }
    if (!paramBoolean) {
      mFriendStoryCollections.clear();
    }
    mFriendStoryCollections.putAll(localLinkedHashMap);
    j();
    p();
  }
  
  @chd
  public final StoryCollection b(@chd String paramString)
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
    aki localaki = aki.a();
    String str1 = mStorySnap.mClientId;
    synchronized (mStories)
    {
      Iterator localIterator = mStories.values().iterator();
      while (localIterator.hasNext())
      {
        StoryGroup localStoryGroup = (StoryGroup)localIterator.next();
        String str2 = localStoryGroup.c();
        if ((localStoryGroup.h().contains(paramStorySnapLogbook)) || (localaki.b(str2).containsKey(str1)) || (localaki.a(str2).containsKey(str1))) {
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
    akr.aB();
  }
  
  public final void c(@chd String paramString)
  {
    mFriendStoryCollections.remove(paramString);
  }
  
  public final void c(List<StoryGroup> paramList)
  {
    paramList = paramList.iterator();
    if (paramList.hasNext())
    {
      StoryGroup localStoryGroup = (StoryGroup)paramList.next();
      Object localObject = localStoryGroup.h().iterator();
      while (((Iterator)localObject).hasNext()) {
        nextmStorySnap.az();
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
          new pf(localStoryGroup.c()).execute();
        }
        b(localStoryGroup.h());
        break;
        mStories.put(localStoryGroup.c(), localStoryGroup);
      }
    }
    j();
  }
  
  public final List<ajy> d()
  {
    synchronized (mPostToStories)
    {
      Iterator localIterator = mPostToStories.iterator();
      while (localIterator.hasNext()) {
        if (((ajy)localIterator.next()).b()) {
          localIterator.remove();
        }
      }
    }
    synchronized (mPostToStories)
    {
      ArrayList localArrayList = new ArrayList(mPostToStories);
      localArrayList.add(0, ajw.a());
      return localArrayList;
    }
  }
  
  public final void d(List<akl> paramList)
  {
    for (;;)
    {
      akl localakl;
      synchronized (mFriendStoryCollections)
      {
        mFriendStoryCollections.clear();
        Iterator localIterator = paramList.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localakl = (akl)localIterator.next();
        if (localakl.ay()) {
          localakl.toString();
        }
      }
      StoryCollection localStoryCollection = (StoryCollection)mFriendStoryCollections.get(mUsername);
      paramList = localStoryCollection;
      if (localStoryCollection == null)
      {
        paramList = new StoryCollection();
        paramList.a(mUsername);
        mFriendStoryCollections.put(mUsername, paramList);
      }
      paramList.e(localakl);
    }
    paramList = mFriendStoryCollections.entrySet().iterator();
    while (paramList.hasNext()) {
      ((StoryCollection)((Map.Entry)paramList.next()).getValue()).r();
    }
    p();
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
            bbo.a().a(new bec());
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
          new pf(localStoryGroup.c()).execute();
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
      ((StoryCollection)localObject2).m();
      mStoryGroupStoryCollections.put(str, localObject2);
    }
  }
  
  public final Collection<StoryCollection> k()
  {
    synchronized (mFriendStoryCollections)
    {
      ArrayList localArrayList = new ArrayList(mFriendStoryCollections.values());
      return localArrayList;
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
          if ((!localStoryCollection.q()) && (!localStoryCollection.A())) {
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
  
  @awj
  public final void m()
  {
    synchronized (mFriendStoryCollections)
    {
      Iterator localIterator = mFriendStoryCollections.values().iterator();
      if (localIterator.hasNext()) {
        ((StoryCollection)localIterator.next()).m();
      }
    }
  }
  
  public final List<akc> n()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    boolean bool = bal.d();
    for (;;)
    {
      Object localObject;
      synchronized (mFriendStoryCollections)
      {
        Iterator localIterator = mFriendStoryCollections.keySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (String)localIterator.next();
        if (TextUtils.equals((CharSequence)localObject, akr.l())) {
          continue;
        }
        localObject = (StoryCollection)mFriendStoryCollections.get(localObject);
        if ((localObject == null) || (((StoryCollection)localObject).s() == 0)) {
          continue;
        }
        localObject = new akc((StoryCollection)localObject);
        if (((akc)localObject).A())
        {
          if (bool) {
            continue;
          }
          localArrayList2.add(localObject);
        }
      }
      localList.add(localObject);
    }
    Collections.sort(localList);
    Collections.sort(localArrayList2);
    localList.addAll(localArrayList2);
    return localList;
  }
  
  public final List<StoryCollection> o()
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
        if (TextUtils.equals((CharSequence)localObject2, akr.l())) {
          continue;
        }
        localObject2 = (StoryCollection)mFriendStoryCollections.get(localObject2);
        if ((localObject2 == null) || (!((StoryCollection)localObject2).A())) {
          continue;
        }
        if (((StoryCollection)localObject2).s() == 0) {
          localArrayList2.add(localObject2);
        }
      }
      localList.add(new akc((StoryCollection)localObject2));
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
 * Qualified Name:     akk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */