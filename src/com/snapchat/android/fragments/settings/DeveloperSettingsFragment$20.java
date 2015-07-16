package com.snapchat.android.fragments.settings;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import apw;
import avw;
import bam;

final class DeveloperSettingsFragment$20
  implements View.OnClickListener
{
  DeveloperSettingsFragment$20(DeveloperSettingsFragment paramDeveloperSettingsFragment, TextView paramTextView) {}
  
  public final void onClick(final View paramView)
  {
    paramView = a.getText().toString();
    new apw(b.getActivity(), "Thumbnail Story Count", paramView, paramView)
    {
      protected final void a(String paramAnonymousString)
      {
        try
        {
          int i = Integer.parseInt(paramAnonymousString);
          DeveloperSettingsFragment.b(b).a(i);
          a.setText(Integer.toString(i));
          if (!TextUtils.equals(paramView, paramAnonymousString)) {
            avw.a().b();
          }
          return;
        }
        catch (NumberFormatException paramAnonymousString) {}
      }
    }.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */