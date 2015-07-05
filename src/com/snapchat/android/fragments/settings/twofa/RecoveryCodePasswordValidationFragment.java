package com.snapchat.android.fragments.settings.twofa;

import amk;
import amy;
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
import com.snapchat.android.fragments.settings.BasePasswordValidationFragment;
import java.util.HashSet;
import java.util.Set;

public class RecoveryCodePasswordValidationFragment
  extends BasePasswordValidationFragment
{
  private final Set<Integer> f = new HashSet();
  private final aol g;
  private aok h = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (RecoveryCodePasswordValidationFragment.a(RecoveryCodePasswordValidationFragment.this).contains(Integer.valueOf(i)))
      {
        RecoveryCodePasswordValidationFragment.a(RecoveryCodePasswordValidationFragment.this).remove(Integer.valueOf(i));
        if (!(paramAnonymousamk instanceof ana)) {
          break label60;
        }
        RecoveryCodePasswordValidationFragment.a(RecoveryCodePasswordValidationFragment.this, (ana)paramAnonymousamk);
      }
      label60:
      while (!(paramAnonymousamk instanceof amy)) {
        return;
      }
      RecoveryCodePasswordValidationFragment.a(RecoveryCodePasswordValidationFragment.this, (amy)paramAnonymousamk);
    }
  };
  
  public RecoveryCodePasswordValidationFragment()
  {
    this(aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private RecoveryCodePasswordValidationFragment(aol paramaol)
  {
    g = paramaol;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((TextView)c(2131362675)).setText(2131493570);
    ((TextView)c(2131362676)).setText(2131493545);
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