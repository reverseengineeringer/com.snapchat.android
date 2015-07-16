package com.snapchat.android.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import chc;
import chd;
import com.snapchat.android.fragments.cash.CashSettingsFragment;
import com.squareup.otto.Bus;
import java.util.List;
import rl;
import rl.a;
import rn;
import ro;

final class SettingsFragment$8
  implements View.OnClickListener
{
  SettingsFragment$8(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new rn();
    final ro localro = new ro();
    mListener = new rl.a()
    {
      public final void a(@chc rl paramAnonymousrl) {}
      
      public final void a(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        localro.a(null);
      }
      
      public final void b(@chc rl paramAnonymousrl) {}
      
      public final void b(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean) {}
    };
    mListener = new rl.a()
    {
      public final void a(@chc rl paramAnonymousrl) {}
      
      public final void a(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        bbo.a().a(new bev(new CashSettingsFragment()));
      }
      
      public final void b(@chc rl paramAnonymousrl) {}
      
      public final void b(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean) {}
    };
    paramView.a(null);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */