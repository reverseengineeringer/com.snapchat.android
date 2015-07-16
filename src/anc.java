import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.gson.Gson;
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

public final class anc
  extends ana
  implements ui.b<blf>
{
  protected akp a;
  protected Context b;
  protected Set<atr.a> c;
  protected Map<String, String> d;
  protected Map<String, String> e;
  @cf
  protected final FindFriendRequestCacheTable f;
  @cf
  protected final bhk g;
  private Bus k = bbo.a();
  private String l;
  private boolean m;
  private boolean n;
  private final akr o;
  private final ban p;
  
  public anc(Intent paramIntent)
  {
    this(paramIntent, akr.a(), FindFriendRequestCacheTable.a(), new ban(), new bhk());
  }
  
  @cf
  private anc(Intent paramIntent, akr paramakr, FindFriendRequestCacheTable paramFindFriendRequestCacheTable, ban paramban, bhk parambhk)
  {
    super(paramIntent);
    m = paramIntent.getBooleanExtra("use_cache", true);
    n = paramIntent.getBooleanExtra("only_new_contact", false);
    o = paramakr;
    f = paramFindFriendRequestCacheTable;
    p = paramban;
    registerCallback(blf.class, this);
    g = parambhk;
  }
  
  private void a(long paramLong)
  {
    Object localObject = akr.bu();
    while (((List)localObject).size() > 10) {
      ((List)localObject).remove(((List)localObject).size() - 1);
    }
    ((List)localObject).add(0, Long.valueOf(paramLong));
    akr.b().putString(SharedPreferenceKey.FINDFRIENDS_TIMESTAMPS.getKey(), avz.a((Collection)localObject, "~")).apply();
    HashMap localHashMap = new HashMap();
    Iterator localIterator = d.keySet().iterator();
    String str;
    if (localIterator.hasNext())
    {
      localObject = (String)localIterator.next();
      str = azd.a((String)localObject);
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
        localArrayList.add(new atr.a((String)localEntry.getKey(), "", ((Long)localEntry.getValue()).longValue()));
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
    Map localMap = FindFriendRequestCacheTable.e(a);
    Iterator localIterator = c.iterator();
    label215:
    label264:
    while (localIterator.hasNext())
    {
      atr.a locala = (atr.a)localIterator.next();
      if ((!paramBoolean) || (localMap.isEmpty()))
      {
        d.put(mNumber, mDisplayName);
      }
      else
      {
        String str = azd.a(mNumber);
        if (!localMap.keySet().contains(str)) {
          i = 1;
        }
        for (;;)
        {
          if (i == 0) {
            break label215;
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
        if (paramSet.contains(azd.a(mNumber))) {}
        for (int i = 1;; i = 0)
        {
          if (i == 0) {
            break label264;
          }
          d.put(mNumber, mDisplayName);
          break;
        }
      }
    }
  }
  
  public final void a(Context paramContext)
  {
    if (!akr.Z())
    {
      if (ReleaseManager.f()) {
        AlertDialogUtils.a("Don't send the find friend request because the user has not given access to contacts. This is probably because the phone number is reset to an empty string.", paramContext, 1);
      }
      p.a(new ou());
    }
    do
    {
      do
      {
        return;
      } while ((m) && (!n) && (!o.bv()));
      a = akp.a(paramContext);
      b = paramContext;
      c = atr.a(paramContext);
      Object localObject3 = c;
      Object localObject1 = a;
      bhp.b();
      Object localObject2 = FindFriendRequestCacheTable.e((akp)localObject1).keySet();
      if (!((Set)localObject2).isEmpty())
      {
        HashSet localHashSet = new HashSet();
        localObject3 = ((Set)localObject3).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          atr.a locala = (atr.a)((Iterator)localObject3).next();
          if (((Set)localObject2).contains(azd.a(mNumber))) {
            localHashSet.add(azd.a(mNumber));
          }
        }
        ((Set)localObject2).removeAll(localHashSet);
        if (!((Set)localObject2).isEmpty()) {
          FindFriendRequestCacheTable.a((akp)localObject1, (Set)localObject2);
        }
      }
      localObject1 = akr.bu();
      int i = ((List)localObject1).size();
      localObject2 = new HashSet();
      if (i > 1)
      {
        long l1 = (((Long)((List)localObject1).get(0)).longValue() - ((Long)((List)localObject1).get(i - 1)).longValue()) / (i - 1);
        atr.a(l1 * 2L, a, c);
        a((Set)localObject2, l1 * 2L);
      }
      a(m, (Set)localObject2);
    } while ((d.isEmpty()) || ((m) && (n) && ((e == null) || (e.size() == 0))));
    l = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkCountryIso();
    if (TextUtils.isEmpty(l)) {
      l = "us";
    }
    super.a(paramContext);
  }
  
  public final void b()
  {
    if (a != null) {
      a.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.CONTACTS_ON_SNAPCHAT, DbTable.DatabaseTable.CONTACTS_NOT_ON_SNAPCHAT });
    }
  }
  
  public final Object getRequestPayload()
  {
    return buildAuthPayload(new anc.a().a(aul.a().toJson(d)).b(l.toUpperCase(Locale.US)));
  }
  
  protected final String l_()
  {
    return "/ph/find_friends";
  }
  
  @ud
  public final class a
    extends ble
  {
    public a() {}
  }
}

/* Location:
 * Qualified Name:     anc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */