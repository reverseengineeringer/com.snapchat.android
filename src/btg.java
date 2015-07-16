import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.io.File;
import java.io.IOException;
import org.json.JSONObject;

public final class btg
  extends btl
{
  private String a;
  private Context b;
  private brv c;
  private bud d;
  private JSONObject e;
  private JSONObject f;
  private JSONObject g;
  private boolean h;
  
  public btg(bsl parambsl1, bsl parambsl2, String paramString, Context paramContext, brv parambrv, bud parambud)
  {
    super(parambsl1, parambsl2);
    a = paramString;
    b = paramContext;
    c = parambrv;
    d = parambud;
    h = false;
  }
  
  public final void a(boolean paramBoolean, int paramInt, JSONObject paramJSONObject)
  {
    super.a(paramBoolean, paramInt, paramJSONObject);
    if (paramJSONObject != null)
    {
      if (!paramJSONObject.optBoolean("report_internal_exceptions", false)) {
        break label337;
      }
      bue.a = bue.a.b;
      buq.d();
    }
    for (;;)
    {
      Object localObject1 = paramJSONObject.optJSONObject("me");
      if (localObject1 != null)
      {
        e = ((JSONObject)localObject1).optJSONObject("notify");
        localObject1 = d.a();
        if (e == null) {
          ((bua)localObject1).c();
        }
      }
      else
      {
        label75:
        localObject1 = paramJSONObject.optJSONObject("app_settings");
        if (localObject1 != null) {
          g = ((JSONObject)localObject1).optJSONObject("settings");
        }
        if ((g == null) || (g.optInt("need_pkg", 0) != 1)) {}
      }
      try
      {
        new btv(new bth(c).a("device_name", c.f()).a("pkg", b.getPackageName()), new btn(new btm(a, "/android_v2/update_package_name").a()), null).run();
        h = true;
        f = paramJSONObject.optJSONObject("apm");
        if (f != null)
        {
          paramJSONObject = new bup(f);
          localObject1 = b;
          if (c)
          {
            bup.b((Context)localObject1);
            localObject1 = ((Context)localObject1).getSharedPreferences("com.crittercism.optmz.config", 0).edit();
            if (!b) {
              break label521;
            }
            ((SharedPreferences.Editor)localObject1).putBoolean("enabled", a);
            ((SharedPreferences.Editor)localObject1).putBoolean("kill", c);
            ((SharedPreferences.Editor)localObject1).putBoolean("persist", b);
            ((SharedPreferences.Editor)localObject1).putInt("interval", d);
            ((SharedPreferences.Editor)localObject1).commit();
            brz.t().a(paramJSONObject);
          }
        }
        else
        {
          return;
          label337:
          bue.a = bue.a.c;
          continue;
          if ((e.optString("type") == null) || (!e.optString("type").equals("rate_my_app"))) {
            break label75;
          }
          localObject1 = new bua((bua)localObject1);
          localObject2 = e;
          d = ((JSONObject)localObject2).optInt("rate_after_load_num", 5);
          e = ((JSONObject)localObject2).optInt("remind_after_load_num", 5);
          f = ((JSONObject)localObject2).optString("message", "Would you mind taking a second to rate my app?  I would really appreciate it!");
          g = ((JSONObject)localObject2).optString("title", "Rate My App");
          ((bua)localObject1).a();
          d.a((bua)localObject1);
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          new StringBuilder("IOException in handleResponse(): ").append(localIOException.getMessage());
          bue.b();
          bue.c();
          continue;
          Object localObject2 = bup.a(localIOException);
          if ((!((File)localObject2).delete()) && (((File)localObject2).exists()))
          {
            bue.e();
            continue;
            label521:
            localIOException.clear();
          }
        }
      }
    }
  }
  
  public static final class a
    implements btk
  {}
}

/* Location:
 * Qualified Name:     btg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */