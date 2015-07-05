package com.snapchat.android.fragments.captcha;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import auh;
import om;

final class CaptchaFragment$4
  implements View.OnClickListener
{
  CaptchaFragment$4(CaptchaFragment paramCaptchaFragment, Button paramButton, TextView paramTextView, ProgressBar paramProgressBar) {}
  
  public final void onClick(View paramView)
  {
    if (d.getActivity() == null) {
      return;
    }
    a.setVisibility(8);
    b.setText(2131492956);
    c.setVisibility(0);
    new om(d).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.captcha.CaptchaFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */