package com.snapchat.android.fragments.settings.email;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import anh;
import anp;
import anx;
import apg;
import aph;
import auv;
import chc;
import com.snapchat.android.fragments.settings.BasePasswordValidationFragment;
import java.util.HashSet;
import java.util.Set;

@SuppressLint({"ValidFragment"})
public class EmailPasswordValidationFragment
  extends BasePasswordValidationFragment
{
  private final String f;
  private final Set<Integer> g = new HashSet();
  private apg h = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this).contains(Integer.valueOf(i)))
      {
        EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this).remove(Integer.valueOf(i));
        if (!(paramAnonymousanh instanceof anx)) {
          break label60;
        }
        EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this, (anx)paramAnonymousanh);
      }
      label60:
      while (!(paramAnonymousanh instanceof anp)) {
        return;
      }
      EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this, (anp)paramAnonymousanh);
    }
  };
  private final aph i;
  
  private EmailPasswordValidationFragment(aph paramaph, @chc String paramString)
  {
    i = paramaph;
    f = paramString;
  }
  
  @SuppressLint({"ValidFragment"})
  public EmailPasswordValidationFragment(@chc String paramString)
  {
    this(aph.a(), paramString);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((TextView)c(2131362674)).setText(auv.a(null, 2131493442, new Object[0]));
    ((TextView)c(2131362675)).setText(auv.a(null, 2131493149, new Object[0]));
    b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this).add(Integer.valueOf(EmailPasswordValidationFragment.c(EmailPasswordValidationFragment.this).b(getActivity(), EmailPasswordValidationFragment.b(EmailPasswordValidationFragment.this).getText().toString())));
        EmailPasswordValidationFragment.d(EmailPasswordValidationFragment.this).setClickable(false);
        EmailPasswordValidationFragment.e(EmailPasswordValidationFragment.this).setText("");
        EmailPasswordValidationFragment.f(EmailPasswordValidationFragment.this).setVisibility(0);
      }
    });
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    i.b(1016, h);
    i.b(1015, h);
    g.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    i.a(1016, h);
    i.a(1015, h);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailPasswordValidationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */