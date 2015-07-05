package com.snapchat.android.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import ban;
import bdw;
import cgb;
import cgc;
import com.snapchat.android.fragments.cash.CashSettingsFragment;
import com.squareup.otto.Bus;
import java.util.List;
import qv;
import qv.a;
import qx;
import qy;

final class SettingsFragment$8
  implements View.OnClickListener
{
  SettingsFragment$8(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new qx();
    final qy localqy = new qy();
    mListener = new qv.a()
    {
      public final void a(@cgb qv paramAnonymousqv) {}
      
      public final void a(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        localqy.a(null);
      }
      
      public final void b(@cgb qv paramAnonymousqv) {}
      
      public final void b(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean) {}
    };
    mListener = new qv.a()
    {
      public final void a(@cgb qv paramAnonymousqv) {}
      
      public final void a(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        ban.a().a(new bdw(new CashSettingsFragment()));
      }
      
      public final void b(@cgb qv paramAnonymousqv) {}
      
      public final void b(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean) {}
    };
    paramView.a(null);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */