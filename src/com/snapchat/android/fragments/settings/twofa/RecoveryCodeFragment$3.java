package com.snapchat.android.fragments.settings.twofa;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;
import aol;
import java.util.Set;

final class RecoveryCodeFragment$3
  implements View.OnClickListener
{
  RecoveryCodeFragment$3(RecoveryCodeFragment paramRecoveryCodeFragment) {}
  
  public final void onClick(View paramView)
  {
    RecoveryCodeFragment.a(a).add(Integer.valueOf(RecoveryCodeFragment.b(a).a(a.getActivity())));
    a.a.setClickable(false);
    a.a.setText("");
    a.b.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.RecoveryCodeFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */