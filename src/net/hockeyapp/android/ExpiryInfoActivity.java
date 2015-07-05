package net.hockeyapp.android;

import android.app.Activity;
import android.os.Bundle;
import bvi;
import bvm;
import net.hockeyapp.android.views.ExpiryInfoView;

public class ExpiryInfoActivity
  extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(bvi.a(bvm.b(), 768));
    setContentView(new ExpiryInfoView(this, bvi.a(bvm.b(), 769)));
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.ExpiryInfoActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */