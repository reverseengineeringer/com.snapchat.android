import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.database.table.ChatsReceivedInLastHourTable;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.AddSourceType;
import com.snapchat.android.model.Friend.Direction;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.SuggestedFriendAction;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.Property;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.ScApplicationInfo;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import javax.inject.Inject;
import javax.inject.Provider;

public final class akp
  implements aib
{
  protected static ExecutorService DB_WRITE_EXECUTOR = avf.SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS;
  private static final String TAG = "User";
  public static Provider<akp> UNSAFE_USER_PROVIDER = new Provider() {};
  private static Context sContext;
  static akp sInstance;
  static final Object sUserSyncLock = new Object();
  private final atr mAddressBookUtils;
  public List<Friend> mBests = Collections.synchronizedList(new ArrayList());
  @Inject
  qx mCashProviderManager;
  private akx mChatConversationManager;
  private final ChatsReceivedInLastHourTable mChatsReceivedInLastHourTable;
  private final bhk mClock;
  public List<Friend> mContactsNotOnSnapchat = Collections.synchronizedList(new ArrayList());
  public final List<Friend> mContactsOnSnapchat = Collections.synchronizedList(new ArrayList());
  public final Set<Friend> mContactsOnSnapchatSet = Collections.synchronizedSet(new HashSet());
  private final bal mDevUtils;
  private final DiscoverEndpointManager mDiscoverEndpointManager;
  public final Set<String> mDuplicateFirstNames = Collections.synchronizedSet(new HashSet());
  public final Map<String, Friend> mFriendMap = Collections.synchronizedMap(new HashMap());
  public final List<Friend> mFriends;
  public List<String> mFriendsBlockedFromSeeingMyStory = Collections.synchronizedList(new ArrayList());
  public final List<Friend> mFriendsWhoAddedMe = Collections.synchronizedList(new ArrayList());
  private final aup mIdentityUtils;
  public boolean mInitialized = false;
  public bjl mMessagingGatewayInfo = null;
  public long mNextReplayAvailableRealtime = -1L;
  private final List<Friend> mRecents = new ArrayList(22);
  public boolean mServerHasMostRecentReplayTime = true;
  @Inject
  aze mSlightlySecurePreferences;
  private final aph mSnapchatServiceManager;
  public Map<String, aka> mSnapsToBeUpdatedOnServer = new ConcurrentHashMap();
  public final akk mStoryLibrary;
  public final Map<String, akm> mStoryViewRecordsSinceLastServerChange = Collections.synchronizedMap(new HashMap());
  private final List<Friend> mSuggestedFriends = Collections.synchronizedList(new ArrayList());
  @Inject
  akq mUserDatabaseLoader;
  private final akr mUserPrefs;
  
  static
  {
    sContext = null;
  }
  
  public akp()
  {
    this(ChatsReceivedInLastHourTable.a(), akx.c(), akk.a(), DiscoverEndpointManager.a(), akr.a(), new bhk(), new aup(akr.a()), bal.a(), Collections.synchronizedList(new ArrayList()), aph.a(), new atr());
  }
  
  private akp(ChatsReceivedInLastHourTable paramChatsReceivedInLastHourTable, akx paramakx, akk paramakk, DiscoverEndpointManager paramDiscoverEndpointManager, akr paramakr, bhk parambhk, aup paramaup, bal parambal, List<Friend> paramList, aph paramaph, atr paramatr)
  {
    SnapchatApplication.b().c().a(this);
    mChatsReceivedInLastHourTable = paramChatsReceivedInLastHourTable;
    mChatConversationManager = paramakx;
    mStoryLibrary = paramakk;
    mDiscoverEndpointManager = paramDiscoverEndpointManager;
    mUserPrefs = paramakr;
    mClock = parambhk;
    mIdentityUtils = paramaup;
    mDevUtils = parambal;
    mFriends = paramList;
    mSnapchatServiceManager = paramaph;
    mAddressBookUtils = paramatr;
  }
  
  private void A()
  {
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    synchronized (mFriends)
    {
      Iterator localIterator = mFriends.iterator();
      while (localIterator.hasNext())
      {
        String str = ((Friend)localIterator.next()).f().toUpperCase(Locale.ENGLISH);
        if (!localHashSet2.add(str)) {
          localHashSet1.add(str);
        }
      }
    }
    synchronized (mDuplicateFirstNames)
    {
      mDuplicateFirstNames.clear();
      mDuplicateFirstNames.addAll(localCollection);
      return;
    }
  }
  
  @cbr
  public static akp a(Context paramContext)
  {
    if ((sInstance != null) && (sInstancemInitialized)) {
      return sInstance;
    }
    synchronized (sUserSyncLock)
    {
      if ((ReleaseManager.e()) && (Looper.myLooper() == Looper.getMainLooper()))
      {
        Object localObject2 = (StackTraceElement[])Thread.getAllStackTraces().get(Thread.currentThread());
        if ((localObject2 != null) && (localObject2.length > 4))
        {
          localObject2 = localObject2[4];
          new StringBuilder().append(((StackTraceElement)localObject2).getClassName()).append(".").append(((StackTraceElement)localObject2).getMethodName()).append(" called getInstance on the UI thread.");
        }
      }
      if ((sInstance == null) && (sInstance == null)) {
        if (ReleaseManager.e())
        {
          boolean bool = Property.ENABLE_USER_INIT_DELAY.getBoolean();
          if (!bool) {}
        }
      }
    }
    try
    {
      Thread.sleep(5000L);
      sContext = paramContext.getApplicationContext();
      if (ScApplicationInfo.c(paramContext) == ScApplicationInfo.DEFAULT_VERSION_CODE)
      {
        a(false);
        paramContext = sInstance;
        return paramContext;
        paramContext = finally;
        throw paramContext;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        localInterruptedException.printStackTrace();
        continue;
        a(true);
      }
    }
  }
  
  private void a(final akp.b paramb, final DbTable.DatabaseTable... paramVarArgs)
  {
    DB_WRITE_EXECUTOR.execute(new Runnable()
    {
      public final void run()
      {
        akp localakp = akp.this;
        DbTable.DatabaseTable[] arrayOfDatabaseTable = paramVarArgs;
        synchronized (akp.sUserSyncLock)
        {
          if (!akr.m())
          {
            if (paramb != null) {
              paramb.D_();
            }
            return;
          }
          int j = arrayOfDatabaseTable.length;
          int i = 0;
          while (i < j)
          {
            arrayOfDatabaseTable[i].getTable().c(akp.sInstance);
            i += 1;
          }
          ChatsReceivedInLastHourTable.a(akp.y());
          mSlightlySecurePreferences.b();
        }
      }
    });
  }
  
  private static void a(boolean paramBoolean)
  {
    sInstance = new akp();
    akp localakp1;
    if (paramBoolean) {
      localakp1 = sInstance;
    }
    synchronized (sUserSyncLock)
    {
      if (akr.l() == null)
      {
        if (akr.m())
        {
          bbo.a().a(new bfo());
          new px().executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
          if (sInstance != null) {
            aph.a().a(false, false);
          }
        }
        akr.m();
        sInstancemInitialized = true;
        return;
      }
      akr.m();
      Object localObject3 = mSlightlySecurePreferences.a(azh.MESSAGING_GATEWAY_INFO);
      if (localObject3 != null) {
        mMessagingGatewayInfo = ((bjl)aul.a().fromJson((String)localObject3, bjl.class));
      }
      mSlightlySecurePreferences.a();
      localObject3 = mUserDatabaseLoader;
      akp localakp2 = sInstance;
      DbTable.DatabaseTable[] arrayOfDatabaseTable = DbTable.DatabaseTable.values();
      int j = arrayOfDatabaseTable.length;
      int i = 0;
      while (i < j)
      {
        Object localObject4 = arrayOfDatabaseTable[i];
        long l = SystemClock.elapsedRealtime();
        ((DbTable.DatabaseTable)localObject4).name();
        ((DbTable.DatabaseTable)localObject4).getTable().d(localakp2);
        nw localnw = mLifecycleAnalytics;
        localObject4 = ((DbTable.DatabaseTable)localObject4).name();
        l = SystemClock.elapsedRealtime() - l;
        if ((mUserLoadMetric != null) && (l > 0L)) {
          mUserLoadMetric.a((String)localObject4, Long.valueOf(l));
        }
        mDidLoadFromDatabase = true;
        i += 1;
      }
      localakp1.f();
    }
  }
  
  private void a(String[] paramArrayOfString, Set<Friend> paramSet)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        a(auk.b(paramArrayOfString[i].trim(), this), paramSet);
        if (paramSet.size() < 22) {}
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
  
  public static boolean a(@q Friend paramFriend)
  {
    return mTheyAddedMeTimestamp > akr.j();
  }
  
  private boolean a(Friend paramFriend, Set<Friend> paramSet)
  {
    if ((paramFriend == null) || (mBests.contains(paramFriend)) || (mIsPending) || (mDirection == Friend.Direction.INCOMING)) {
      return false;
    }
    paramFriend = f(paramFriend);
    mIsRecent = true;
    if (paramSet.add(paramFriend)) {
      return true;
    }
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if (localFriend.equals(paramFriend)) {
        if (Math.max(mIAddedThemTimestamp, mTheyAddedMeTimestamp) > Math.max(mIAddedThemTimestamp, mTheyAddedMeTimestamp))
        {
          paramSet.remove(localFriend);
          paramSet.add(paramFriend);
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean a(Friend paramFriend, boolean paramBoolean)
  {
    if ((!mIsIgnored) && (!mIsBlocked) && (!mIsHidden)) {}
    for (int i = 1; i == 0; i = 0) {
      return false;
    }
    for (;;)
    {
      synchronized (mFriends)
      {
        if (!mFriends.contains(paramFriend)) {
          return true;
        }
        if (mAddSourceType == Friend.AddSourceType.ADDED_BY_NEARBY)
        {
          i = 1;
          if (((i != 0) && (!paramBoolean)) || (!a(paramFriend))) {
            break;
          }
          return true;
        }
      }
      i = 0;
    }
  }
  
  private static boolean a(List<Friend> paramList, String paramString)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if (localFriend.l().equals(paramString)) {
        return paramList.remove(localFriend);
      }
    }
    return false;
  }
  
  private void d(List<Friend> paramList)
  {
    final HashMap localHashMap = new HashMap();
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      ChatConversation localChatConversation = zi.b(localFriend.l());
      if (localChatConversation == null) {}
      for (long l = Math.max(mTheyAddedMeTimestamp, mIAddedThemTimestamp);; l = mTimestamp)
      {
        localHashMap.put(localFriend, new Long(l));
        break;
      }
    }
    Collections.sort(paramList, new Comparator()
    {
      private long a(Friend paramAnonymousFriend)
      {
        paramAnonymousFriend = (Long)localHashMap.get(paramAnonymousFriend);
        if (paramAnonymousFriend == null) {
          return 0L;
        }
        return paramAnonymousFriend.longValue();
      }
    });
  }
  
  private void e(List<biu> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (biu)paramList.next();
      Friend localFriend = (Friend)mFriendMap.get(((biu)localObject).a());
      localObject = new Friend((biu)localObject, this);
      if (localFriend != null)
      {
        mDirection = Friend.Direction.BOTH;
        mDirection = Friend.Direction.BOTH;
        mTheyAddedMeTimestamp = mTheyAddedMeTimestamp;
      }
      localArrayList.add(localObject);
    }
    a(localArrayList);
  }
  
  private static Friend f(Friend paramFriend)
  {
    Friend localFriend = new Friend(paramFriend.l(), paramFriend.a(), null);
    mTheyAddedMeTimestamp = mTheyAddedMeTimestamp;
    mIAddedThemTimestamp = mIAddedThemTimestamp;
    mFriendmojiString = paramFriend.t();
    mBestFriendIndex = mBestFriendIndex;
    mDirection = mDirection;
    mStubFriend = true;
    return localFriend;
  }
  
  public static akp g()
  {
    return sInstance;
  }
  
  public static Context y()
  {
    return sContext;
  }
  
  @awj
  public final akp.a a(@chc bhx parambhx, boolean paramBoolean)
  {
    Object localObject1 = parambhx.d();
    Object localObject2 = parambhx.f();
    bkg localbkg = parambhx.g();
    List localList = parambhx.h();
    blj localblj = parambhx.k();
    bio localbio = parambhx.i();
    bir localbir = parambhx.j();
    parambhx = parambhx.b();
    boolean bool2 = a((bkq)localObject1, paramBoolean);
    boolean bool3 = a((bix)localObject2);
    boolean bool4 = a(localbkg);
    boolean bool5 = a(localList, localbio, paramBoolean);
    boolean bool1;
    int i;
    if (localblj != null)
    {
      akr.s(avb.a(localblj.a()));
      if (avb.a(localblj.c())) {
        break label334;
      }
      bool1 = true;
      akr.t(bool1);
      akr.u(localblj.b());
      akr.v(localblj.f().booleanValue());
      akr.e(localblj.e().intValue());
      akr.w(localblj.g().booleanValue());
      localObject1 = mSnapchatServiceManager;
      localObject2 = ((aph)localObject1).b(c);
      ((Intent)localObject2).putExtra("op_code", 1033);
      ((Intent)localObject2).putExtra("action", SuggestedFriendAction.LIST.toString());
      ((aph)localObject1).a(c, (Intent)localObject2);
      if ((!TextUtils.isEmpty(akr.e())) && (!aup.b()) && (!aup.a())) {
        break label340;
      }
      i = 1;
      label240:
      if ((i != 0) && (akr.bm() + localblj.d().longValue() < System.currentTimeMillis())) {
        akr.r(true);
      }
    }
    a(parambhx);
    if (localbir != null) {
      mDiscoverEndpointManager.a(localbir.e(), localbir.a(), localbir.b(), localbir.c(), localbir.d());
    }
    for (;;)
    {
      if (paramBoolean) {
        mInitialized = true;
      }
      return new akp.a(bool2, bool3, bool4, bool5);
      label334:
      bool1 = false;
      break;
      label340:
      i = 0;
      break label240;
      mDiscoverEndpointManager.a(null, null, null, null, null);
    }
  }
  
  @chd
  public final Friend a(String paramString)
  {
    synchronized (mFriends)
    {
      paramString = (Friend)mFriendMap.get(paramString);
      return paramString;
    }
  }
  
  public final List<Friend> a()
  {
    return o();
  }
  
  public final List<Friend> a(Set<String> paramSet, int paramInt)
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = q().iterator();
    Friend localFriend;
    if (localIterator.hasNext())
    {
      localFriend = (Friend)localIterator.next();
      if ((paramSet == null) || (!paramSet.contains(localFriend.l()))) {
        break label96;
      }
    }
    label96:
    for (boolean bool = true;; bool = false)
    {
      if (a(localFriend, bool)) {
        localLinkedList.add(localFriend);
      }
      if (localLinkedList.size() < paramInt) {
        break;
      }
      return localLinkedList;
    }
  }
  
  public final void a(aka paramaka)
  {
    mSnapsToBeUpdatedOnServer.put(paramaka.d(), paramaka);
  }
  
  public final void a(akp.b paramb)
  {
    DbTable.DatabaseTable[] arrayOfDatabaseTable1 = new DbTable.DatabaseTable[DbTable.DatabaseTable.values().length];
    DbTable.DatabaseTable[] arrayOfDatabaseTable2 = DbTable.DatabaseTable.values();
    int j = arrayOfDatabaseTable2.length;
    int i = 0;
    while (i < j)
    {
      DbTable.DatabaseTable localDatabaseTable = arrayOfDatabaseTable2[i];
      arrayOfDatabaseTable1[localDatabaseTable.ordinal()] = localDatabaseTable;
      i += 1;
    }
    a(paramb, arrayOfDatabaseTable1);
  }
  
  @awj
  public final void a(@chd bjl parambjl)
  {
    if (parambjl == null) {
      return;
    }
    mMessagingGatewayInfo = parambjl;
    parambjl = aul.a().toJson(parambjl);
    mSlightlySecurePreferences.a(azh.MESSAGING_GATEWAY_INFO, parambjl);
    bbo.a().a(new bdi());
  }
  
  public final void a(String paramString, boolean paramBoolean)
  {
    ??? = a(paramString);
    if (??? != null) {
      mIsBlocked = paramBoolean;
    }
    for (;;)
    {
      synchronized (mFriendsWhoAddedMe)
      {
        Iterator localIterator = mFriendsWhoAddedMe.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        Friend localFriend = (Friend)localIterator.next();
        if (!TextUtils.equals(localFriend.l(), paramString)) {
          continue;
        }
        mIsBlocked = paramBoolean;
      }
      ??? = new Friend(paramString);
      mIsBlocked = true;
      d((Friend)???);
    }
  }
  
  public final void a(List<Friend> paramList)
  {
    Collections.sort(paramList, new Comparator() {});
    synchronized (mFriendsWhoAddedMe)
    {
      mFriendsWhoAddedMe.clear();
      mFriendsWhoAddedMe.addAll(paramList);
      bbo.a().a(new bcp());
      return;
    }
  }
  
  public final void a(DbTable.DatabaseTable... paramVarArgs)
  {
    a(null, paramVarArgs);
  }
  
  @awj
  public final boolean a(@chd bix parambix)
  {
    if (parambix != null)
    {
      Object localObject1 = parambix.a();
      List localList2 = parambix.c();
      mFriendsBlockedFromSeeingMyStory.clear();
      HashMap localHashMap;
      Object localObject2;
      Friend localFriend1;
      synchronized (mFriends)
      {
        localHashMap = new HashMap();
        localObject2 = mFriends.iterator();
        if (((Iterator)localObject2).hasNext())
        {
          localFriend1 = (Friend)((Iterator)localObject2).next();
          localHashMap.put(localFriend1.l(), localFriend1);
        }
      }
      mFriends.clear();
      mFriendMap.clear();
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (biu)((Iterator)localObject1).next();
        if (((biu)localObject2).a().equals(akr.l())) {
          akr.g(((biu)localObject2).d());
        }
        if (((biu)localObject2).c() != biu.a.DELETED)
        {
          localFriend1 = new Friend((biu)localObject2, this);
          mBestFriendIndex = localList2.indexOf(localFriend1.l());
          Friend localFriend2 = (Friend)localHashMap.get(localFriend1.l());
          if (localFriend2 != null)
          {
            mIAddedThemTimestamp = mIAddedThemTimestamp;
            mCustomTitle = mCustomTitle;
            mCustomDescription = mCustomDescription;
            mCashEligibility = localFriend2.r();
          }
          localFriend1.s();
          mFriends.add(localFriend1);
          mFriendMap.put(localFriend1.l(), localFriend1);
          if (!((biu)localObject2).g().booleanValue()) {
            mFriendsBlockedFromSeeingMyStory.add(((biu)localObject2).a());
          }
        }
      }
      f();
      e(parambix.b());
      return true;
    }
    u();
    return false;
  }
  
  @awj
  public final boolean a(@chd bkg parambkg)
  {
    if (parambkg != null)
    {
      if ((parambkg.h()) && (bjx.a.EQUAL == parambkg.g().e())) {
        return false;
      }
      if ((parambkg.h()) && (parambkg.g().c())) {
        akr.k(parambkg.g().b());
      }
      Object localObject3 = new ArrayList();
      if (parambkg.b())
      {
        localObject1 = parambkg.a().iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((List)localObject3).add(new StorySnapLogbook((bkj)((Iterator)localObject1).next()));
        }
      }
      Object localObject4 = new ArrayList();
      if (parambkg.e())
      {
        localObject1 = parambkg.d().iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((List)localObject4).add(new StoryGroup((bjm)((Iterator)localObject1).next()));
        }
      }
      Object localObject1 = mStoryLibrary;
      mStories.clear();
      Object localObject6;
      synchronized (mMyPostedStorySnapLogbooksForDatabase)
      {
        mMyPostedStorySnapLogbooksForDatabase.clear();
        localObject5 = ((List)localObject3).iterator();
        if (((Iterator)localObject5).hasNext())
        {
          localObject6 = (StorySnapLogbook)((Iterator)localObject5).next();
          akl localakl = mStorySnap;
          aki.a().a("my_story_ads79sdf", mClientId);
          localakl.az();
          ((akk)localObject1).a((StorySnapLogbook)localObject6);
        }
      }
      Object localObject5 = ajx.a();
      ((ajx)localObject5).a((List)localObject3);
      mStories.put(((ajx)localObject5).c(), localObject5);
      localObject3 = ((List)localObject4).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (StoryGroup)((Iterator)localObject3).next();
        localObject5 = ((StoryGroup)localObject4).h().iterator();
        while (((Iterator)localObject5).hasNext())
        {
          localObject6 = nextmStorySnap;
          aki.a().a(((StoryGroup)localObject4).c(), mClientId);
          ((akl)localObject6).az();
        }
        Collections.sort(((StoryGroup)localObject4).h());
        ((akk)localObject1).b(((StoryGroup)localObject4).h());
        mStories.put(((StoryGroup)localObject4).c(), localObject4);
        if (((StoryGroup)localObject4).f()) {
          new pf(((StoryGroup)localObject4).c()).execute();
        }
      }
      ??? = new LinkedList();
      localObject3 = aki.a().c().values().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = ((LinkedHashMap)((Iterator)localObject3).next()).values().iterator();
        while (((Iterator)localObject4).hasNext())
        {
          localObject5 = (aji)((Iterator)localObject4).next();
          if (mMediaMailingMetadata.mTimeOfLastAttempt + 60000L < System.currentTimeMillis()) {
            ((List)???).add(localObject5);
          }
        }
      }
      ??? = ((List)???).iterator();
      while (((Iterator)???).hasNext())
      {
        localObject3 = (aji)((Iterator)???).next();
        aki.a().b((aji)localObject3);
      }
      ((akk)localObject1).j();
      boolean bool = avb.a(parambkg.f());
      mStoryLibrary.a(parambkg.c(), bool);
      return true;
    }
    mStoryLibrary.h();
    return false;
  }
  
  @awj
  public final boolean a(@chd bkq parambkq, boolean paramBoolean)
  {
    long l2 = 0L;
    if (parambkq == null) {
      return false;
    }
    long l1 = avb.a(parambkq.R());
    Object localObject1 = sContext;
    int i;
    label59:
    label79:
    label94:
    long l3;
    Object localObject2;
    label222:
    label270:
    label283:
    boolean bool;
    if ((akr.f()) && (akr.Z()))
    {
      i = 1;
      if (i != 0)
      {
        if ((0L != l1) && (akr.ac() == l1)) {
          break label431;
        }
        i = 1;
        if (i == 0)
        {
          if (System.currentTimeMillis() - akr.k() <= 604800000L) {
            break label436;
          }
          i = 1;
          if (i == 0) {
            break label441;
          }
        }
        aph.a().a((Context)localObject1, false, false);
      }
      akr.b(parambkq);
      localObject1 = parambkq.B();
      if (localObject1 != null) {
        Collections.reverse((List)localObject1);
      }
      l1 = avb.a(parambkq.E());
      l3 = avb.a(parambkq.D());
      localObject1 = Calendar.getInstance();
      localObject2 = Calendar.getInstance();
      ((Calendar)localObject1).setTime(new Date(l1));
      ((Calendar)localObject2).setTime(new Date(l3));
      if ((((Calendar)localObject2).get(1) >= ((Calendar)localObject1).get(1)) && ((((Calendar)localObject2).get(1) != ((Calendar)localObject1).get(1)) || (((Calendar)localObject2).get(6) >= ((Calendar)localObject1).get(6)))) {
        break label455;
      }
      l1 = -1L;
      mNextReplayAvailableRealtime = l1;
      akr.a(avb.a(parambkq.U()), parambkq.V(), parambkq.W(), parambkq.X(), avb.a(parambkq.Y()));
      if (parambkq.M() == null) {
        break label552;
      }
      localObject1 = parambkq.M();
      if (parambkq.N() == null) {
        break label560;
      }
      localObject2 = parambkq.N();
      if (parambkq.L() == null) {
        break label569;
      }
      bool = parambkq.L().booleanValue();
      label299:
      akr.a(bool, (String)localObject1, (String)localObject2, parambkq.O());
      if ((paramBoolean) && (akr.ap() == ScCashResponsePayload.Status.OK) && (akr.T()) && (akr.at()))
      {
        if (!mCashProviderManager.b((String)localObject1)) {
          break label575;
        }
        mCashProviderManager.a((String)localObject1).a();
      }
    }
    for (;;)
    {
      label363:
      if (parambkq.aa() != null)
      {
        localObject1 = new ArrayList();
        localObject2 = parambkq.aa().iterator();
        for (;;)
        {
          if (((Iterator)localObject2).hasNext())
          {
            ((ArrayList)localObject1).add(new ajy((bjn)((Iterator)localObject2).next()));
            continue;
            i = 0;
            break;
            label431:
            i = 0;
            break label59;
            label436:
            i = 0;
            break label79;
            label441:
            aph.a().a((Context)localObject1, true, true);
            break label94;
            label455:
            l1 = l2;
            if (((Calendar)localObject2).get(1) != ((Calendar)localObject1).get(1)) {
              break label222;
            }
            l1 = l2;
            if (((Calendar)localObject2).get(6) != ((Calendar)localObject1).get(6)) {
              break label222;
            }
            ((Calendar)localObject2).set(11, 0);
            ((Calendar)localObject2).set(12, 0);
            ((Calendar)localObject2).set(13, 0);
            ((Calendar)localObject2).set(14, 0);
            ((Calendar)localObject2).add(6, 1);
            l1 = SystemClock.elapsedRealtime() + (((Calendar)localObject2).getTimeInMillis() - l3);
            break label222;
            label552:
            localObject1 = "SQUARE";
            break label270;
            label560:
            localObject2 = parambkq.n();
            break label283;
            label569:
            bool = true;
            break label299;
            label575:
            akr.ah();
            break label363;
          }
        }
        mStoryLibrary.a((List)localObject1);
      }
    }
    akr.u(avb.a(parambkq.ad()));
    mSnapchatServiceManager.a(parambkq.ae());
    return true;
  }
  
  public final boolean a(@chd List<bid> paramList, @chd bio parambio, boolean paramBoolean)
  {
    if (paramList == null) {
      return false;
    }
    if (parambio != null) {
      new StringBuilder("Updating conversations with isDelta = ").append(avb.a(parambio.a()));
    }
    mChatConversationManager.a(paramList, true, true, paramBoolean);
    return true;
  }
  
  @chd
  public final Friend b(String paramString)
  {
    synchronized (mFriends)
    {
      Iterator localIterator = mFriends.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (TextUtils.equals(mSharedStoryId, paramString)) {
          return localFriend;
        }
      }
      return null;
    }
  }
  
  public final List<Friend> b()
  {
    return mBests;
  }
  
  public final void b(List<Friend> paramList)
  {
    synchronized (mSuggestedFriends)
    {
      mSuggestedFriends.clear();
      mSuggestedFriends.addAll(paramList);
      return;
    }
  }
  
  public final boolean b(Friend paramFriend)
  {
    synchronized (mContactsNotOnSnapchat)
    {
      boolean bool = mContactsOnSnapchatSet.contains(paramFriend);
      return bool;
    }
  }
  
  public final List<Friend> c()
  {
    return mRecents;
  }
  
  public final void c(@chd List<biu> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    synchronized (mFriends)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        biu localbiu = (biu)paramList.next();
        if (localbiu.c() != biu.a.DELETED)
        {
          Friend localFriend = new Friend(localbiu, this);
          localFriend.s();
          mFriends.remove(localFriend);
          mFriends.add(localFriend);
          mFriendMap.put(localFriend.l(), localFriend);
          if (!localbiu.g().booleanValue()) {
            mFriendsBlockedFromSeeingMyStory.add(localbiu.a());
          }
        }
      }
    }
    Collections.sort(mFriends);
  }
  
  public final boolean c(Friend paramFriend)
  {
    synchronized (mFriendsWhoAddedMe)
    {
      boolean bool = mFriendsWhoAddedMe.contains(paramFriend);
      return bool;
    }
  }
  
  public final boolean c(String paramString)
  {
    synchronized (mFriends)
    {
      boolean bool = mFriendMap.containsKey(paramString);
      return bool;
    }
  }
  
  public final List<Friend> d()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = o().iterator();
    label167:
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      int i;
      if (mCandidateForNeedsLove) {
        if ((mDirection == Friend.Direction.INCOMING) || (mIsPending) || (mIsBlocked) || (mIsFollowing)) {
          i = 0;
        }
      }
      for (;;)
      {
        if (i == 0) {
          break label167;
        }
        localFriend = f(localFriend);
        mSelectedForNeedsLove = true;
        localArrayList.add(localFriend);
        break;
        if ((mRecents.contains(localFriend)) || (mBests.contains(localFriend))) {
          i = 0;
        } else if (!localFriend.l().equals(akr.l())) {
          i = 1;
        } else {
          i = 0;
        }
      }
    }
    return new bha().a(localArrayList);
  }
  
  public final void d(Friend paramFriend)
  {
    synchronized (mFriends)
    {
      mFriendMap.put(paramFriend.l(), paramFriend);
      mFriends.remove(paramFriend);
      mFriends.add(paramFriend);
      return;
    }
  }
  
  public final void d(String paramString)
  {
    mMessagingGatewayInfo.a(paramString);
    paramString = aul.a().toJson(mMessagingGatewayInfo);
    mSlightlySecurePreferences.a(azh.MESSAGING_GATEWAY_INFO, paramString);
    bbo.a().a(new bdi());
  }
  
  public final void e()
  {
    HashSet localHashSet = new HashSet(22);
    ??? = mChatConversationManager.f().iterator();
    Object localObject4;
    do
    {
      if (!((Iterator)???).hasNext()) {
        break;
      }
      localObject4 = (ChatConversation)((Iterator)???).next();
      if (!ayg.a((ChatConversation)localObject4)) {
        break label223;
      }
      a(mTheirUsername.split(","), localHashSet);
    } while (localHashSet.size() < 22);
    for (;;)
    {
      int i;
      synchronized (mFriendsWhoAddedMe)
      {
        localObject4 = mFriendsWhoAddedMe.iterator();
        i = 0;
        Friend localFriend;
        if (((Iterator)localObject4).hasNext())
        {
          localFriend = (Friend)((Iterator)localObject4).next();
          if ((!mFriends.contains(localFriend)) || (!a(localFriend, localHashSet))) {
            break label319;
          }
          i += 1;
          break label319;
        }
        synchronized (mFriends)
        {
          localObject4 = mFriends.iterator();
          if (!((Iterator)localObject4).hasNext()) {
            break label246;
          }
          localFriend = (Friend)((Iterator)localObject4).next();
          if (localFriend.l().equals(akr.l())) {
            continue;
          }
          a(localFriend, localHashSet);
        }
        label223:
        a(auk.b(mTheirUsername, this), localSet);
      }
      label246:
      ??? = new ArrayList(localCollection);
      d((List)???);
      ??? = ((List)???).subList(0, Math.min(((List)???).size(), 22));
      synchronized (mRecents)
      {
        mRecents.clear();
        mRecents.addAll((Collection)???);
        return;
      }
      label319:
      do
      {
        break;
      } while (i < 22);
    }
  }
  
  public final void e(Friend paramFriend)
  {
    synchronized (mFriends)
    {
      mFriendMap.remove(paramFriend.l());
      mFriends.remove(paramFriend);
      return;
    }
  }
  
  public final void e(String paramString)
  {
    synchronized (mSuggestedFriends)
    {
      Iterator localIterator = mSuggestedFriends.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (localFriend.l().equals(paramString))
        {
          mSuggestedFriends.remove(localFriend);
          return;
        }
      }
      return;
    }
  }
  
  public final void f()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (mFriends)
    {
      Iterator localIterator = mFriends.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (localFriend.j()) {
          localArrayList.add(f(localFriend));
        }
      }
    }
    Collections.sort(localList1, new Comparator() {});
    synchronized (mBests)
    {
      mBests.clear();
      mBests.addAll(localList1);
      e();
      A();
      return;
    }
  }
  
  public final void f(String paramString)
  {
    synchronized (mFriendsWhoAddedMe)
    {
      Iterator localIterator = mFriendsWhoAddedMe.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (TextUtils.equals(localFriend.l(), paramString)) {
          mIsIgnored = true;
        }
      }
    }
  }
  
  public final void g(String paramString)
  {
    ??? = new Friend(paramString);
    e((Friend)???);
    List localList = q();
    int i = localList.indexOf(???);
    if (i != -1) {
      getmHasBeenAddedAsFriend = false;
    }
    synchronized (mFriendsWhoAddedMe)
    {
      boolean bool = a(mFriendsWhoAddedMe, paramString);
      if (bool) {
        bbo.a().a(new bcp());
      }
      i(paramString);
      h(paramString);
      akk.a().c(paramString);
      paramString = zi.b(paramString);
      if (paramString != null) {
        paramString.c(false);
      }
      return;
    }
  }
  
  public final int h()
  {
    Iterator localIterator = q().iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if ((!a(localFriend, false)) || (!a(localFriend))) {
        break label56;
      }
      i += 1;
    }
    label56:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public final void h(String paramString)
  {
    a(mRecents, paramString);
  }
  
  public final ArrayList<Friend> i()
  {
    ArrayList localArrayList = new ArrayList();
    boolean bool = bal.d();
    synchronized (mFriends)
    {
      Collections.sort(mFriends);
      Iterator localIterator = mFriends.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if ((!TextUtils.equals(localFriend.l(), akr.l())) && (!mIsBlocked) && (localFriend.o()) && ((!mIsSharedStory) || (!bool))) {
          localArrayList.add(localFriend);
        }
      }
    }
    return localArrayList1;
  }
  
  public final void i(String paramString)
  {
    a(mBests, paramString);
  }
  
  public final ArrayList<Friend> j()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = o().iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if ((!localFriend.l().equals(akr.l())) && (!mIsBlocked) && (!mIsSharedStory) && (!mIsLocalStory)) {
        localArrayList.add(localFriend);
      }
    }
    Collections.sort(localArrayList);
    return localArrayList;
  }
  
  public final List<Friend> k()
  {
    ArrayList localArrayList = new ArrayList(mBests);
    synchronized (mFriends)
    {
      Collections.sort(mFriends);
      Iterator localIterator = mFriends.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (auk.a(localFriend)) {
          localArrayList.add(localFriend);
        }
      }
    }
    return localList1;
  }
  
  public final List<Friend> l()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (mFriends)
    {
      Collections.sort(mFriends);
      Iterator localIterator = mFriends.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (auk.a(localFriend)) {
          localArrayList.add(localFriend);
        }
      }
    }
    return localList1;
  }
  
  public final List<Friend> m()
  {
    synchronized (mContactsNotOnSnapchat)
    {
      ArrayList localArrayList = new ArrayList(mContactsNotOnSnapchat);
      return localArrayList;
    }
  }
  
  public final List<Friend> n()
  {
    synchronized (mContactsOnSnapchat)
    {
      ArrayList localArrayList = new ArrayList(mContactsOnSnapchat);
      return localArrayList;
    }
  }
  
  @chc
  public final List<Friend> o()
  {
    synchronized (mFriends)
    {
      ArrayList localArrayList = new ArrayList(mFriends);
      return localArrayList;
    }
  }
  
  public final int p()
  {
    Iterator localIterator = mFriends.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      if (nextmDirection != Friend.Direction.BOTH) {
        break label48;
      }
      i += 1;
    }
    label48:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  @chc
  public final List<Friend> q()
  {
    synchronized (mFriendsWhoAddedMe)
    {
      ArrayList localArrayList = new ArrayList(mFriendsWhoAddedMe);
      return localArrayList;
    }
  }
  
  @chc
  public final List<Friend> r()
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    Iterator localIterator;
    Friend localFriend;
    synchronized (mFriends)
    {
      localIterator = mFriends.iterator();
      while (localIterator.hasNext())
      {
        localFriend = (Friend)localIterator.next();
        if (mIsBlocked)
        {
          localArrayList.add(localFriend);
          localHashSet.add(localFriend);
        }
      }
    }
    synchronized (mFriendsWhoAddedMe)
    {
      localIterator = mFriendsWhoAddedMe.iterator();
      while (localIterator.hasNext())
      {
        localFriend = (Friend)localIterator.next();
        if ((mIsBlocked) && (!localHashSet.contains(localFriend)))
        {
          ((ArrayList)localObject).add(localFriend);
          localHashSet.add(localFriend);
        }
      }
    }
    return localList;
  }
  
  @chc
  public final List<Friend> s()
  {
    synchronized (mSuggestedFriends)
    {
      ArrayList localArrayList = new ArrayList(mSuggestedFriends);
      return localArrayList;
    }
  }
  
  public final boolean t()
  {
    String str = akr.l();
    if (str == null) {}
    do
    {
      do
      {
        return false;
        if ((ReleaseManager.f()) && (bal.a(str))) {
          return true;
        }
      } while ((mNextReplayAvailableRealtime < 0L) || (!mServerHasMostRecentReplayTime));
      new StringBuilder("current_realtime: ").append(SystemClock.elapsedRealtime());
      new StringBuilder("next_replay_available_realtime: ").append(mNextReplayAvailableRealtime);
      new StringBuilder("current_time: ").append(System.currentTimeMillis());
    } while (SystemClock.elapsedRealtime() < mNextReplayAvailableRealtime);
    return true;
  }
  
  public final String toString()
  {
    return "User [logged=" + akr.m() + ", username=" + akr.l() + ", serverToken=" + akr.F() + ", email=" + akr.G() + ", phoneNumber=" + akr.e() + "]";
  }
  
  public final void u()
  {
    synchronized (mFriends)
    {
      Iterator localIterator = mFriends.iterator();
      if (localIterator.hasNext()) {
        ((Friend)localIterator.next()).s();
      }
    }
  }
  
  public final void v()
  {
    w();
    bbo.a().a(new bdh());
  }
  
  public final void w()
  {
    SharedPreferenceKey.purge();
    DB_WRITE_EXECUTOR.execute(new Runnable()
    {
      public final void run()
      {
        int i = 0;
        for (;;)
        {
          synchronized (akp.z())
          {
            DbTable.DatabaseTable[] arrayOfDatabaseTable = DbTable.DatabaseTable.values();
            int j = arrayOfDatabaseTable.length;
            if (i < j)
            {
              DbTable.DatabaseTable localDatabaseTable = arrayOfDatabaseTable[i];
              if (localDatabaseTable.getTable().l()) {
                localDatabaseTable.getTable().k();
              } else {
                localDatabaseTable.getTable().c();
              }
            }
          }
          return;
          i += 1;
        }
      }
    });
    axo.b();
    mSlightlySecurePreferences.c();
    zk.b();
    zm.b();
    aki.b();
    akx.d();
    aoq.a = null;
    aot.a = null;
    aov.a = null;
    aph.b();
    avm.b();
    avn.e();
    zb.b();
    zd.b();
    ajx.b();
    new Thread(new avi.1(SnapchatApplication.b())).start();
    Object localObject1 = aef.a();
    b.clear();
    c.clear();
    d.clear();
    e.clear();
    aa.clear();
    akk.a().b();
    amStreams.clear();
    avw.a().b();
    bgy.a().b();
    localObject1 = bgt.a();
    mUrlRoutingRWLock.writeLock().lock();
    try
    {
      mUrlRoutingMap.clear();
      mSerializedUrlRoutingMap = "";
      mUrlRoutingRWLock.writeLock().unlock();
      a(false);
      return;
    }
    finally
    {
      mUrlRoutingRWLock.writeLock().unlock();
    }
  }
  
  public final void x()
  {
    a(null);
  }
  
  public static final class a
  {
    private final boolean mConversationsUpdated;
    private final boolean mFriendsUpdated;
    public final boolean mStoriesUpdated;
    private final boolean mUpdatesUpdated;
    
    public a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
    {
      mUpdatesUpdated = paramBoolean1;
      mFriendsUpdated = paramBoolean2;
      mStoriesUpdated = paramBoolean3;
      mConversationsUpdated = paramBoolean4;
    }
  }
  
  public static abstract interface b
  {
    public abstract void D_();
  }
}

/* Location:
 * Qualified Name:     akp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */