package com.snapchat.android.fragments.settings.twofa;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import aol;
import java.util.Set;

final class RecoveryCodePasswordValidationFragment$2
  implements View.OnClickListener
{
  RecoveryCodePasswordValidationFragment$2(RecoveryCodePasswordValidationFragment paramRecoveryCodePasswordValidationFragment) {}
  
  public final void onClick(View paramView)
  {
    RecoveryCodePasswordValidationFragment.a(a).add(Integer.valueOf(RecoveryCodePasswordValidationFragment.c(a).b(a.getActivity(), RecoveryCodePasswordValidationFragment.b(a).getText().toString())));
    RecoveryCodePasswordValidationFragment.d(a).setClickable(false);
    RecoveryCodePasswordValidationFragment.e(a).setText("");
    RecoveryCodePasswordValidationFragment.f(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.RecoveryCodePasswordValidationFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */