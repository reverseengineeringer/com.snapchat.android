package com.snapchat.android;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import ara;
import com.snapchat.android.fragments.settings.WebFragment;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public class SnapkidzSettingsActivity
  extends SnapchatActivity
{
  private final View.OnClickListener a = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      finish();
    }
  };
  private final View.OnClickListener b = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      new SnapkidzSettingsActivity.a(SnapkidzSettingsActivity.this).show();
    }
  };
  private final View.OnClickListener c = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      SnapkidzSettingsActivity.a(SnapkidzSettingsActivity.this);
    }
  };
  private final View.OnClickListener d = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      SnapkidzSettingsActivity.a(SnapkidzSettingsActivity.this, new WebFragment("https://www.snapchat.com/privacy", getString(2131493467)), "WebFragment");
    }
  };
  private final View.OnClickListener e = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      SnapkidzSettingsActivity.a(SnapkidzSettingsActivity.this, new WebFragment("https://www.snapchat.com/snapkidz.jsp", getString(2131493600)), "WebFragment");
    }
  };
  private final View.OnClickListener f = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      SnapkidzSettingsActivity.a(SnapkidzSettingsActivity.this, new WebFragment("https://www.snapchat.com/terms", getString(2131493481)), "WebFragment");
    }
  };
  private SnapkidzSettingsActivity g;
  private SharedPreferences h;
  private SharedPreferences.Editor i;
  
  public void onCreate(Bundle paramBundle)
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate(paramBundle);
    setContentView(2130968749);
    h = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
    i = h.edit();
    findViewById(2131361895).setOnClickListener(a);
    findViewById(2131362734).setOnClickListener(e);
    findViewById(2131362661).setOnClickListener(c);
    findViewById(2131362735).setOnClickListener(b);
    findViewById(2131362656).setOnClickListener(d);
    findViewById(2131362657).setOnClickListener(f);
    g = this;
  }
  
  final class a
    extends ara
  {
    public a()
    {
      super(getString(2131493057));
    }
    
    protected final void a()
    {
      int j = SnapkidzSettingsActivity.c(SnapkidzSettingsActivity.this).getInt("SnapKidzLoginManager_numAccounts", 0);
      int i = 0;
      while (i < j)
      {
        SnapkidzSettingsActivity.d(SnapkidzSettingsActivity.this).putString("SnapKidzLoginManager_username_" + i, "");
        i += 1;
      }
      SnapkidzSettingsActivity.d(SnapkidzSettingsActivity.this).putInt("SnapKidzLoginManager_numAccounts", 0);
      SnapkidzSettingsActivity.d(SnapkidzSettingsActivity.this).apply();
      SnapkidzSettingsActivity.a(SnapkidzSettingsActivity.this);
    }
    
    protected final void b() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapkidzSettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */