package com.snapchat.android.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.squareup.otto.Bus;

final class AdditionalServicesFragment$2
  implements View.OnClickListener
{
  AdditionalServicesFragment$2(AdditionalServicesFragment paramAdditionalServicesFragment) {}
  
  public final void onClick(View paramView)
  {
    bbo.a().a(new bev(new PermissionsExplanationFragment()));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.AdditionalServicesFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */