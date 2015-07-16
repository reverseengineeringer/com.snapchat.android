package kkkkkk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

public class kkxxkk
{
  private static final int b044E044E044Eю044Eю = 4;
  public static int b044E044Eю044E044Eю = 1;
  public static int b044Eю044E044E044Eю = 0;
  private static String[] b044Eю044Eю044Eю;
  private static final Set<String> b044Eюю044E044Eю;
  private static final int bю044E044Eю044Eю = 8192;
  public static int bю044Eю044E044Eю = 12;
  public static int bюю044E044E044Eю = 2;
  private static String bюю044Eю044Eю;
  private static final String bююю044E044Eю = kkxkkk.bК041A041A041AКК(bююю044E044Eю, ':', '\006');
  
  static
  {
    bОООО041EО();
    if ((b041E041EО041EОО() + b044E044Eю044E044Eю) * b041E041EО041EОО() % bюю044E044E044Eю != b044Eю044E044E044Eю)
    {
      bю044Eю044E044Eю = b041E041EО041EОО();
      b044Eю044E044E044Eю = b041E041EО041EОО();
    }
    switch (0)
    {
    case 1: 
    default: 
      for (;;)
      {
        switch (1)
        {
        case 0: 
        default: 
          for (;;)
          {
            switch (1)
            {
            }
          }
        }
        switch (0)
        {
        }
      }
    }
    HashSet localHashSet = new HashSet();
    int i = bю044Eю044E044Eю;
    switch (i * (bОО041E041EОО() + i) % bюю044E044E044Eю)
    {
    default: 
      bю044Eю044E044Eю = b041E041EО041EОО();
      b044Eю044E044E044Eю = b041E041EО041EОО();
    }
    b044Eюю044E044Eю = localHashSet;
  }
  
  private static void b041E041E041E041EОО() {}
  
  public static int b041E041EО041EОО()
  {
    return 91;
  }
  
  public static void b041E041EОО041EО(Context paramContext)
  {
    int i = 0;
    if (Build.VERSION.SDK_INT < 4) {
      return;
    }
    for (;;)
    {
      ApplicationInfo localApplicationInfo;
      ClassLoader localClassLoader;
      synchronized (b044Eюю044E044Eю)
      {
        localObject = sourceDir;
        localClassLoader = paramContext.getClassLoader();
        break label222;
        if (localClassLoader != null) {
          break label202;
        }
        return;
      }
      label45:
      b044Eюю044E044Eю.add(localObject);
      Object localObject = new File(dataDir, kkxkkk.bК041A041A041AКК("§¤·¤²¸·", 'C', '\003'));
      switch (1)
      {
      case 0: 
      default: 
        for (;;)
        {
          switch (0)
          {
          }
        }
      }
      try
      {
        kxxxkk.bО041EО041EОО(localClassLoader, (File)localObject, xkkxxk.bНН041D041DН041D(paramContext, b044Eю044Eю044Eю, (File)localObject));
        paramContext = ((File)localObject).listFiles();
        if (paramContext != null)
        {
          int j = paramContext.length;
          for (;;)
          {
            if (i < j)
            {
              localClassLoader = paramContext[i];
              if (localClassLoader.isFile()) {
                localClassLoader.delete();
              }
              i += 1;
              continue;
              localApplicationInfo = kxxxkk.b041EОО041EОО(paramContext);
              if (localApplicationInfo != null) {
                break;
              }
              return;
            }
          }
        }
        return;
        label202:
        if (!b044Eюю044E044Eю.contains(localObject)) {
          break label45;
        }
        return;
      }
      catch (Exception paramContext)
      {
        for (;;) {}
      }
    }
    label222:
    switch (1)
    {
    }
    for (;;)
    {
      switch (1)
      {
      }
    }
  }
  
  private static void b041EО041E041EОО() {}
  
  private static void b041EООО041EО() {}
  
  private static void bО041E041E041EОО() {}
  
  private static void bО041EОО041EО() {}
  
  public static int bОО041E041EОО()
  {
    return 1;
  }
  
  private static void bОООО041EО()
  {
    b044Eю044Eю044Eю = new String[] { kkxkkk.b041AККК041AК("úþòøöÁÈ¿āÿø", 'ï', '^', '\000') };
  }
}

/* Location:
 * Qualified Name:     kkkkkk.kkxxkk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */