import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
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

public final class ajv
  implements ahe
{
  protected static ExecutorService DB_WRITE_EXECUTOR = auh.SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS;
  private static final String TAG = "User";
  public static Provider<ajv> UNSAFE_USER_PROVIDER = new Provider() {};
  private static Context sContext;
  static ajv sInstance;
  static final Object sUserSyncLock = new Object();
  private final ass mAddressBookUtils;
  public List<Friend> mBests = Collections.synchronizedList(new ArrayList());
  @Inject
  qh mCashProviderManager;
  private akc mChatConversationManager;
  private final ChatsReceivedInLastHourTable mChatsReceivedInLastHourTable;
  private final bgk mClock;
  public List<Friend> mContactsNotOnSnapchat = Collections.synchronizedList(new ArrayList());
  public final List<Friend> mContactsOnSnapchat = Collections.synchronizedList(new ArrayList());
  public final Set<Friend> mContactsOnSnapchatSet = Collections.synchronizedSet(new HashSet());
  private final azm mDevUtils;
  private final DiscoverEndpointManager mDiscoverEndpointManager;
  public final Set<String> mDuplicateFirstNames = Collections.synchronizedSet(new HashSet());
  public final Map<String, Friend> mFriendMap = Collections.synchronizedMap(new HashMap());
  public final List<Friend> mFriends;
  public List<String> mFriendsBlockedFromSeeingMyStory = Collections.synchronizedList(new ArrayList());
  public final List<Friend> mFriendsWhoAddedMe = Collections.synchronizedList(new ArrayList());
  private final atr mIdentityUtils;
  public boolean mInitialized = false;
  public bil mMessagingGatewayInfo = null;
  public long mNextReplayAvailableRealtime = -1L;
  private final List<Friend> mRecents = new ArrayList(22);
  public boolean mServerHasMostRecentReplayTime = true;
  @Inject
  ayg mSlightlySecurePreferences;
  private final aol mSnapchatServiceManager;
  public Map<String, aje> mSnapsToBeUpdatedOnServer = new ConcurrentHashMap();
  public final ajq mStoryLibrary;
  public final Map<String, ajs> mStoryViewRecordsSinceLastServerChange = Collections.synchronizedMap(new HashMap());
  private final List<Friend> mSuggestedFriends = Collections.synchronizedList(new ArrayList());
  @Inject
  ajw mUserDatabaseLoader;
  private final ajx mUserPrefs;
  
  static
  {
    sContext = null;
  }
  
  public ajv()
  {
    this(ChatsReceivedInLastHourTable.a(), akc.b(), ajq.a(), DiscoverEndpointManager.a(), ajx.a(), new bgk(), new atr(ajx.a()), azm.a(), Collections.synchronizedList(new ArrayList()), aol.a(), new ass());
  }
  
  private ajv(ChatsReceivedInLastHourTable paramChatsReceivedInLastHourTable, akc paramakc, ajq paramajq, DiscoverEndpointManager paramDiscoverEndpointManager, ajx paramajx, bgk parambgk, atr paramatr, azm paramazm, List<Friend> paramList, aol paramaol, ass paramass)
  {
    SnapchatApplication.b().c().a(this);
    mChatsReceivedInLastHourTable = paramChatsReceivedInLastHourTable;
    mChatConversationManager = paramakc;
    mStoryLibrary = paramajq;
    mDiscoverEndpointManager = paramDiscoverEndpointManager;
    mUserPrefs = paramajx;
    mClock = parambgk;
    mIdentityUtils = paramatr;
    mDevUtils = paramazm;
    mFriends = paramList;
    mSnapchatServiceManager = paramaol;
    mAddressBookUtils = paramass;
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
        String str = ((Friend)localIterator.next()).e().toUpperCase(Locale.ENGLISH);
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
  
  @caq
  public static ajv a(Context paramContext)
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
          Timber.f("User", ((StackTraceElement)localObject2).getClassName() + "." + ((StackTraceElement)localObject2).getMethodName() + " called getInstance on the UI thread.", new Object[0]);
        }
      }
      if (sInstance == null)
      {
        if (sInstance != null) {
          break label222;
        }
        if (ReleaseManager.e())
        {
          boolean bool = Property.ENABLE_USER_INIT_DELAY.getBoolean();
          if (!bool) {}
        }
      }
    }
    for (;;)
    {
      try
      {
        Timber.f("User", "init - sleep 5 seconds for investigating potential ANR. To disable the delay,\n$ adb shell setprop debug.sc.user_init_delay FALSE", new Object[0]);
        Thread.sleep(5000L);
        Timber.c("User", "qwert user is null. pulling from shared prefs", new Object[0]);
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
        localInterruptedException.printStackTrace();
        continue;
        a(true);
        continue;
      }
      label222:
      Timber.c("User", "sInstance not null", new Object[0]);
    }
  }
  
  private void a(final ajv.b paramb, final DbTable.DatabaseTable... paramVarArgs)
  {
    DB_WRITE_EXECUTOR.execute(new Runnable()
    {
      public final void run()
      {
        ajv localajv = ajv.this;
        DbTable.DatabaseTable[] arrayOfDatabaseTable = paramVarArgs;
        synchronized (ajv.sUserSyncLock)
        {
          if (!ajx.m())
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
            arrayOfDatabaseTable[i].getTable().c(ajv.sInstance);
            i += 1;
          }
          ChatsReceivedInLastHourTable.a(ajv.y());
          mSlightlySecurePreferences.b();
        }
      }
    });
  }
  
  private static void a(boolean paramBoolean)
  {
    sInstance = new ajv();
    ajv localajv1;
    if (paramBoolean) {
      localajv1 = sInstance;
    }
    synchronized (sUserSyncLock)
    {
      Timber.c("User", "Calling load user from database", new Object[0]);
      if (ajx.l() == null)
      {
        if (ajx.m())
        {
          ban.a().a(new bep());
          new pg().executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
          if (sInstance != null) {
            aol.a().a(false, false);
          }
        }
        Timber.c("User", "The user has been reset. Is logged in? %s", new Object[] { Boolean.valueOf(ajx.m()) });
        sInstancemInitialized = true;
        return;
      }
      Timber.c("User", "User loaded from database with logged in value of %s", new Object[] { Boolean.valueOf(ajx.m()) });
      Object localObject3 = mSlightlySecurePreferences.a(ayj.MESSAGING_GATEWAY_INFO);
      if (localObject3 != null) {
        mMessagingGatewayInfo = ((bil)atn.a().fromJson((String)localObject3, bil.class));
      }
      mSlightlySecurePreferences.a();
      localObject3 = mUserDatabaseLoader;
      ajv localajv2 = sInstance;
      DbTable.DatabaseTable[] arrayOfDatabaseTable = DbTable.DatabaseTable.values();
      int j = arrayOfDatabaseTable.length;
      int i = 0;
      while (i < j)
      {
        Object localObject4 = arrayOfDatabaseTable[i];
        long l = SystemClock.elapsedRealtime();
        Timber.c("UserDatabaseLoader", "Populating from %s table", new Object[] { ((DbTable.DatabaseTable)localObject4).name() });
        ((DbTable.DatabaseTable)localObject4).getTable().d(localajv2);
        nf localnf = mLifecycleAnalytics;
        localObject4 = ((DbTable.DatabaseTable)localObject4).name();
        l = SystemClock.elapsedRealtime() - l;
        if ((mUserLoadMetric != null) && (l > 0L)) {
          mUserLoadMetric.a((String)localObject4, Long.valueOf(l));
        }
        mDidLoadFromDatabase = true;
        i += 1;
      }
      localajv1.f();
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
        a(atm.b(paramArrayOfString[i].trim(), this), paramSet);
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
    return mTheyAddedMeTimestamp > ajx.j();
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
    int i;
    if ((!mIsIgnored) && (!mIsBlocked) && (!mIsHidden))
    {
      i = 1;
      if (i != 0) {
        break label34;
      }
    }
    for (;;)
    {
      return false;
      i = 0;
      break;
      label34:
      if (!mFriends.contains(paramFriend)) {
        return true;
      }
      if (mAddSourceType == Friend.AddSourceType.ADDED_BY_NEARBY) {}
      for (i = 1; ((i == 0) || (paramBoolean)) && (a(paramFriend)); i = 0) {
        return true;
      }
    }
  }
  
  private static boolean a(List<Friend> paramList, String paramString)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if (localFriend.h().equals(paramString)) {
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
      ChatConversation localChatConversation = ym.b(localFriend.h());
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
  
  private void e(List<bhu> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (bhu)paramList.next();
      Friend localFriend = (Friend)mFriendMap.get(((bhu)localObject).a());
      localObject = new Friend((bhu)localObject, this);
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
    Friend localFriend = new Friend(paramFriend.h(), paramFriend.a(), null);
    mTheyAddedMeTimestamp = mTheyAddedMeTimestamp;
    mIAddedThemTimestamp = mIAddedThemTimestamp;
    mFriendmojiString = paramFriend.u();
    mBestFriendIndex = mBestFriendIndex;
    mDirection = mDirection;
    mStubFriend = true;
    return localFriend;
  }
  
  public static ajv g()
  {
    return sInstance;
  }
  
  public static Context y()
  {
    return sContext;
  }
  
  @avl
  public final ajv.a a(@cgb bgx parambgx, boolean paramBoolean)
  {
    Object localObject1 = parambgx.d();
    Object localObject2 = parambgx.f();
    bjf localbjf = parambgx.g();
    List localList = parambgx.h();
    bki localbki = parambgx.k();
    bho localbho = parambgx.i();
    bhr localbhr = parambgx.j();
    parambgx = parambgx.b();
    boolean bool2 = a((bjp)localObject1, paramBoolean);
    boolean bool3 = a((bhx)localObject2);
    boolean bool4 = a(localbjf);
    boolean bool5 = a(localList, localbho, paramBoolean);
    boolean bool1;
    int i;
    if (localbki != null)
    {
      ajx.t(aud.a(localbki.a()));
      if (aud.a(localbki.c())) {
        break label334;
      }
      bool1 = true;
      ajx.u(bool1);
      ajx.u(localbki.b());
      ajx.w(localbki.f().booleanValue());
      ajx.e(localbki.e().intValue());
      ajx.x(localbki.g().booleanValue());
      localObject1 = mSnapchatServiceManager;
      localObject2 = ((aol)localObject1).b(c);
      ((Intent)localObject2).putExtra("op_code", 1033);
      ((Intent)localObject2).putExtra("action", SuggestedFriendAction.LIST.toString());
      ((aol)localObject1).a(c, (Intent)localObject2);
      if ((!TextUtils.isEmpty(ajx.e())) && (!atr.b()) && (!atr.a())) {
        break label340;
      }
      i = 1;
      label240:
      if ((i != 0) && (ajx.bp() + localbki.d().longValue() < System.currentTimeMillis())) {
        ajx.s(true);
      }
    }
    a(parambgx);
    if (localbhr != null) {
      mDiscoverEndpointManager.a(localbhr.e(), localbhr.a(), localbhr.b(), localbhr.c(), localbhr.d());
    }
    for (;;)
    {
      if (paramBoolean) {
        mInitialized = true;
      }
      return new ajv.a(bool2, bool3, bool4, bool5);
      label334:
      bool1 = false;
      break;
      label340:
      i = 0;
      break label240;
      mDiscoverEndpointManager.a(null, null, null, null, null);
    }
  }
  
  @cgc
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
      if ((paramSet == null) || (!paramSet.contains(localFriend.h()))) {
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
  
  public final void a(aje paramaje)
  {
    mSnapsToBeUpdatedOnServer.put(paramaje.d(), paramaje);
  }
  
  public final void a(ajv.b paramb)
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
  
  @avl
  public final void a(@cgc bil parambil)
  {
    if (parambil == null) {
      return;
    }
    mMessagingGatewayInfo = parambil;
    parambil = atn.a().toJson(parambil);
    mSlightlySecurePreferences.a(ayj.MESSAGING_GATEWAY_INFO, parambil);
    ban.a().a(new bci());
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
        if (!TextUtils.equals(localFriend.h(), paramString)) {
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
      ban.a().a(new bbp());
      return;
    }
  }
  
  public final void a(DbTable.DatabaseTable... paramVarArgs)
  {
    a(null, paramVarArgs);
  }
  
  @avl
  public final boolean a(@cgc bhx parambhx)
  {
    if (parambhx != null)
    {
      Object localObject1 = parambhx.a();
      List localList2 = parambhx.c();
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
          localHashMap.put(localFriend1.h(), localFriend1);
        }
      }
      mFriends.clear();
      mFriendMap.clear();
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (bhu)((Iterator)localObject1).next();
        if (((bhu)localObject2).a().equals(ajx.l())) {
          ajx.g(((bhu)localObject2).d());
        }
        if (((bhu)localObject2).c() != bhu.a.DELETED)
        {
          localFriend1 = new Friend((bhu)localObject2, this);
          mBestFriendIndex = localList2.indexOf(localFriend1.h());
          Friend localFriend2 = (Friend)localHashMap.get(localFriend1.h());
          if (localFriend2 != null)
          {
            mIAddedThemTimestamp = mIAddedThemTimestamp;
            mCustomTitle = mCustomTitle;
            mCustomDescription = mCustomDescription;
            mCashEligibility = localFriend2.s();
          }
          localFriend1.t();
          mFriends.add(localFriend1);
          mFriendMap.put(localFriend1.h(), localFriend1);
          if (!((bhu)localObject2).g().booleanValue()) {
            mFriendsBlockedFromSeeingMyStory.add(((bhu)localObject2).a());
          }
        }
      }
      f();
      e(parambhx.b());
      return true;
    }
    u();
    return false;
  }
  
  @avl
  public final boolean a(@cgc bjf parambjf)
  {
    if (parambjf != null)
    {
      if ((parambjf.h()) && (biw.a.EQUAL == parambjf.g().e()))
      {
        Timber.c("User", "onSuccess - Story response is pruned", new Object[0]);
        return false;
      }
      if ((parambjf.h()) && (parambjf.g().c())) {
        ajx.k(parambjf.g().b());
      }
      Object localObject3 = new ArrayList();
      if (parambjf.b())
      {
        localObject1 = parambjf.a().iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((List)localObject3).add(new StorySnapLogbook((bji)((Iterator)localObject1).next()));
        }
      }
      Object localObject4 = new ArrayList();
      if (parambjf.e())
      {
        localObject1 = parambjf.d().iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((List)localObject4).add(new StoryGroup((bim)((Iterator)localObject1).next()));
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
          ajr localajr = mStorySnap;
          ajn.a().a("my_story_ads79sdf", mClientId);
          localajr.aE();
          ((ajq)localObject1).a((StorySnapLogbook)localObject6);
        }
      }
      Object localObject5 = ajb.a();
      ((ajb)localObject5).a((List)localObject3);
      mStories.put(((ajb)localObject5).c(), localObject5);
      localObject3 = ((List)localObject4).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (StoryGroup)((Iterator)localObject3).next();
        localObject5 = ((StoryGroup)localObject4).h().iterator();
        while (((Iterator)localObject5).hasNext())
        {
          localObject6 = nextmStorySnap;
          ajn.a().a(((StoryGroup)localObject4).c(), mClientId);
          ((ajr)localObject6).aE();
        }
        Collections.sort(((StoryGroup)localObject4).h());
        ((ajq)localObject1).b(((StoryGroup)localObject4).h());
        mStories.put(((StoryGroup)localObject4).c(), localObject4);
        if (((StoryGroup)localObject4).f()) {
          new oo(((StoryGroup)localObject4).c()).f();
        }
      }
      ??? = new LinkedList();
      localObject3 = ajn.a().c().values().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = ((LinkedHashMap)((Iterator)localObject3).next()).values().iterator();
        while (((Iterator)localObject4).hasNext())
        {
          localObject5 = (aim)((Iterator)localObject4).next();
          if (mMediaMailingMetadata.mTimeOfLastAttempt + 60000L < System.currentTimeMillis()) {
            ((List)???).add(localObject5);
          }
        }
      }
      ??? = ((List)???).iterator();
      while (((Iterator)???).hasNext())
      {
        localObject3 = (aim)((Iterator)???).next();
        ajn.a().b((aim)localObject3);
      }
      ((ajq)localObject1).j();
      boolean bool = aud.a(parambjf.f());
      mStoryLibrary.a(parambjf.c(), bool);
      return true;
    }
    mStoryLibrary.h();
    return false;
  }
  
  @avl
  public final boolean a(@cgc bjp parambjp, boolean paramBoolean)
  {
    if (parambjp == null) {
      return false;
    }
    long l1 = aud.a(parambjp.R());
    Object localObject1 = sContext;
    int i;
    label56:
    label76:
    label91:
    long l2;
    Object localObject2;
    label273:
    label321:
    label334:
    boolean bool;
    if ((ajx.f()) && (ajx.Z()))
    {
      i = 1;
      if (i != 0)
      {
        if ((0L != l1) && (ajx.ad() == l1)) {
          break label482;
        }
        i = 1;
        if (i == 0)
        {
          if (System.currentTimeMillis() - ajx.k() <= 604800000L) {
            break label487;
          }
          i = 1;
          if (i == 0) {
            break label492;
          }
        }
        aol.a().a((Context)localObject1, false, false);
      }
      ajx.b(parambjp);
      localObject1 = parambjp.B();
      if (localObject1 != null) {
        Collections.reverse((List)localObject1);
      }
      l1 = aud.a(parambjp.E());
      l2 = aud.a(parambjp.D());
      localObject1 = Calendar.getInstance();
      localObject2 = Calendar.getInstance();
      ((Calendar)localObject1).setTime(new Date(l1));
      ((Calendar)localObject2).setTime(new Date(l2));
      Timber.c("User", "last_replayed_snap_timestamp: " + l1, new Object[0]);
      Timber.c("User", "current_timestamp: " + l2, new Object[0]);
      if ((((Calendar)localObject2).get(1) >= ((Calendar)localObject1).get(1)) && ((((Calendar)localObject2).get(1) != ((Calendar)localObject1).get(1)) || (((Calendar)localObject2).get(6) >= ((Calendar)localObject1).get(6)))) {
        break label506;
      }
      l1 = -1L;
      mNextReplayAvailableRealtime = l1;
      ajx.a(aud.a(parambjp.T()), parambjp.U(), parambjp.V(), parambjp.W(), aud.a(parambjp.X()));
      if (parambjp.M() == null) {
        break label601;
      }
      localObject1 = parambjp.M();
      if (parambjp.N() == null) {
        break label609;
      }
      localObject2 = parambjp.N();
      if (parambjp.L() == null) {
        break label618;
      }
      bool = parambjp.L().booleanValue();
      label350:
      ajx.a(bool, (String)localObject1, (String)localObject2, parambjp.O());
      if ((paramBoolean) && (ajx.aq() == ScCashResponsePayload.Status.OK) && (ajx.T()) && (ajx.au()))
      {
        if (!mCashProviderManager.b((String)localObject1)) {
          break label624;
        }
        mCashProviderManager.a((String)localObject1).a();
      }
    }
    for (;;)
    {
      label414:
      if (parambjp.Z() != null)
      {
        localObject1 = new ArrayList();
        localObject2 = parambjp.Z().iterator();
        for (;;)
        {
          if (((Iterator)localObject2).hasNext())
          {
            ((ArrayList)localObject1).add(new ajc((bin)((Iterator)localObject2).next()));
            continue;
            i = 0;
            break;
            label482:
            i = 0;
            break label56;
            label487:
            i = 0;
            break label76;
            label492:
            aol.a().a((Context)localObject1, true, true);
            break label91;
            label506:
            if ((((Calendar)localObject2).get(1) == ((Calendar)localObject1).get(1)) && (((Calendar)localObject2).get(6) == ((Calendar)localObject1).get(6)))
            {
              ((Calendar)localObject2).set(11, 0);
              ((Calendar)localObject2).set(12, 0);
              ((Calendar)localObject2).set(13, 0);
              ((Calendar)localObject2).set(14, 0);
              ((Calendar)localObject2).add(6, 1);
              l1 = SystemClock.elapsedRealtime() + (((Calendar)localObject2).getTimeInMillis() - l2);
              break label273;
            }
            l1 = 0L;
            break label273;
            label601:
            localObject1 = "SQUARE";
            break label321;
            label609:
            localObject2 = parambjp.n();
            break label334;
            label618:
            bool = true;
            break label350;
            label624:
            ajx.ai();
            break label414;
          }
        }
        mStoryLibrary.a((List)localObject1);
      }
    }
    ajx.v(aud.a(parambjp.ac()));
    mSnapchatServiceManager.a(parambjp.ad());
    return true;
  }
  
  public final boolean a(@cgc List<bhd> paramList, @cgc bho parambho, boolean paramBoolean)
  {
    if (paramList == null) {
      return false;
    }
    if (parambho != null) {
      Timber.b("User", "Updating conversations with isDelta = " + aud.a(parambho.a()), new Object[0]);
    }
    Timber.a("User", true, false, "CHAT-LOG: ALL UPDATES conversations_response: %s", new Object[] { paramList });
    mChatConversationManager.a(paramList, true, true, paramBoolean);
    return true;
  }
  
  @cgc
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
  
  public final void c(@cgc List<bhu> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    synchronized (mFriends)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        bhu localbhu = (bhu)paramList.next();
        if (localbhu.c() != bhu.a.DELETED)
        {
          Friend localFriend = new Friend(localbhu, this);
          localFriend.t();
          mFriends.remove(localFriend);
          mFriends.add(localFriend);
          mFriendMap.put(localFriend.h(), localFriend);
          if (!localbhu.g().booleanValue()) {
            mFriendsBlockedFromSeeingMyStory.add(localbhu.a());
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
        } else if (!localFriend.h().equals(ajx.l())) {
          i = 1;
        } else {
          i = 0;
        }
      }
    }
    return new bga().a(localArrayList);
  }
  
  public final void d(Friend paramFriend)
  {
    synchronized (mFriends)
    {
      mFriendMap.put(paramFriend.h(), paramFriend);
      mFriends.remove(paramFriend);
      mFriends.add(paramFriend);
      return;
    }
  }
  
  public final void d(String paramString)
  {
    mMessagingGatewayInfo.a(paramString);
    paramString = atn.a().toJson(mMessagingGatewayInfo);
    mSlightlySecurePreferences.a(ayj.MESSAGING_GATEWAY_INFO, paramString);
    ban.a().a(new bci());
  }
  
  public final void e()
  {
    HashSet localHashSet = new HashSet(22);
    ??? = mChatConversationManager.e().iterator();
    Object localObject4;
    do
    {
      if (!((Iterator)???).hasNext()) {
        break;
      }
      localObject4 = (ChatConversation)((Iterator)???).next();
      if (!axi.a((ChatConversation)localObject4)) {
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
          if (localFriend.h().equals(ajx.l())) {
            continue;
          }
          a(localFriend, localHashSet);
        }
        label223:
        a(atm.b(mTheirUsername, this), localSet);
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
      mFriendMap.remove(paramFriend.h());
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
        if (localFriend.h().equals(paramString))
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
        if (localFriend.o()) {
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
        if (TextUtils.equals(localFriend.h(), paramString)) {
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
        ban.a().a(new bbp());
      }
      i(paramString);
      h(paramString);
      ajq.a().c(paramString);
      paramString = ym.b(paramString);
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
    boolean bool = azm.d();
    synchronized (mFriends)
    {
      Collections.sort(mFriends);
      Iterator localIterator = mFriends.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if ((!TextUtils.equals(localFriend.h(), ajx.l())) && (!mIsBlocked) && (localFriend.l()) && ((!mIsSharedStory) || (!bool))) {
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
      if ((!localFriend.h().equals(ajx.l())) && (!mIsBlocked) && (!mIsSharedStory) && (!mIsLocalStory)) {
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
        if (atm.a(localFriend)) {
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
        if (atm.a(localFriend)) {
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
  
  @cgb
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
    return mFriends.size();
  }
  
  @cgb
  public final List<Friend> q()
  {
    synchronized (mFriendsWhoAddedMe)
    {
      ArrayList localArrayList = new ArrayList(mFriendsWhoAddedMe);
      return localArrayList;
    }
  }
  
  @cgb
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
  
  @cgb
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
    if (!ajx.aa()) {}
    do
    {
      String str;
      do
      {
        return false;
        str = ajx.l();
      } while (str == null);
      if ((ReleaseManager.f()) && (azm.a(str))) {
        return true;
      }
      if ((mNextReplayAvailableRealtime < 0L) || (!mServerHasMostRecentReplayTime))
      {
        Timber.c("User", "hasReplay: haven't synced with server since boot or replay", new Object[0]);
        return false;
      }
      Timber.c("User", "current_realtime: " + SystemClock.elapsedRealtime(), new Object[0]);
      Timber.c("User", "next_replay_available_realtime: " + mNextReplayAvailableRealtime, new Object[0]);
      Timber.c("User", "current_time: " + System.currentTimeMillis(), new Object[0]);
    } while (SystemClock.elapsedRealtime() < mNextReplayAvailableRealtime);
    return true;
  }
  
  public final String toString()
  {
    return "User [logged=" + ajx.m() + ", username=" + ajx.l() + ", serverToken=" + ajx.F() + ", email=" + ajx.G() + ", phoneNumber=" + ajx.e() + "]";
  }
  
  public final void u()
  {
    synchronized (mFriends)
    {
      Iterator localIterator = mFriends.iterator();
      if (localIterator.hasNext()) {
        ((Friend)localIterator.next()).t();
      }
    }
  }
  
  public final void v()
  {
    Timber.c("User", "DB-LOG: User#logout", new Object[0]);
    w();
    ban.a().a(new bch());
  }
  
  public final void w()
  {
    SharedPreferenceKey.purge();
    Timber.c("User", "DB-LOG: User#clearDatabase", new Object[0]);
    DB_WRITE_EXECUTOR.execute(new Runnable()
    {
      public final void run()
      {
        int i = 0;
        for (;;)
        {
          synchronized (ajv.z())
          {
            DbTable.DatabaseTable[] arrayOfDatabaseTable = DbTable.DatabaseTable.values();
            int j = arrayOfDatabaseTable.length;
            if (i < j)
            {
              DbTable.DatabaseTable localDatabaseTable = arrayOfDatabaseTable[i];
              if (localDatabaseTable.getTable().l()) {
                localDatabaseTable.getTable().k();
              } else {
                Timber.c("User", "DB-LOG: Not deleting %s table because not user-specific", new Object[] { localDatabaseTable.getTable().c() });
              }
            }
          }
          return;
          i += 1;
        }
      }
    });
    awq.b();
    mSlightlySecurePreferences.c();
    yo.b();
    yq.b();
    ajn.b();
    akc.c();
    ant.a = null;
    anw.a = null;
    any.a = null;
    aol.b();
    auo.b();
    aup.e();
    yf.b();
    yh.b();
    ajb.b();
    new Thread(new auk.1(SnapchatApplication.b())).start();
    Object localObject1 = adf.a();
    b.clear();
    c.clear();
    d.clear();
    e.clear();
    aa.clear();
    ajq.a().b();
    amStreams.clear();
    auy.a().b();
    bfy.a().b();
    localObject1 = bft.a();
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
 * Qualified Name:     ajv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */