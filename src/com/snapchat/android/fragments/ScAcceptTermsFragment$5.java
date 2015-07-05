package com.snapchat.android.fragments;

import ajx;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.FragmentActivity;
import aol;

final class ScAcceptTermsFragment$5
  implements DialogInterface.OnClickListener
{
  ScAcceptTermsFragment$5(ScAcceptTermsFragment paramScAcceptTermsFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ScAcceptTermsFragment.f(a).e();
    ajx.n();
    paramDialogInterface = a.getActivity();
    paramDialogInterface.setResult(1);
    paramDialogInterface.finish();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.ScAcceptTermsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */