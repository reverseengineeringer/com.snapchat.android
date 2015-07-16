package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewPropertyAnimator;
import android.widget.LinearLayout;
import android.widget.TextView;

public class FriendTextsView
  extends LinearLayout
{
  private TextView a;
  private TextView b;
  private a c;
  private int d;
  
  public FriendTextsView(Context paramContext)
  {
    super(paramContext);
    inflate(getContext(), 2130968679, this);
    a = ((TextView)findViewById(2131362129));
    b = ((TextView)findViewById(2131362362));
    b.setAlpha(0.0F);
    c = a.a;
  }
  
  public FriendTextsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    inflate(getContext(), 2130968679, this);
    a = ((TextView)findViewById(2131362129));
    b = ((TextView)findViewById(2131362362));
    b.setAlpha(0.0F);
    c = a.a;
  }
  
  public FriendTextsView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    inflate(getContext(), 2130968679, this);
    a = ((TextView)findViewById(2131362129));
    b = ((TextView)findViewById(2131362362));
    b.setAlpha(0.0F);
    c = a.a;
  }
  
  private void setSecondaryTextViewStatus(a parama)
  {
    new StringBuilder("change SecondaryViewStatus FROM ").append(a.getText()).append(" TO ").append(c).append(" -> ").append(parama);
    c = parama;
  }
  
  public final void a(boolean paramBoolean)
  {
    if (TextUtils.isEmpty(b.getText()))
    {
      b(false);
      return;
    }
    switch (3.a[c.ordinal()])
    {
    case 2: 
    default: 
      return;
    }
    while (paramBoolean)
    {
      setSecondaryTextViewStatus(a.b);
      a.animate().translationY(0.0F).setListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          FriendTextsView.a(FriendTextsView.this, FriendTextsView.a.a);
        }
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          FriendTextsView.a(FriendTextsView.this, FriendTextsView.a.c);
          FriendTextsView.a(FriendTextsView.this).setAlpha(1.0F);
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator) {}
      }).start();
      return;
      a.animate().cancel();
    }
    a.setTranslationY(0.0F);
    b.setAlpha(1.0F);
    setSecondaryTextViewStatus(a.c);
  }
  
  public final void b(boolean paramBoolean)
  {
    switch (3.a[c.ordinal()])
    {
    case 3: 
    default: 
      return;
    case 4: 
      a.animate().cancel();
    }
    if (paramBoolean)
    {
      setSecondaryTextViewStatus(a.d);
      a.animate().translationY(b.getMeasuredHeight() / 2).setListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          FriendTextsView.a(FriendTextsView.this, FriendTextsView.a.c);
        }
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          FriendTextsView.a(FriendTextsView.this).setAlpha(0.0F);
          FriendTextsView.a(FriendTextsView.this, FriendTextsView.a.a);
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator) {}
      }).start();
      return;
    }
    a.setTranslationY(b.getMeasuredHeight() / 2);
    b.setAlpha(0.0F);
    setSecondaryTextViewStatus(a.a);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    paramInt1 = b.getMeasuredHeight();
    if (d != paramInt1) {
      d = paramInt1;
    }
    switch (3.a[c.ordinal()])
    {
    default: 
      return;
    case 1: 
      a.setTranslationY(b.getMeasuredHeight() / 2);
      return;
    }
    a.setTranslationY(0.0F);
  }
  
  public void setPrimaryText(CharSequence paramCharSequence)
  {
    a.setText(paramCharSequence);
  }
  
  public void setSecondaryText(CharSequence paramCharSequence)
  {
    b.setText(paramCharSequence);
  }
  
  public void setTextColor(int paramInt)
  {
    a.setTextColor(paramInt);
    b.setTextColor(paramInt);
  }
  
  static enum a
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FriendTextsView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */