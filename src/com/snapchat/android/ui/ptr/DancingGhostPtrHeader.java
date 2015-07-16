package com.snapchat.android.ui.ptr;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import bvt;
import in.srain.cube.views.ptr.PtrFrameLayout;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class DancingGhostPtrHeader
  extends FrameLayout
  implements bvt
{
  AnimationDrawable a;
  private final Set<Object> b = new HashSet();
  private Context c;
  
  public DancingGhostPtrHeader(Context paramContext)
  {
    super(paramContext);
    setBackgroundColor(getResources().getColor(2131230784));
    c = paramContext;
  }
  
  private void a()
  {
    if (a != null) {
      a.stop();
    }
  }
  
  protected final void a(final int paramInt)
  {
    setBackgroundResource(paramInt);
    TransitionDrawable localTransitionDrawable = (TransitionDrawable)getBackground();
    if (localTransitionDrawable != null)
    {
      localTransitionDrawable.setCrossFadeEnabled(true);
      localTransitionDrawable.startTransition(1000);
    }
    postDelayed(new Runnable()
    {
      public final void run()
      {
        if (!DancingGhostPtrHeader.a(DancingGhostPtrHeader.this).isRunning()) {
          return;
        }
        switch (paramInt)
        {
        default: 
          return;
        case 2130837643: 
          a(2130837765);
          return;
        case 2130838164: 
          a(2130838066);
          return;
        case 2130838066: 
          a(2130837875);
          return;
        case 2130837875: 
          a(2130837643);
          return;
        }
        a(2130838164);
      }
    }, 1000L);
  }
  
  public final void a(PtrFrameLayout paramPtrFrameLayout)
  {
    paramPtrFrameLayout = b.iterator();
    while (paramPtrFrameLayout.hasNext()) {
      paramPtrFrameLayout.next();
    }
    if (a != null)
    {
      a.stop();
      a.selectDrawable(0);
    }
    setBackgroundColor(getResources().getColor(2131230784));
  }
  
  public final void a(PtrFrameLayout paramPtrFrameLayout, boolean paramBoolean, byte paramByte, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2)
  {
    if (a == null)
    {
      paramPtrFrameLayout = (ImageView)((ViewGroup)LayoutInflater.from(c).inflate(2130968716, this)).findViewById(2131362577);
      paramPtrFrameLayout.setBackgroundResource(2130837766);
      a = ((AnimationDrawable)paramPtrFrameLayout.getBackground());
    }
  }
  
  public final void b(PtrFrameLayout paramPtrFrameLayout)
  {
    a();
  }
  
  public final void c(PtrFrameLayout paramPtrFrameLayout)
  {
    if (a != null) {
      a.start();
    }
    a(2130838164);
  }
  
  public final void d(PtrFrameLayout paramPtrFrameLayout)
  {
    a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ptr.DancingGhostPtrHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */