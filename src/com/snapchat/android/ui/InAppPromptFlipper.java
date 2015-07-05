package com.snapchat.android.ui;

import ajx;
import android.content.Context;
import android.util.AttributeSet;
import bgk;
import com.snapchat.android.Timber;

public class InAppPromptFlipper
  extends VerticalSwipeLayout
{
  private final bgk c;
  private final ajx d;
  private boolean e = false;
  
  public InAppPromptFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, new bgk(), ajx.a());
  }
  
  InAppPromptFlipper(Context paramContext, AttributeSet paramAttributeSet, bgk parambgk, ajx paramajx)
  {
    super(paramContext, paramAttributeSet);
    a(1, 0.0D);
    setOnScrolledListener(new VerticalSwipeLayout.a()
    {
      public final void a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void c(int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        case 0: 
          InAppPromptFlipper.a(InAppPromptFlipper.this);
          return;
        }
        if (InAppPromptFlipper.b(InAppPromptFlipper.this)) {
          InAppPromptFlipper.c();
        }
        setVisibility(8);
      }
    });
    c = parambgk;
    d = paramajx;
  }
  
  public final void a()
  {
    Timber.c("UpgradePromptView", "showPrompt()", new Object[0]);
    post(new Runnable()
    {
      public final void run()
      {
        setVisibility(0);
        post(new Runnable()
        {
          public final void run()
          {
            a(0, 1.5D);
          }
        });
      }
    });
  }
  
  public final void b()
  {
    e = false;
    a(1, 1.0D);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.InAppPromptFlipper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */