import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.database.table.FindFriendRequestCacheTable;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class amf
  extends amd
  implements ts.b<bke>
{
  protected ajv a;
  protected Context b;
  protected Set<ass.a> c;
  protected Map<String, String> d;
  protected Map<String, String> e;
  @cf
  protected final FindFriendRequestCacheTable f;
  @cf
  protected final bgk g;
  private Bus k = ban.a();
  private String l;
  private boolean m;
  private boolean n;
  private final ajx o;
  private final azo p;
  
  public amf(Intent paramIntent)
  {
    this(paramIntent, ajx.a(), FindFriendRequestCacheTable.a(), new azo(), new bgk());
  }
  
  @cf
  private amf(Intent paramIntent, ajx paramajx, FindFriendRequestCacheTable paramFindFriendRequestCacheTable, azo paramazo, bgk parambgk)
  {
    super(paramIntent);
    m = paramIntent.getBooleanExtra("use_cache", true);
    n = paramIntent.getBooleanExtra("only_new_contact", false);
    o = paramajx;
    f = paramFindFriendRequestCacheTable;
    p = paramazo;
    a(bke.class, this);
    g = parambgk;
  }
  
  private void a(long paramLong)
  {
    Object localObject = ajx.bx();
    while (((List)localObject).size() > 10) {
      ((List)localObject).remove(((List)localObject).size() - 1);
    }
    ((List)localObject).add(0, Long.valueOf(paramLong));
    ajx.b().putString(SharedPreferenceKey.FINDFRIENDS_TIMESTAMPS.getKey(), avb.a((Collection)localObject, "~")).apply();
    HashMap localHashMap = new HashMap();
    Iterator localIterator = d.keySet().iterator();
    String str;
    if (localIterator.hasNext())
    {
      localObject = (String)localIterator.next();
      str = ayf.a((String)localObject);
      if (str != null) {
        break label152;
      }
    }
    for (;;)
    {
      localHashMap.put(localObject, Long.valueOf(paramLong));
      break;
      FindFriendRequestCacheTable.a(a, localHashMap);
      return;
      label152:
      localObject = str;
    }
  }
  
  @cf
  private void a(Set<String> paramSet, long paramLong)
  {
    Object localObject = FindFriendRequestCacheTable.e(a);
    ArrayList localArrayList = new ArrayList();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      if (System.currentTimeMillis() - ((Long)localEntry.getValue()).longValue() >= paramLong) {
        localArrayList.add(new ass.a((String)localEntry.getKey(), "", ((Long)localEntry.getValue()).longValue()));
      }
    }
    if (localArrayList.size() > 200) {
      Collections.sort(localArrayList, new Comparator() {});
    }
    int i = 0;
    while (i < Math.min(200, localArrayList.size()))
    {
      paramSet.add(getmNumber);
      i += 1;
    }
  }
  
  private void a(boolean paramBoolean, Set<String> paramSet)
  {
    d = new HashMap();
    e = new HashMap();
    Iterator localIterator = c.iterator();
    label214:
    label263:
    while (localIterator.hasNext())
    {
      ass.a locala = (ass.a)localIterator.next();
      if (!paramBoolean)
      {
        d.put(mNumber, mDisplayName);
      }
      else
      {
        Map localMap = FindFriendRequestCacheTable.e(a);
        Set localSet = localMap.keySet();
        String str = ayf.a(mNumber);
        if ((localSet == null) || (!localSet.contains(str))) {
          i = 1;
        }
        for (;;)
        {
          if (i == 0) {
            break label214;
          }
          e.put(mNumber, mDisplayName);
          d.put(mNumber, mDisplayName);
          break;
          long l1 = ((Long)localMap.get(str)).longValue();
          if (mLastUpdatedTimestamp >= l1) {
            i = 1;
          } else {
            i = 0;
          }
        }
        if (paramSet.contains(ayf.a(mNumber))) {}
        for (int i = 1;; i = 0)
        {
          if (i == 0) {
            break label263;
          }
          d.put(mNumber, mDisplayName);
          break;
        }
      }
    }
  }
  
  public final void a(Context paramContext)
  {
    if (!ajx.Z())
    {
      if (ReleaseManager.f()) {
        AlertDialogUtils.a("Don't send the find friend request because the user has not given access to contacts. This is probably because the phone number is reset to an empty string.", paramContext, 1);
      }
      Timber.f("FindFriendsOperation", "Don't send the find friend request because the user has not given access to contacts. This is probably because the phone number is reset to an empty string.", new Object[0]);
      p.a(new od());
    }
    while ((m) && (!n) && (!o.by())) {
      return;
    }
    a = ajv.a(paramContext);
    b = paramContext;
    c = ass.a(paramContext);
    Object localObject3 = c;
    Object localObject1 = a;
    bgp.b();
    Object localObject2 = FindFriendRequestCacheTable.e((ajv)localObject1).keySet();
    if (!((Set)localObject2).isEmpty())
    {
      HashSet localHashSet = new HashSet();
      localObject3 = ((Set)localObject3).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        ass.a locala = (ass.a)((Iterator)localObject3).next();
        if (((Set)localObject2).contains(ayf.a(mNumber))) {
          localHashSet.add(ayf.a(mNumber));
        }
      }
      ((Set)localObject2).removeAll(localHashSet);
      if (!((Set)localObject2).isEmpty()) {
        FindFriendRequestCacheTable.a((ajv)localObject1, (Set)localObject2);
      }
    }
    localObject1 = ajx.bx();
    int i = ((List)localObject1).size();
    localObject2 = new HashSet();
    if (i > 1)
    {
      long l1 = (((Long)((List)localObject1).get(0)).longValue() - ((Long)((List)localObject1).get(i - 1)).longValue()) / (i - 1);
      ass.a(l1 * 2L, a, c);
      a((Set)localObject2, l1 * 2L);
    }
    a(m, (Set)localObject2);
    if (d.isEmpty())
    {
      Timber.c("FindFriendsOperation", "no new local contacts and expired numbers since last find friend request", new Object[0]);
      return;
    }
    if ((m) && (n) && ((e == null) || (e.size() == 0)))
    {
      Timber.c("FindFriendsOperation", "no new local contacts since last find friend request", new Object[0]);
      return;
    }
    l = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkCountryIso();
    if (TextUtils.isEmpty(l)) {
      l = "us";
    }
    super.a(paramContext);
  }
  
  public final Object b()
  {
    return a(new amf.a().a(atn.a().toJson(d)).b(l.toUpperCase(Locale.US)));
  }
  
  protected final String e()
  {
    return "/ph/find_friends";
  }
  
  public final void f()
  {
    if (a != null) {
      a.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.CONTACTS_ON_SNAPCHAT, DbTable.DatabaseTable.CONTACTS_NOT_ON_SNAPCHAT });
    }
  }
  
  @tn
  public final class a
    extends bkd
  {
    public a() {}
  }
}

/* Location:
 * Qualified Name:     amf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */