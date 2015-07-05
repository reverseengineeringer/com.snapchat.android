package com.snapchat.android.fragments.signup;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.Button;

final class LoginFragment$7
  implements Runnable
{
  LoginFragment$7(LoginFragment paramLoginFragment) {}
  
  public final void run()
  {
    TransitionDrawable localTransitionDrawable = new TransitionDrawable(new Drawable[] { new ColorDrawable(LoginFragment.m()), new ColorDrawable(LoginFragment.n()) });
    int i = LoginFragment.h(a).getPaddingBottom();
    LoginFragment.h(a).setBackgroundDrawable(localTransitionDrawable);
    LoginFragment.h(a).setPadding(i, i, i, i);
    localTransitionDrawable.startTransition(400);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.LoginFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */