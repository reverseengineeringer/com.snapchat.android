package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import avh;

public class SendToBottomPanelView
  extends RelativeLayout
{
  public TextView a;
  public TextView b;
  public Animator c;
  private ImageView d;
  private HorizontalScrollView e;
  private LinearLayout f;
  private boolean g = false;
  private boolean h = false;
  
  public SendToBottomPanelView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SendToBottomPanelView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SendToBottomPanelView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130968724, this, true);
    d = ((ImageView)findViewById(2131362618));
    e = ((HorizontalScrollView)findViewById(2131362619));
    f = ((LinearLayout)findViewById(2131362620));
    a = ((TextView)findViewById(2131362621));
    b = ((TextView)findViewById(2131362622));
  }
  
  public final void a()
  {
    if (getVisibility() != 8)
    {
      g = true;
      setVisibility(8);
      return;
    }
    g = false;
  }
  
  public final void a(boolean paramBoolean)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(getLayoutParams());
    bottomMargin = ((int)avh.a(0.0F, getContext()));
    localLayoutParams.addRule(12);
    if (paramBoolean) {
      setVisibility(0);
    }
    for (;;)
    {
      setLayoutParams(localLayoutParams);
      h = true;
      return;
      setVisibility(8);
    }
  }
  
  public final void b()
  {
    if (!h) {
      a(false);
    }
    if (!g) {
      setVisibility(0);
    }
  }
  
  public HorizontalScrollView getScrollView()
  {
    return e;
  }
  
  public ImageView getSendButton()
  {
    return d;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    super.setOnClickListener(paramOnClickListener);
    e.setOnClickListener(paramOnClickListener);
    f.setOnClickListener(paramOnClickListener);
    a.setOnClickListener(paramOnClickListener);
    b.setOnClickListener(paramOnClickListener);
  }
  
  public void setSendButtonOnClickListener(View.OnClickListener paramOnClickListener)
  {
    d.setOnClickListener(paramOnClickListener);
  }
  
  public void setSendButtonOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    d.setOnTouchListener(paramOnTouchListener);
  }
  
  public void setText(String paramString)
  {
    a.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SendToBottomPanelView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */