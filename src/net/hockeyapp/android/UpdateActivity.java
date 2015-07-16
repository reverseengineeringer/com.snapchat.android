package net.hockeyapp.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;
import android.provider.Settings.SettingNotFoundException;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import bwm;
import bwn;
import bwo;
import bwq;
import bwr;
import bwz;
import bxa;
import bxe;
import bxn;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import net.hockeyapp.android.views.UpdateView;

public class UpdateActivity
  extends Activity
  implements View.OnClickListener, bwm
{
  protected bwz a;
  protected bxn b;
  private final int c = 0;
  private bwr d;
  private Context e;
  
  private String d()
  {
    try
    {
      Object localObject = getPackageManager();
      localObject = ((PackageManager)localObject).getApplicationLabel(((PackageManager)localObject).getApplicationInfo(getPackageName(), 0)).toString();
      return (String)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return "";
  }
  
  private boolean e()
  {
    try
    {
      if ((Build.VERSION.SDK_INT >= 17) && (Build.VERSION.SDK_INT < 21))
      {
        if (Settings.Global.getInt(getContentResolver(), "install_non_market_apps") != 1) {
          break label51;
        }
        return true;
      }
      int i = Settings.Secure.getInt(getContentResolver(), "install_non_market_apps");
      if (i != 1) {
        return false;
      }
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException) {}
    return true;
    label51:
    return false;
  }
  
  protected final void a()
  {
    a = new bwz(this, getIntent().getStringExtra("url"), new bwq()
    {
      public final String a(int paramAnonymousInt)
      {
        bwo localbwo = bwn.b();
        if (localbwo != null) {
          return localbwo.a(paramAnonymousInt);
        }
        return null;
      }
      
      public final void a(bwz paramAnonymousbwz)
      {
        b();
      }
      
      public final void a(Boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean.booleanValue())
        {
          a();
          return;
        }
        b();
      }
    });
    bxe.a(a);
  }
  
  public final void b()
  {
    findViewById(4100).setEnabled(true);
  }
  
  public final int c()
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName128versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return -1;
  }
  
  public void onClick(View paramView)
  {
    if (e.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {}
    for (int i = 1; i == 0; i = 0)
    {
      d = new bwr();
      d.a = "The permission to access the external storage permission is not set. Please contact the developer.";
      runOnUiThread(new Runnable()
      {
        public final void run()
        {
          showDialog(0);
        }
      });
      return;
    }
    if (!e())
    {
      d = new bwr();
      d.a = "The installation from unknown sources is not enabled. Please check the device settings.";
      runOnUiThread(new Runnable()
      {
        public final void run()
        {
          showDialog(0);
        }
      });
      return;
    }
    a();
    paramView.setEnabled(false);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate(paramBundle);
    setTitle("App Update");
    setContentView(new UpdateView(this));
    e = this;
    b = new bxn(this, getIntent().getStringExtra("json"), this);
    ((TextView)findViewById(4098)).setText(d());
    final TextView localTextView = (TextView)findViewById(4099);
    final String str1 = "Version " + b.a();
    final String str2 = b.b();
    paramBundle = "Unknown size";
    long l = b.c();
    if (l >= 0L) {
      paramBundle = String.format("%.2f", new Object[] { Float.valueOf((float)l / 1048576.0F) }) + " MB";
    }
    for (;;)
    {
      localTextView.setText(str1 + "\n" + str2 + " - " + paramBundle);
      ((Button)findViewById(4100)).setOnClickListener(this);
      paramBundle = (WebView)findViewById(4101);
      paramBundle.clearCache(true);
      paramBundle.destroyDrawingCache();
      paramBundle.loadDataWithBaseURL("https://sdk.hockeyapp.net/", b.d(), "text/html", "utf-8", null);
      a = ((bwz)getLastNonConfigurationInstance());
      if (a != null) {
        a.a(this);
      }
      return;
      bxe.a(new bxa(this, getIntent().getStringExtra("url"), new bwq()
      {
        public final void a(bwz paramAnonymousbwz)
        {
          if ((paramAnonymousbwz instanceof bxa))
          {
            long l = g;
            paramAnonymousbwz = String.format("%.2f", new Object[] { Float.valueOf((float)l / 1048576.0F) }) + " MB";
            localTextView.setText(str1 + "\n" + str2 + " - " + paramAnonymousbwz);
          }
        }
      }));
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    new AlertDialog.Builder(this).setMessage("An error has occured").setCancelable(false).setTitle("Error").setIcon(17301543).setPositiveButton("OK", new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        UpdateActivity.a(UpdateActivity.this);
        paramAnonymousDialogInterface.cancel();
      }
    }).create();
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    paramDialog = (AlertDialog)paramDialog;
    if (d != null)
    {
      paramDialog.setMessage(d.a);
      return;
    }
    paramDialog.setMessage("An unknown error has occured.");
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    if (a != null) {
      a.a();
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.UpdateActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */