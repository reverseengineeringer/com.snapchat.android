package com.snapchat.android.fragments.settings;

import agn;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Filter;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;

final class CustomStoryPrivacyFragment$6
  implements TextWatcher
{
  CustomStoryPrivacyFragment$6(CustomStoryPrivacyFragment paramCustomStoryPrivacyFragment, StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    CustomStoryPrivacyFragment.e(b).getFilter().filter(paramCharSequence.toString());
    if ((paramCharSequence.toString().equals("")) || (paramCharSequence.toString() == null))
    {
      a.setFastScrollAlwaysVisible(true);
      a.setFastScrollEnabled(true);
      CustomStoryPrivacyFragment.f(b).setVisibility(4);
      return;
    }
    a.setFastScrollAlwaysVisible(false);
    a.setFastScrollEnabled(false);
    CustomStoryPrivacyFragment.f(b).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.CustomStoryPrivacyFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */