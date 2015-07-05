package com.snapchat.android.ui;

import android.view.ViewPropertyAnimator;

final class QuickSnapOnboardingOverlay$1
  implements Runnable
{
  QuickSnapOnboardingOverlay$1(QuickSnapOnboardingOverlay paramQuickSnapOnboardingOverlay) {}
  
  public final void run()
  {
    QuickSnapOnboardingOverlay.a(a, QuickSnapOnboardingOverlay.OverlayMode.MODE_BLINK);
    ViewPropertyAnimator localViewPropertyAnimator = a.animate();
    localViewPropertyAnimator.alpha(0.0F);
    localViewPropertyAnimator.setDuration(2000L);
    localViewPropertyAnimator.start();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.QuickSnapOnboardingOverlay.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */