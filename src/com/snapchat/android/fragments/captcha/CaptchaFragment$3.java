package com.snapchat.android.fragments.captcha;

import ago;
import ago.b;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ProgressBar;
import avf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import pu;

final class CaptchaFragment$3
  implements View.OnClickListener
{
  CaptchaFragment$3(CaptchaFragment paramCaptchaFragment, ago paramago, String paramString) {}
  
  public final void onClick(View paramView)
  {
    if (c.getActivity() == null) {
      return;
    }
    Object localObject = a;
    paramView = new ArrayList(a.size());
    localObject = a.iterator();
    while (((Iterator)localObject).hasNext()) {
      paramView.add(Boolean.valueOf(nexta));
    }
    new pu(b, paramView, c).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
    CaptchaFragment.a(c).setClickable(false);
    CaptchaFragment.b(c).setText("");
    CaptchaFragment.b(c).setClickable(false);
    CaptchaFragment.c(c).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.captcha.CaptchaFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */