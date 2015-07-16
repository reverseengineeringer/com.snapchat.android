package com.snapchat.android.model.chat;

import bbo;
import bca;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;
import java.util.Arrays;
import rj.b;

final class CashFeedItem$1
  implements rj.b
{
  CashFeedItem$1(CashFeedItem paramCashFeedItem, boolean paramBoolean, int paramInt1, int paramInt2) {}
  
  public final void a()
  {
    CashFeedItem.s();
    if (val$saved) {}
    for (String str = "SAVING";; str = "UNSAVING")
    {
      this$0.d();
      str = this$0.mSender;
      this$0.Z();
      CashFeedItemTable.a(SnapchatApplication.b(), Arrays.asList(new CashFeedItem[] { this$0 }));
      return;
    }
  }
  
  public final void a(int paramInt)
  {
    CashFeedItem.s();
    Object localObject;
    if (val$saved)
    {
      localObject = "SAVING";
      this$0.d();
      localObject = this$0.mSender;
      this$0.Z();
      if (athis$0).mSenderSaveVersion == val$modifiedVersion)
      {
        localObject = CashFeedItem.a(this$0);
        if (val$saved) {
          break label145;
        }
      }
    }
    label145:
    for (boolean bool = true;; bool = false)
    {
      mIsSavedBySender = bool;
      athis$0).mSenderSaveVersion = val$originalVersion;
      CashFeedItemTable.a(SnapchatApplication.b(), Arrays.asList(new CashFeedItem[] { this$0 }));
      bbo.a().a(new bca(this$0.Y(), this$0.d()));
      return;
      localObject = "UNSAVING";
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.model.chat.CashFeedItem.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */