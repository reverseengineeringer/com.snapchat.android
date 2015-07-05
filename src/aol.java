import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import com.snapchat.android.Timber;
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

public final class aol
{
  private static final Set<String> e = di.a("request_id", "from_pool", "CalledOnLoginOrOnResume", "FromNotification");
  private static aol f;
  public final Map<Integer, Intent> a;
  public aoj b;
  public Context c;
  @bwo
  public final SparseArray<HashSet<aok>> d = new SparseArray();
  private Integer g = Integer.valueOf(0);
  
  private aol(Map<Integer, Intent> paramMap)
  {
    a = paramMap;
    h();
  }
  
  public static int a(@cgc amk paramamk)
  {
    int j = -1;
    int i = j;
    if (paramamk != null)
    {
      paramamk = paramamk.a();
      i = j;
      if (paramamk != null) {
        i = paramamk.getIntExtra("request_id", -1);
      }
    }
    return i;
  }
  
  public static aol a()
  {
    try
    {
      if (f == null) {
        f = new aol(Collections.synchronizedMap(new HashMap()));
      }
      aol localaol = f;
      return localaol;
    }
    finally {}
  }
  
  public static boolean a(@cgc Intent paramIntent)
  {
    return (paramIntent != null) && (paramIntent.hasExtra("request_id"));
  }
  
  public static int b(@cgc amk paramamk)
  {
    int j = -1;
    int i = j;
    if (paramamk != null)
    {
      paramamk = paramamk.a();
      i = j;
      if (paramamk != null) {
        i = paramamk.getIntExtra("op_code", -1);
      }
    }
    return i;
  }
  
  public static int b(@cgb Intent paramIntent)
  {
    return paramIntent.getIntExtra("request_id", -1);
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
  
  @avl
  private Integer c(Intent arg1)
  {
    Bundle localBundle1 = ???.getExtras();
    if (localBundle1 == null) {
      throw new NullPointerException();
    }
    label259:
    label266:
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
          break label259;
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
            break label266;
          }
          i = localIntent.getIntExtra("request_id", -1);
          return Integer.valueOf(i);
          Object localObject2 = localBundle2.get(str);
          Object localObject3 = ((Bundle)localObject1).get(str);
          if (localObject2 == null)
          {
            Timber.c("SnapchatServiceManager", "pending request id key [" + str + "] has value null!", new Object[0]);
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
    b = new aoj();
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
  
  public final int a(@cgb Context paramContext, @cgb Intent paramIntent)
  {
    Timber.c("SnapchatServiceManager", "startCommand with op code: " + paramIntent.getIntExtra("op_code", -1), new Object[0]);
    g.intValue();
    Integer localInteger = Integer.valueOf(g.intValue() + 1);
    g = localInteger;
    int i = localInteger.intValue();
    paramIntent.putExtra("request_id", i);
    localInteger = c(paramIntent);
    if (localInteger == null)
    {
      Timber.c("SnapchatServiceManager", "Start service with the new request " + paramIntent, new Object[0]);
      a.put(Integer.valueOf(i), paramIntent);
      paramContext.startService(paramIntent);
      return i;
    }
    Timber.c("SnapchatServiceManager", "Do not start service if there is a pending operation with the request " + paramIntent, new Object[0]);
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
  
  public final int a(Context paramContext, String paramString1, String paramString2, @cgc String paramString3)
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
  
  public final int a(List<bkq> paramList)
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
        bkq localbkq = (bkq)paramList.next();
        localArrayList.add(aadaDEVICE_IDaaDEVICE_NAMEbaLAST_LOGINclongValuea);
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
  
  @avl
  public final void a(int paramInt, aok paramaok)
  {
    Timber.c("SnapchatServiceManager", "registerListener " + paramaok + " to operation " + paramInt, new Object[0]);
    synchronized (d)
    {
      HashSet localHashSet2 = (HashSet)d.get(paramInt);
      HashSet localHashSet1 = localHashSet2;
      if (localHashSet2 == null) {
        localHashSet1 = new HashSet();
      }
      localHashSet1.add(paramaok);
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
  
  @avl
  public final void b(int paramInt, aok paramaok)
  {
    Timber.c("SnapchatServiceManager", "unregisterListener " + paramaok + " from operation " + paramInt, new Object[0]);
    synchronized (d)
    {
      HashSet localHashSet = (HashSet)d.get(paramInt);
      if (localHashSet != null) {
        localHashSet.remove(paramaok);
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
    Timber.c("SnapchatServiceManager", "Creating and executing logout intent", new Object[0]);
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
 * Qualified Name:     aol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */