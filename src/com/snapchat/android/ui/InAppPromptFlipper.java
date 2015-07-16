package com.snapchat.android.ui;

import akr;
import android.content.Context;
import android.util.AttributeSet;
import bhk;

public class InAppPromptFlipper
  extends VerticalSwipeLayout
{
  private final bhk c;
  private final akr d;
  private boolean e = false;
  
  public InAppPromptFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, new bhk(), akr.a());
  }
  
  InAppPromptFlipper(Context paramContext, AttributeSet paramAttributeSet, bhk parambhk, akr paramakr)
  {
    super(paramContext, paramAttributeSet);
    a(1, 0.0D);
    a(new VerticalSwipeLayout.a()
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
    c = parambhk;
    d = paramakr;
  }
  
  public final void a()
  {
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