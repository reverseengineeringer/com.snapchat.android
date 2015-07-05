package com.snapchat.android.fragments.settings.password;

import amk;
import ana;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import aok;
import aol;
import atx;
import com.snapchat.android.fragments.settings.BasePasswordValidationFragment;
import java.util.HashSet;
import java.util.Set;

public class PasswordValidationFragment
  extends BasePasswordValidationFragment
{
  private final aol f;
  private final Set<Integer> g = new HashSet();
  private aok h = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (PasswordValidationFragment.a(PasswordValidationFragment.this).contains(Integer.valueOf(i)))
      {
        PasswordValidationFragment.a(PasswordValidationFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousamk instanceof ana)) {
          PasswordValidationFragment.a(PasswordValidationFragment.this, (ana)paramAnonymousamk);
        }
      }
    }
  };
  
  public PasswordValidationFragment()
  {
    this(aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private PasswordValidationFragment(aol paramaol)
  {
    f = paramaol;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((TextView)c(2131362675)).setText(atx.a(null, 2131493461, new Object[0]));
    ((TextView)c(2131362676)).setText(atx.a(null, 2131493276, new Object[0]));
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