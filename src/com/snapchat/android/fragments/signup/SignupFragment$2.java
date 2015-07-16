package com.snapchat.android.fragments.signup;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.EditText;

final class SignupFragment$2
  implements View.OnTouchListener
{
  SignupFragment$2(SignupFragment paramSignupFragment) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = SignupFragment.k(a).getOnFocusChangeListener();
    if ((1 == paramMotionEvent.getAction()) && (paramView != null))
    {
      SignupFragment.j(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.SignupFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */