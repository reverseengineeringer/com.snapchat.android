package com.snapchat.android.ui;

final class InAppPromptFlipper$2
  implements Runnable
{
  InAppPromptFlipper$2(InAppPromptFlipper paramInAppPromptFlipper) {}
  
  public final void run()
  {
    a.setVisibility(0);
    a.post(new Runnable()
    {
      public final void run()
      {
        a.a(0, 1.5D);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.InAppPromptFlipper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */