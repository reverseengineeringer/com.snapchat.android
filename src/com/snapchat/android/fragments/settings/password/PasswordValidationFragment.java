package com.snapchat.android.fragments.settings.password;

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
import anx;
import apg;
import aph;
import auv;
import com.snapchat.android.fragments.settings.BasePasswordValidationFragment;
import java.util.HashSet;
import java.util.Set;

public class PasswordValidationFragment
  extends BasePasswordValidationFragment
{
  private final aph f;
  private final Set<Integer> g = new HashSet();
  private apg h = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (PasswordValidationFragment.a(PasswordValidationFragment.this).contains(Integer.valueOf(i)))
      {
        PasswordValidationFragment.a(PasswordValidationFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousanh instanceof anx)) {
          PasswordValidationFragment.a(PasswordValidationFragment.this, (anx)paramAnonymousanh);
        }
      }
    }
  };
  
  public PasswordValidationFragment()
  {
    this(aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private PasswordValidationFragment(aph paramaph)
  {
    f = paramaph;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((TextView)c(2131362674)).setText(auv.a(null, 2131493461, new Object[0]));
    ((TextView)c(2131362675)).setText(auv.a(null, 2131493276, new Object[0]));
    b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        PasswordValidationFragment.a(PasswordValidationFragment.this).add(Integer.valueOf(PasswordValidationFragment.c(PasswordValidationFragment.this).b(getActivity(), PasswordValidationFragment.b(PasswordValidationFragment.this).getText().toString())));
        PasswordValidationFragment.d(PasswordValidationFragment.this).setClickable(false);
        PasswordValidationFragment.e(PasswordValidationFragment.this).setText("");
        PasswordValidationFragment.f(PasswordValidationFragment.this).setVisibility(0);
      }
    });
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    f.b(1016, h);
    g.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    f.a(1016, h);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.PasswordValidationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */