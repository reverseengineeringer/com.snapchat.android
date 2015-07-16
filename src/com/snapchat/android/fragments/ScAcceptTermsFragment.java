package com.snapchat.android.fragments;

import akr;
import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import aph;
import auh;
import bbo;
import bev;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.Random;

public class ScAcceptTermsFragment
  extends SnapchatFragment
{
  private static Random a = new Random();
  private final aph b;
  
  public ScAcceptTermsFragment()
  {
    this(aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private ScAcceptTermsFragment(aph paramaph)
  {
    b = paramaph;
  }
  
  private Animator i()
  {
    final ImageView localImageView = (ImageView)c(2131362587);
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(localImageView, "alpha", new float[] { 0.0F, 0.8F });
    final Object localObject1 = ObjectAnimator.ofFloat(localImageView, "alpha", new float[] { 0.8F, 0.0F });
    localObjectAnimator.setDuration(182L);
    ((ObjectAnimator)localObject1).setDuration(182L);
    final Object localObject2 = new AnimatorSet();
    ((AnimatorSet)localObject2).play((Animator)localObject1).after(localObjectAnimator);
    ((AnimatorSet)localObject2).addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        localImageView.setVisibility(0);
      }
    });
    localImageView = (ImageView)c(2131362588);
    localImageView.setPivotY(localImageView.getMeasuredHeight());
    localImageView.setPivotX(localImageView.getMeasuredWidth() / 2);
    localObjectAnimator = ObjectAnimator.ofFloat(localImageView, "rotation", new float[] { 0.0F, -110.0F });
    Object localObject3 = ObjectAnimator.ofFloat(localImageView, "rotation", new float[] { -110.0F, 0.0F });
    localObjectAnimator.setDuration(365L);
    ((ObjectAnimator)localObject3).setDuration(365L);
    localObject1 = new AnimatorSet();
    ((AnimatorSet)localObject1).play((Animator)localObject3).after(localObjectAnimator);
    ((AnimatorSet)localObject1).play((Animator)localObject2).after(localObjectAnimator);
    int j = a.nextInt(5);
    int i = 0;
    while (i < j + 4)
    {
      localObject3 = (RelativeLayout)c(2131362580);
      localObject2 = new ImageView(getActivity());
      Object localObject4 = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject4).addRule(2, 2131362589);
      ((RelativeLayout.LayoutParams)localObject4).addRule(0, 2131362588);
      ((ImageView)localObject2).setVisibility(4);
      ((ImageView)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject4);
      ((ImageView)localObject2).setImageDrawable(getResources().getDrawable(2130838163));
      int k = a.nextInt(5) + 1;
      ((ImageView)localObject2).setScaleX(k / 10.0F);
      ((ImageView)localObject2).setScaleY(k / 10.0F);
      ((RelativeLayout)localObject3).addView((View)localObject2);
      ((ImageView)localObject2).setY(75.0F);
      k = a.nextInt(71);
      localObject3 = ObjectAnimator.ofFloat(localObject2, "translationX", new float[] { (a.nextInt(160) - 80) * -1 });
      localObject4 = ObjectAnimator.ofFloat(localObject2, "translationY", new float[] { (k + 10) * -1 });
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.play((Animator)localObject3).with((Animator)localObject4);
      localAnimatorSet.addListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          localObject2.setVisibility(4);
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator)
        {
          localObject2.setVisibility(0);
        }
      });
      localAnimatorSet.setDuration(182L);
      ((AnimatorSet)localObject1).play(localAnimatorSet).after(localObjectAnimator);
      i += 1;
    }
    ((AnimatorSet)localObject1).addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        localObject1.start();
      }
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        localImageView.setVisibility(0);
      }
    });
    return (Animator)localObject1;
  }
  
  private void m()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    localBuilder.setMessage(2131493423);
    localBuilder.setCancelable(true);
    localBuilder.setPositiveButton(2131493601, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ScAcceptTermsFragment.f(ScAcceptTermsFragment.this).e();
        akr.n();
        paramAnonymousDialogInterface = getActivity();
        paramAnonymousDialogInterface.setResult(1);
        paramAnonymousDialogInterface.finish();
      }
    });
    localBuilder.setNegativeButton(2131493248, null);
    localBuilder.show();
  }
  
  public final boolean g()
  {
    m();
    return true;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, final Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968719, paramViewGroup, false);
    paramViewGroup = getString(2131493537);
    paramBundle = getString(2131493539);
    String str = getString(2131493538, new Object[] { paramBundle, paramViewGroup, paramViewGroup, paramBundle });
    int i = str.lastIndexOf(paramViewGroup);
    paramLayoutInflater = new SpannableString(str);
    paramLayoutInflater.setSpan(new ClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView.invalidate();
        bbo.a().a(new bev(new WebFragment("https://www.snapchat.com/privacy", paramViewGroup)));
      }
      
      public final void updateDrawState(TextPaint paramAnonymousTextPaint)
      {
        super.updateDrawState(paramAnonymousTextPaint);
        paramAnonymousTextPaint.setUnderlineText(false);
      }
    }, i, paramViewGroup.length() + i, 33);
    i = str.lastIndexOf(paramBundle);
    paramLayoutInflater.setSpan(new ClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView.invalidate();
        bbo.a().a(new bev(new WebFragment("https://www.snapchat.com/terms", paramBundle)));
      }
      
      public final void updateDrawState(TextPaint paramAnonymousTextPaint)
      {
        super.updateDrawState(paramAnonymousTextPaint);
        paramAnonymousTextPaint.setUnderlineText(false);
      }
    }, i, paramBundle.length() + i, 33);
    paramViewGroup = (TextView)c(2131362584);
    paramViewGroup.setText(paramLayoutInflater);
    paramViewGroup.setMovementMethod(LinkMovementMethod.getInstance());
    paramLayoutInflater = (Button)c(2131362589);
    getActivity().getAssets();
    auh.a(paramLayoutInflater);
    paramLayoutInflater.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        akr.W();
        getActivity().finish();
      }
    });
    paramViewGroup = getString(2131493536);
    paramLayoutInflater = new SpannableString(paramViewGroup);
    paramLayoutInflater.setSpan(new ClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView.invalidate();
        ScAcceptTermsFragment.e(ScAcceptTermsFragment.this);
      }
      
      public final void updateDrawState(TextPaint paramAnonymousTextPaint)
      {
        super.updateDrawState(paramAnonymousTextPaint);
        paramAnonymousTextPaint.setUnderlineText(false);
      }
    }, 0, paramViewGroup.length(), 33);
    paramViewGroup = (TextView)c(2131362585);
    paramViewGroup.setText(paramLayoutInflater);
    paramViewGroup.setMovementMethod(LinkMovementMethod.getInstance());
    mFragmentLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public final void onGlobalLayout()
      {
        ScAcceptTermsFragment.a(ScAcceptTermsFragment.this);
        if (ScAcceptTermsFragment.b(ScAcceptTermsFragment.this).getViewTreeObserver().isAlive())
        {
          if (Build.VERSION.SDK_INT >= 16) {
            ScAcceptTermsFragment.c(ScAcceptTermsFragment.this).getViewTreeObserver().removeOnGlobalLayoutListener(this);
          }
        }
        else {
          return;
        }
        ScAcceptTermsFragment.d(ScAcceptTermsFragment.this).getViewTreeObserver().removeGlobalOnLayoutListener(this);
      }
    });
    return mFragmentLayout;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.ScAcceptTermsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */