import android.app.Activity;
import android.app.DialogFragment;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import net.hockeyapp.android.views.UpdateView;
import org.json.JSONArray;
import org.json.JSONException;

public class bvk
  extends DialogFragment
  implements View.OnClickListener, bvl
{
  private bvy a;
  private JSONArray b;
  private String c;
  private bwm d;
  
  private String a()
  {
    Object localObject = getActivity();
    try
    {
      PackageManager localPackageManager = ((Activity)localObject).getPackageManager();
      localObject = localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(((Activity)localObject).getPackageName(), 0)).toString();
      return (String)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return "";
  }
  
  private void a(final Activity paramActivity)
  {
    a = new bvy(paramActivity, c, new bvp()
    {
      public final String a(int paramAnonymousInt)
      {
        bvn localbvn = bvm.b();
        if (localbvn != null) {
          return localbvn.a(paramAnonymousInt);
        }
        return null;
      }
      
      public final void a(bvy paramAnonymousbvy) {}
      
      public final void a(Boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean.booleanValue()) {
          bvk.a(bvk.this, paramActivity);
        }
      }
    });
    bwd.a(a);
  }
  
  public final int c()
  {
    try
    {
      int i = getActivitygetPackageManagergetPackageInfogetActivitygetPackageName128versionCode;
      return i;
    }
    catch (NullPointerException localNullPointerException)
    {
      return -1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return -1;
  }
  
  public void onClick(View paramView)
  {
    a(getActivity());
    dismiss();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      c = getArguments().getString("url");
      b = new JSONArray(getArguments().getString("versionInfo"));
      setStyle(1, 16973939);
      return;
    }
    catch (JSONException paramBundle)
    {
      dismiss();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, final Bundle paramBundle)
  {
    paramViewGroup = new UpdateView(getActivity(), false, true);
    d = new bwm(getActivity(), b.toString(), this);
    ((TextView)paramViewGroup.findViewById(4098)).setText(a());
    paramBundle = (TextView)paramViewGroup.findViewById(4099);
    final String str1 = "Version " + d.a();
    final String str2 = d.b();
    paramLayoutInflater = "Unknown size";
    long l = d.c();
    if (l >= 0L) {
      paramLayoutInflater = String.format("%.2f", new Object[] { Float.valueOf((float)l / 1048576.0F) }) + " MB";
    }
    for (;;)
    {
      paramBundle.setText(str1 + "\n" + str2 + " - " + paramLayoutInflater);
      ((Button)paramViewGroup.findViewById(4100)).setOnClickListener(this);
      paramLayoutInflater = (WebView)paramViewGroup.findViewById(4101);
      paramLayoutInflater.clearCache(true);
      paramLayoutInflater.destroyDrawingCache();
      paramLayoutInflater.loadDataWithBaseURL("https://sdk.hockeyapp.net/", d.d(), "text/html", "utf-8", null);
      return paramViewGroup;
      bwd.a(new bvz(getActivity(), c, new bvp()
      {
        public final void a(bvy paramAnonymousbvy)
        {
          if ((paramAnonymousbvy instanceof bvz))
          {
            long l = g;
            paramAnonymousbvy = String.format("%.2f", new Object[] { Float.valueOf((float)l / 1048576.0F) }) + " MB";
            paramBundle.setText(str1 + "\n" + str2 + " - " + paramAnonymousbvy);
          }
        }
      }));
    }
  }
}

/* Location:
 * Qualified Name:     bvk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */