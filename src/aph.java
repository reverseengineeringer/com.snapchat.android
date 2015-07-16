import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import com.snapchat.android.database.schema.VerifiedDeviceSchema;
import com.snapchat.android.operation.identity.UpdateVerifiedDeviceOperation.Action;
import com.snapchat.android.service.SnapchatService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class aph
{
  private static final Set<String> e = dr.a("request_id", "from_pool", "CalledOnLoginOrOnResume", "FromNotification");
  private static aph f;
  public final Map<Integer, Intent> a;
  public apf b;
  public Context c;
  @bxp
  public final SparseArray<HashSet<apg>> d = new SparseArray();
  private Integer g = Integer.valueOf(0);
  
  private aph(Map<Integer, Intent> paramMap)
  {
    a = paramMap;
    h();
  }
  
  public static int a(@chd anh paramanh)
  {
    int j = -1;
    int i = j;
    if (paramanh != null)
    {
      paramanh = paramanh.a();
      i = j;
      if (paramanh != null) {
        i = paramanh.getIntExtra("request_id", -1);
      }
    }
    return i;
  }
  
  public static aph a()
  {
    try
    {
      if (f == null) {
        f = new aph(Collections.synchronizedMap(new HashMap()));
      }
      aph localaph = f;
      return localaph;
    }
    finally {}
  }
  
  public static boolean a(@chd Intent paramIntent)
  {
    return (paramIntent != null) && (paramIntent.hasExtra("request_id"));
  }
  
  public static int b(@chc Intent paramIntent)
  {
    return paramIntent.getIntExtra("request_id", -1);
  }
  
  public static int b(@chd anh paramanh)
  {
    int j = -1;
    int i = j;
    if (paramanh != null)
    {
      paramanh = paramanh.a();
      i = j;
      if (paramanh != null) {
        i = paramanh.getIntExtra("op_code", -1);
      }
    }
    return i;
  }
  
  public static void b()
  {
    try
    {
      f.h();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  @awj
  private Integer c(Intent arg1)
  {
    Bundle localBundle1 = ???.getExtras();
    if (localBundle1 == null) {
      throw new NullPointerException();
    }
    label248:
    label255:
    for (;;)
    {
      Set localSet;
      Intent localIntent;
      Bundle localBundle2;
      synchronized (a)
      {
        localSet = e;
        Iterator localIterator1 = a.values().iterator();
        if (!localIterator1.hasNext()) {
          break label248;
        }
        localIntent = (Intent)localIterator1.next();
        localBundle2 = localIntent.getExtras();
        if (localBundle2 == null) {
          throw new NullPointerException();
        }
      }
      if (((Bundle)localObject1).size() == localBundle2.size())
      {
        Iterator localIterator2 = localBundle2.keySet().iterator();
        String str;
        int i;
        for (;;)
        {
          if (localIterator2.hasNext())
          {
            str = (String)localIterator2.next();
            if (!localSet.contains(str)) {
              if (!((Bundle)localObject1).containsKey(str)) {
                i = 0;
              }
            }
          }
        }
        for (;;)
        {
          if (i == 0) {
            break label255;
          }
          i = localIntent.getIntExtra("request_id", -1);
          return Integer.valueOf(i);
          Object localObject2 = localBundle2.get(str);
          Object localObject3 = ((Bundle)localObject1).get(str);
          if (localObject2 == null)
          {
            new StringBuilder("pending request id key [").append(str).append("] has value null!");
            if (localObject3 == null) {
              break;
            }
            i = 0;
            continue;
          }
          if (localObject2.equals(localObject3)) {
            break;
          }
          i = 0;
          continue;
          return null;
          i = 1;
        }
      }
    }
  }
  
  private void h()
  {
    g = Integer.valueOf(0);
    a.clear();
    b = new apf();
  }
  
  public final int a(Context paramContext)
  {
    Intent localIntent = b(paramContext);
    localIntent.putExtra("op_code", 1023);
    return a(paramContext, localIntent);
  }
  
  public final int a(Context paramContext, int paramInt, byte[] paramArrayOfByte)
  {
    Intent localIntent = b(paramContext);
    localIntent.putExtra("op_code", 1009);
    localIntent.putExtra("snapTagVersion", paramInt);
    localIntent.putExtra("snapTag", paramArrayOfByte);
    localIntent.putExtra("timestamp", System.currentTimeMillis());
    return a(paramContext, localIntent);
  }
  
  public final int a(@chc Context paramContext, @chc Intent paramIntent)
  {
    new StringBuilder("startCommand with op code: ").append(paramIntent.getIntExtra("op_code", -1));
    g.intValue();
    Integer localInteger = Integer.valueOf(g.intValue() + 1);
    g = localInteger;
    int i = localInteger.intValue();
    paramIntent.putExtra("request_id", i);
    localInteger = c(paramIntent);
    if (localInteger == null)
    {
      new StringBuilder("Start service with the new request ").append(paramIntent);
      a.put(Integer.valueOf(i), paramIntent);
      paramContext.startService(paramIntent);
      return i;
    }
    new StringBuilder("Do not start service if there is a pending operation with the request ").append(paramIntent);
    b.a(paramIntent);
    return localInteger.intValue();
  }
  
  public final int a(Context paramContext, String paramString)
  {
    Intent localIntent = b(paramContext);
    localIntent.putExtra("op_code", 1015);
    localIntent.putExtra("email", paramString);
    return a(paramContext, localIntent);
  }
  
  public final int a(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = b(paramContext);
    localIntent.putExtra("op_code", 1028);
    localIntent.putExtra("size", paramString1);
    localIntent.putExtra("username_image", paramString2);
    return a(paramContext, localIntent);
  }
  
  public final int a(Context paramContext, String paramString1, String paramString2, @chd String paramString3)
  {
    Intent localIntent = b(paramContext);
    localIntent.putExtra("op_code", 1012);
    localIntent.putExtra("action", paramString1);
    localIntent.putExtra("param", paramString2);
    localIntent.putExtra("password", paramString3);
    return a(paramContext, localIntent);
  }
  
  public final int a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    Intent localIntent = b(paramContext);
    localIntent.putExtra("op_code", 1002);
    localIntent.putExtra("use_cache", paramBoolean1);
    localIntent.putExtra("only_new_contact", paramBoolean2);
    return a(paramContext, localIntent);
  }
  
  public final int a(List<blr> paramList)
  {
    Intent localIntent = b(c);
    localIntent.putExtra("op_code", 1032);
    localIntent.putExtra("action", UpdateVerifiedDeviceOperation.Action.SAVE);
    ArrayList localArrayList = new ArrayList();
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        blr localblr = (blr)paramList.next();
        localArrayList.add(abcaDEVICE_IDaaDEVICE_NAMEbaLAST_LOGINclongValuea);
      }
    }
    localIntent.putParcelableArrayListExtra("verified_devices", localArrayList);
    return a(c, localIntent);
  }
  
  public final int a(boolean paramBoolean1, boolean paramBoolean2)
  {
    Intent localIntent = b(c);
    localIntent.putExtra("op_code", 1026);
    localIntent.putExtra("FromNotification", paramBoolean1);
    localIntent.putExtra("CalledOnLoginOrOnResume", paramBoolean2);
    return a(c, localIntent);
  }
  
  public final Intent a(Context paramContext, double paramDouble1, double paramDouble2, Float paramFloat, long paramLong, String paramString)
  {
    paramContext = b(paramContext);
    paramContext.putExtra("op_code", 1025);
    paramContext.putExtra("lat", paramDouble1);
    paramContext.putExtra("long", paramDouble2);
    if (paramFloat != null) {
      paramContext.putExtra("accuracyMeters", paramFloat);
    }
    paramContext.putExtra("totalPollingDurationMillis", paramLong);
    paramContext.putExtra("action", paramString);
    return paramContext;
  }
  
  @awj
  public final void a(int paramInt, apg paramapg)
  {
    new StringBuilder("registerListener ").append(paramapg).append(" to operation ").append(paramInt);
    synchronized (d)
    {
      HashSet localHashSet2 = (HashSet)d.get(paramInt);
      HashSet localHashSet1 = localHashSet2;
      if (localHashSet2 == null) {
        localHashSet1 = new HashSet();
      }
      localHashSet1.add(paramapg);
      d.append(paramInt, localHashSet1);
      return;
    }
  }
  
  public final int b(Context paramContext, String paramString)
  {
    Intent localIntent = b(paramContext);
    localIntent.putExtra("op_code", 1016);
    localIntent.putExtra("password", paramString);
    return a(paramContext, localIntent);
  }
  
  public final Intent b(Context paramContext)
  {
    return b.a(paramContext, SnapchatService.class);
  }
  
  @awj
  public final void b(int paramInt, apg paramapg)
  {
    new StringBuilder("unregisterListener ").append(paramapg).append(" from operation ").append(paramInt);
    synchronized (d)
    {
      HashSet localHashSet = (HashSet)d.get(paramInt);
      if (localHashSet != null) {
        localHashSet.remove(paramapg);
      }
      return;
    }
  }
  
  public final int c()
  {
    Intent localIntent = b(c);
    localIntent.putExtra("op_code", 1032);
    localIntent.putExtra("action", UpdateVerifiedDeviceOperation.Action.DELETE_ALL);
    return a(c, localIntent);
  }
  
  public final int c(Context paramContext, String paramString)
  {
    Intent localIntent = b(paramContext);
    localIntent.putExtra("op_code", 1010);
    localIntent.putExtra("ImageId", paramString);
    return a(paramContext, localIntent);
  }
  
  public final int d()
  {
    Intent localIntent = b(c);
    localIntent.putExtra("op_code", 1013);
    return a(c, localIntent);
  }
  
  public final int e()
  {
    Intent localIntent = b(c);
    localIntent.putExtra("op_code", 1014);
    return a(c, localIntent);
  }
  
  public final int f()
  {
    Intent localIntent = b(c);
    localIntent.putExtra("op_code", 1027);
    localIntent.putExtra("FromNotification", false);
    localIntent.putExtra("CalledOnLoginOrOnResume", false);
    return a(c, localIntent);
  }
  
  public final boolean g()
  {
    return !a.isEmpty();
  }
}

/* Location:
 * Qualified Name:     aph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */