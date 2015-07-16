package com.snapchat.android.fragments.settings.twofa;

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
import anv;
import anx;
import apg;
import aph;
import com.snapchat.android.fragments.settings.BasePasswordValidationFragment;
import java.util.HashSet;
import java.util.Set;

public class RecoveryCodePasswordValidationFragment
  extends BasePasswordValidationFragment
{
  private final Set<Integer> f = new HashSet();
  private final aph g;
  private apg h = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (RecoveryCodePasswordValidationFragment.a(RecoveryCodePasswordValidationFragment.this).contains(Integer.valueOf(i)))
      {
        RecoveryCodePasswordValidationFragment.a(RecoveryCodePasswordValidationFragment.this).remove(Integer.valueOf(i));
        if (!(paramAnonymousanh instanceof anx)) {
          break label60;
        }
        RecoveryCodePasswordValidationFragment.a(RecoveryCodePasswordValidationFragment.this, (anx)paramAnonymousanh);
      }
      label60:
      while (!(paramAnonymousanh instanceof anv)) {
        return;
      }
      RecoveryCodePasswordValidationFragment.a(RecoveryCodePasswordValidationFragment.this, (anv)paramAnonymousanh);
    }
  };
  
  public RecoveryCodePasswordValidationFragment()
  {
    this(aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private RecoveryCodePasswordValidationFragment(aph paramaph)
  {
    g = paramaph;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((TextView)c(2131362674)).setText(2131493568);
    ((TextView)c(2131362675)).setText(2131493543);
    b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        RecoveryCodePasswordValidationFragment.a(RecoveryCodePasswordValidationFragment.this).add(Integer.valueOf(RecoveryCodePasswordValidationFragment.c(RecoveryCodePasswordValidationFragment.this).b(getActivity(), RecoveryCodePasswordValidationFragment.b(RecoveryCodePasswordValidationFragment.this).getText().toString())));
        RecoveryCodePasswordValidationFragment.d(RecoveryCodePasswordValidationFragment.this).setClickable(false);
        RecoveryCodePasswordValidationFragment.e(RecoveryCodePasswordValidationFragment.this).setText("");
        RecoveryCodePasswordValidationFragment.f(RecoveryCodePasswordValidationFragment.this).setVisibility(0);
      }
    });
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    g.b(1016, h);
    g.b(1023, h);
    f.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    g.a(1016, h);
    g.a(1023, h);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.RecoveryCodePasswordValidationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */