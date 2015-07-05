import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.io.File;
import java.io.IOException;
import org.json.JSONObject;

public final class bsf
  extends bsk
{
  private String a;
  private Context b;
  private bqu c;
  private btc d;
  private JSONObject e;
  private JSONObject f;
  private JSONObject g;
  private boolean h;
  
  public bsf(brk parambrk1, brk parambrk2, String paramString, Context paramContext, bqu parambqu, btc parambtc)
  {
    super(parambrk1, parambrk2);
    a = paramString;
    b = paramContext;
    c = parambqu;
    d = parambtc;
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
      btd.a = btd.a.b;
      btp.d();
    }
    for (;;)
    {
      Object localObject1 = paramJSONObject.optJSONObject("me");
      if (localObject1 != null)
      {
        e = ((JSONObject)localObject1).optJSONObject("notify");
        localObject1 = d.a();
        if (e == null) {
          ((bsz)localObject1).c();
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
        new bsu(new bsg(c).a("device_name", c.f()).a("pkg", b.getPackageName()), new bsm(new bsl(a, "/android_v2/update_package_name").a()), null).run();
        h = true;
        f = paramJSONObject.optJSONObject("apm");
        if (f != null)
        {
          paramJSONObject = new bto(f);
          localObject1 = b;
          if (c)
          {
            bto.b((Context)localObject1);
            localObject1 = ((Context)localObject1).getSharedPreferences("com.crittercism.optmz.config", 0).edit();
            if (!b) {
              break label521;
            }
            ((SharedPreferences.Editor)localObject1).putBoolean("enabled", a);
            ((SharedPreferences.Editor)localObject1).putBoolean("kill", c);
            ((SharedPreferences.Editor)localObject1).putBoolean("persist", b);
            ((SharedPreferences.Editor)localObject1).putInt("interval", d);
            ((SharedPreferences.Editor)localObject1).commit();
            bqy.t().a(paramJSONObject);
          }
        }
        else
        {
          return;
          label337:
          btd.a = btd.a.c;
          continue;
          if ((e.optString("type") == null) || (!e.optString("type").equals("rate_my_app"))) {
            break label75;
          }
          localObject1 = new bsz((bsz)localObject1);
          localObject2 = e;
          d = ((JSONObject)localObject2).optInt("rate_after_load_num", 5);
          e = ((JSONObject)localObject2).optInt("remind_after_load_num", 5);
          f = ((JSONObject)localObject2).optString("message", "Would you mind taking a second to rate my app?  I would really appreciate it!");
          g = ((JSONObject)localObject2).optString("title", "Rate My App");
          ((bsz)localObject1).a();
          d.a((bsz)localObject1);
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          new StringBuilder("IOException in handleResponse(): ").append(localIOException.getMessage());
          btd.b();
          btd.c();
          continue;
          Object localObject2 = bto.a(localIOException);
          if ((!((File)localObject2).delete()) && (((File)localObject2).exists()))
          {
            btd.e();
            continue;
            label521:
            localIOException.clear();
          }
        }
      }
    }
  }
  
  public static final class a
    implements bsj
  {}
}

/* Location:
 * Qualified Name:     bsf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */