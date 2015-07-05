package com.snapchat.android;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentTransaction;
import ban;
import bdw;
import boh;
import com.snapchat.android.fragments.ScAcceptTermsFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

public class ScAcceptTermsActivity
  extends SnapchatActivity
{
  public void onBackPressed()
  {
    Object localObject = mFragments;
    int i = ((FragmentManager)localObject).getBackStackEntryCount();
    if (i > 0)
    {
      localObject = (SnapchatFragment)((FragmentManager)localObject).findFragmentByTag(((FragmentManager)localObject).getBackStackEntryAt(i - 1).getName());
      if ((localObject != null) && (((SnapchatFragment)localObject).g())) {
        return;
      }
    }
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968718);
    paramBundle = mFragments;
    if (paramBundle.findFragmentById(2131362591) == null)
    {
      ScAcceptTermsFragment localScAcceptTermsFragment = new ScAcceptTermsFragment();
      paramBundle.beginTransaction().add(2131362591, localScAcceptTermsFragment, "ScAcceptTermsFragment").addToBackStack("ScAcceptTermsFragment").commit();
    }
  }
  
  public void onPause()
  {
    super.onPause();
    ban.a().b(this);
  }
  
  public void onResume()
  {
    super.onResume();
    ban.a().c(this);
  }
  
  @boh
  public void onStartFragmentEvent(bdw parambdw)
  {
    parambdw = mFragmentToStart;
    String str = parambdw.toString();
    FragmentTransaction localFragmentTransaction = mFragments.beginTransaction();
    localFragmentTransaction.add(2131362591, parambdw, str);
    localFragmentTransaction.addToBackStack(null);
    localFragmentTransaction.commit();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ScAcceptTermsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */