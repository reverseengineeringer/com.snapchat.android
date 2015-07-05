package com.snapchat.android.fragments.settings;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import apa;
import auy;
import azn;
import com.snapchat.android.Timber;

final class DeveloperSettingsFragment$22
  implements View.OnClickListener
{
  DeveloperSettingsFragment$22(DeveloperSettingsFragment paramDeveloperSettingsFragment, TextView paramTextView) {}
  
  public final void onClick(final View paramView)
  {
    paramView = a.getText().toString();
    new apa(b.getActivity(), "Thumbnail Story Count", paramView, paramView)
    {
      protected final void a(String paramAnonymousString)
      {
        try
        {
          int i = Integer.parseInt(paramAnonymousString);
          DeveloperSettingsFragment.b(b).a(i);
          a.setText(Integer.toString(i));
          if (!TextUtils.equals(paramView, paramAnonymousString)) {
            auy.a().b();
          }
          return;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          Timber.e("DeveloperSettingsFragment", "Invalid number: " + paramAnonymousString, new Object[0]);
        }
      }
    }.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */