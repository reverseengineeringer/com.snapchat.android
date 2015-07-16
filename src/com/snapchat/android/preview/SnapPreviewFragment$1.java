package com.snapchat.android.preview;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import ara;

final class SnapPreviewFragment$1
  extends ara
{
  SnapPreviewFragment$1(SnapPreviewFragment paramSnapPreviewFragment, Context paramContext, String paramString)
  {
    super(paramContext, paramString);
  }
  
  protected final void a()
  {
    SnapPreviewFragment.a(a);
    FragmentActivity localFragmentActivity = a.getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.onBackPressed();
    }
  }
  
  protected final void b() {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */