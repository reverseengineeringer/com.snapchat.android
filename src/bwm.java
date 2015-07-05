import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.Scanner;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bwm
{
  private ArrayList<JSONObject> a;
  private JSONObject b;
  private bvl c;
  private int d;
  
  public bwm(Context paramContext, String paramString, bvl parambvl)
  {
    c = parambvl;
    a(paramContext, paramString);
    Collections.sort(a, new Comparator()
    {
      private static int a(JSONObject paramAnonymousJSONObject1, JSONObject paramAnonymousJSONObject2)
      {
        try
        {
          int i = paramAnonymousJSONObject1.getInt("version");
          int j = paramAnonymousJSONObject2.getInt("version");
          if (i > j) {}
          return 0;
        }
        catch (NullPointerException paramAnonymousJSONObject1)
        {
          return 0;
        }
        catch (JSONException paramAnonymousJSONObject1) {}
        return 0;
      }
    });
  }
  
  public static int a(String paramString1, String paramString2)
  {
    int j = -1;
    int i;
    if ((paramString1 == null) || (paramString2 == null)) {
      i = 0;
    }
    for (;;)
    {
      return i;
      try
      {
        paramString1 = new Scanner(paramString1.replaceAll("\\-.*", ""));
        paramString2 = new Scanner(paramString2.replaceAll("\\-.*", ""));
        paramString1.useDelimiter("\\.");
        paramString2.useDelimiter("\\.");
        for (;;)
        {
          if ((paramString1.hasNextInt()) && (paramString2.hasNextInt()))
          {
            int k = paramString1.nextInt();
            int m = paramString2.nextInt();
            i = j;
            if (k < m) {
              break;
            }
            if (k > m) {
              return 1;
            }
          }
        }
        if (paramString1.hasNextInt()) {
          return 1;
        }
        boolean bool = paramString2.hasNextInt();
        i = j;
        if (!bool) {
          return 0;
        }
      }
      catch (Exception paramString1) {}
    }
    return 0;
  }
  
  private static int a(JSONObject paramJSONObject)
  {
    try
    {
      int i = paramJSONObject.getInt("version");
      return i;
    }
    catch (JSONException paramJSONObject) {}
    return 0;
  }
  
  private static long a(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      long l = paramJSONObject.getLong(paramString);
      return l;
    }
    catch (JSONException paramJSONObject) {}
    return 0L;
  }
  
  private static String a(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    try
    {
      paramJSONObject = paramJSONObject.getString(paramString1);
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject) {}
    return paramString2;
  }
  
  private void a(Context paramContext, String paramString)
  {
    b = new JSONObject();
    a = new ArrayList();
    d = c.c();
    for (;;)
    {
      int k;
      int m;
      try
      {
        paramString = new JSONArray(paramString);
        int j = c.c();
        int i = 0;
        if (i < paramString.length())
        {
          JSONObject localJSONObject = paramString.getJSONObject(i);
          if (localJSONObject.getInt("version") > j)
          {
            k = 1;
            if ((localJSONObject.getInt("version") == j) && (a(paramContext, localJSONObject.getLong("timestamp"))))
            {
              m = 1;
              break label167;
              b = localJSONObject;
              j = localJSONObject.getInt("version");
              a.add(localJSONObject);
              i += 1;
            }
          }
          else
          {
            k = 0;
            continue;
          }
          m = 0;
        }
      }
      catch (NullPointerException paramContext)
      {
        return;
      }
      catch (JSONException paramContext)
      {
        return;
      }
      label167:
      if (k == 0) {
        if (m == 0) {}
      }
    }
  }
  
  public static boolean a(Context paramContext, long paramLong)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return false;
      try
      {
        long l = new File(getPackageManagergetApplicationInfogetPackageName0sourceDir).lastModified() / 1000L;
        if (paramLong > l + 1800L) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        paramContext.printStackTrace();
      }
    }
    return false;
  }
  
  private static String b(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = paramJSONObject.getString("shortversion");
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject) {}
    return "";
  }
  
  public final String a()
  {
    return a(b, "shortversion", "") + " (" + a(b, "version", "") + ")";
  }
  
  public final String b()
  {
    Date localDate = new Date(a(b, "timestamp") * 1000L);
    return new SimpleDateFormat("dd.MM.yyyy").format(localDate);
  }
  
  public final long c()
  {
    boolean bool = Boolean.valueOf(a(b, "external", "false")).booleanValue();
    long l2 = a(b, "appsize");
    long l1 = l2;
    if (bool)
    {
      l1 = l2;
      if (l2 == 0L) {
        l1 = -1L;
      }
    }
    return l1;
  }
  
  public final String d()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("<html>");
    localStringBuilder1.append("<body style='padding: 0px 0px 20px 0px'>");
    Iterator localIterator = a.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      Object localObject = (JSONObject)localIterator.next();
      if (i > 0) {
        localStringBuilder1.append("<hr style='border-top: 1px solid #c8c8c8; border-bottom: 0px; margin: 40px 10px 0px 10px;' />");
      }
      StringBuilder localStringBuilder2 = new StringBuilder();
      int j = a(b);
      int k = a((JSONObject)localObject);
      String str = b((JSONObject)localObject);
      localStringBuilder2.append("<div style='padding: 20px 10px 10px;'><strong>");
      if (i == 0)
      {
        localStringBuilder2.append("Newest version:");
        label120:
        localStringBuilder2.append("</strong></div>");
        localStringBuilder1.append(localStringBuilder2.toString());
        localStringBuilder2 = new StringBuilder();
        localObject = a((JSONObject)localObject, "notes", "");
        localStringBuilder2.append("<div style='padding: 0px 10px;'>");
        if (((String)localObject).trim().length() != 0) {
          break label282;
        }
        localStringBuilder2.append("<em>No information.</em>");
      }
      for (;;)
      {
        localStringBuilder2.append("</div>");
        localStringBuilder1.append(localStringBuilder2.toString());
        i += 1;
        break;
        localStringBuilder2.append("Version " + str + " (" + k + "): ");
        if ((k == j) || (k != d)) {
          break label120;
        }
        d = -1;
        localStringBuilder2.append("[INSTALLED]");
        break label120;
        label282:
        localStringBuilder2.append((String)localObject);
      }
    }
    localStringBuilder1.append("</body>");
    localStringBuilder1.append("</html>");
    return localStringBuilder1.toString();
  }
}

/* Location:
 * Qualified Name:     bwm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */