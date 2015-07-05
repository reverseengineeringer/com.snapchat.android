package com.snapchat.android.model.chat;

import ban;
import baz;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;
import java.util.Arrays;
import qt.b;

final class CashFeedItem$2
  implements qt.b
{
  CashFeedItem$2(CashFeedItem paramCashFeedItem, boolean paramBoolean, int paramInt1, int paramInt2) {}
  
  public final void a()
  {
    String str2 = CashFeedItem.o();
    if (val$saved) {}
    for (String str1 = "SAVING";; str1 = "UNSAVING")
    {
      Timber.b(str2, "CASH-LOG: SUCCEEDED %s cash id[%s] sender[%s] recipient[%s]", new Object[] { str1, this$0.d(), this$0.mSender, this$0.Y() });
      CashFeedItemTable.a(SnapchatApplication.b(), Arrays.asList(new CashFeedItem[] { this$0 }));
      return;
    }
  }
  
  public final void a(int paramInt)
  {
    String str = CashFeedItem.o();
    Object localObject;
    if (val$saved)
    {
      localObject = "SAVING";
      Timber.b(str, "CASH-LOG: FAILED %s cash id[%s] sender[%s] recipient[%s] statusCode[%d]", new Object[] { localObject, this$0.d(), this$0.mSender, this$0.Y(), Integer.valueOf(paramInt) });
      if (athis$0).mRecipientSaveVersion == val$modifiedVersion)
      {
        localObject = CashFeedItem.a(this$0);
        if (val$saved) {
          break label174;
        }
      }
    }
    label174:
    for (boolean bool = true;; bool = false)
    {
      mIsSavedByRecipient = bool;
      athis$0).mRecipientSaveVersion = val$originalVersion;
      CashFeedItemTable.a(SnapchatApplication.b(), Arrays.asList(new CashFeedItem[] { this$0 }));
      ban.a().a(new baz(this$0.X(), this$0.d()));
      return;
      localObject = "UNSAVING";
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.model.chat.CashFeedItem.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */