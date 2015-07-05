package com.snapchat.android.util.debug;

import ajv;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import azh;
import cgc;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class BugReportRemoteLogListFragment
  extends SnapchatFragment
{
  private static String[] i()
  {
    Object localObject1 = ajv.g();
    if (localObject1 == null) {
      return new String[0];
    }
    localObject1 = ((ajv)localObject1).o();
    Object localObject2 = new ArrayList();
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext()) {
      ((List)localObject2).add(((Friend)((Iterator)localObject1).next()).h());
    }
    Collections.sort((List)localObject2);
    localObject1 = new ArrayList();
    localObject2 = ((List)localObject2).iterator();
    int j;
    for (int i = 46; ((Iterator)localObject2).hasNext(); i = j)
    {
      String str = (String)((Iterator)localObject2).next();
      j = i;
      if (i != str.charAt(0))
      {
        char c = str.charAt(0);
        ((List)localObject1).add(Character.toUpperCase(c));
        j = c;
      }
      ((List)localObject1).add(str);
    }
    localObject2 = new String[((List)localObject1).size()];
    ((List)localObject1).toArray((Object[])localObject2);
    return (String[])localObject2;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @cgc ViewGroup paramViewGroup, @cgc Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130968593, paramViewGroup, false);
    mFragmentLayout = paramLayoutInflater;
    paramViewGroup = (ListView)c(2131361937);
    paramViewGroup.setAdapter(new azh(getActivity(), i()));
    paramViewGroup.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt).toString().length() == 1) {
          return;
        }
        if ((getActivity() instanceof BugReportRemoteLogListFragment.a))
        {
          paramAnonymousAdapterView = paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt).toString();
          ((BugReportRemoteLogListFragment.a)getActivity()).a(paramAnonymousAdapterView);
        }
        getActivity().mFragments.beginTransaction().remove(BugReportRemoteLogListFragment.this).addToBackStack("Chosen remote recipient").commit();
      }
    });
    return paramLayoutInflater;
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportRemoteLogListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */