package com.snapchat.android;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;

final class LoginAndSignupActivity$1
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  LoginAndSignupActivity$1(LoginAndSignupActivity paramLoginAndSignupActivity) {}
  
  public final void onGlobalLayout()
  {
    Object localObject = a.getWindow().getDecorView();
    ((View)localObject).getWindowVisibleDisplayFrame(LoginAndSignupActivity.a(a));
    int i = aa).bottom;
    ((View)localObject).getGlobalVisibleRect(LoginAndSignupActivity.a(a));
    i = aa).bottom - i;
    localObject = LoginAndSignupActivity.b(a).getLayoutParams();
    if (height != i)
    {
      height = i;
      LoginAndSignupActivity.b(a).setLayoutParams((ViewGroup.LayoutParams)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.LoginAndSignupActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */