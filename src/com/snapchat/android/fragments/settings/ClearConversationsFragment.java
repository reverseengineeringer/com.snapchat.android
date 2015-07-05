package com.snapchat.android.fragments.settings;

import agm;
import akc;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import atw;
import ben;
import bgp;
import boh;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.Iterator;
import java.util.List;
import tc;
import tc.a;

public class ClearConversationsFragment
  extends SnapchatFragment
  implements tc.a
{
  private atw<ChatConversation> a;
  private BaseAdapter b;
  private TextView c;
  private ProgressBar d;
  private TextView e;
  
  private void a(boolean paramBoolean)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext()) {
        nextmBeingCleared = paramBoolean;
      }
    }
  }
  
  public final void a()
  {
    akc localakc = akc.b();
    synchronized (mConversations)
    {
      Iterator localIterator = mConversations.iterator();
      while (localIterator.hasNext())
      {
        ChatConversation localChatConversation = (ChatConversation)localIterator.next();
        if (mBeingCleared)
        {
          localChatConversation.s();
          localIterator.remove();
        }
      }
    }
    mIterToken = null;
    ((akc)localObject).d();
    ((akc)localObject).f();
    if (isAdded()) {
      bgp.a(new Runnable()
      {
        public final void run()
        {
          synchronized (ClearConversationsFragment.e(ClearConversationsFragment.this))
          {
            ClearConversationsFragment.b(ClearConversationsFragment.this).setVisibility(8);
            return;
          }
        }
      });
    }
  }
  
  public View onCreateView(LayoutInflater arg1, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = ???.inflate(2130968631, paramViewGroup, false);
    a = bmConversationsForListView;
    b = agm.a(getActivity(), a);
    ((ListView)c(2131362136)).setAdapter(b);
    c(2131362133).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    d = ((ProgressBar)c(2131362135));
    e = ((TextView)c(2131362137));
    c = ((TextView)c(2131362134));
    c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new AlertDialog.Builder(getActivity());
        paramAnonymousView.setTitle(getString(2131493413)).setMessage(getString(2131493414)).setPositiveButton(getString(2131493269), new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            AlertDialogUtils.a(getString(2131493420), getActivity());
            ClearConversationsFragment.a(ClearConversationsFragment.this).setVisibility(8);
            ClearConversationsFragment.b(ClearConversationsFragment.this).setVisibility(0);
            AnalyticsEvents.K();
            AnalyticsEvents.L();
            ClearConversationsFragment.c(ClearConversationsFragment.this);
            new tc(ClearConversationsFragment.this).f();
            ClearConversationsFragment.d(ClearConversationsFragment.this).notifyDataSetChanged();
          }
        }).setNegativeButton(getString(2131492952), null);
        paramAnonymousView.create().show();
      }
    });
    synchronized (a)
    {
      if (a.isEmpty())
      {
        c.setVisibility(8);
        e.setVisibility(0);
      }
      return mFragmentLayout;
    }
  }
  
  @boh
  public void onUpdateFeedEvent(ben arg1)
  {
    for (;;)
    {
      synchronized (a)
      {
        synchronized (a)
        {
          a.clear();
          a.addAll(akc.b().e());
          b.notifyDataSetChanged();
          if (a.isEmpty())
          {
            c.setVisibility(8);
            e.setVisibility(0);
            return;
          }
        }
      }
      c.setVisibility(0);
      e.setVisibility(8);
    }
  }
  
  public final void w_()
  {
    a(false);
    if (isAdded()) {
      bgp.a(new Runnable()
      {
        public final void run()
        {
          ClearConversationsFragment.a(ClearConversationsFragment.this).setEnabled(true);
          ClearConversationsFragment.b(ClearConversationsFragment.this).setVisibility(8);
          AlertDialogUtils.a(getString(2131493418), getActivity());
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.ClearConversationsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */