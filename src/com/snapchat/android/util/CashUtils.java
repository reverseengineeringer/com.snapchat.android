package com.snapchat.android.util;

import akr;
import android.text.TextUtils;
import ayg;
import chc;
import chd;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;

public final class CashUtils
{
  private static final String TAG = "CashUtils";
  
  @chd
  public static CashFeedItem a(@chc ChatConversation paramChatConversation, @chd CashFeedItem paramCashFeedItem1, @chd CashFeedItem paramCashFeedItem2)
  {
    CashTransaction localCashTransaction;
    int i;
    if (paramCashFeedItem2 != null)
    {
      localCashTransaction = mCashTransaction;
      if (paramCashFeedItem1 != null) {
        if (!mSendReceiveStatus.equals(mSendReceiveStatus))
        {
          i = 1;
          if (i != 0) {
            break label271;
          }
          paramChatConversation = null;
        }
      }
    }
    label271:
    do
    {
      return paramChatConversation;
      if (!TextUtils.equals(mIterToken, mIterToken))
      {
        i = 1;
        break;
      }
      paramChatConversation = mCashTransaction;
      if (mCashTransaction.mIsInFlight != mIsInFlight)
      {
        i = 1;
        break;
      }
      if (!mCashTransaction.mTransactionStatus.equals(mTransactionStatus))
      {
        i = 1;
        break;
      }
      if ((mCashTransaction.mRecipientSaveVersion != mRecipientSaveVersion) || (mCashTransaction.mIsSavedByRecipient != mIsSavedByRecipient))
      {
        i = 1;
        break;
      }
      if (mCashTransaction.mIsViewedByRecipient != mIsViewedByRecipient)
      {
        i = 1;
        break;
      }
      if ((mCashTransaction.mSenderSaveVersion != mSenderSaveVersion) || (mCashTransaction.mIsSavedBySender != mIsSavedBySender))
      {
        i = 1;
        break;
      }
      if (mCashTransaction.mIsViewedBySender != mIsViewedBySender)
      {
        i = 1;
        break;
      }
      if (mCashTransaction.mUpdatedTimestamp != mUpdatedTimestamp)
      {
        i = 1;
        break;
      }
      if (mCashTransaction.mCreatedTimestamp != mCreatedTimestamp)
      {
        i = 1;
        break;
      }
      if (mCashTransaction.mIsFromServer != mIsFromServer)
      {
        i = 1;
        break;
      }
      i = 0;
      break;
      paramCashFeedItem1.d();
      paramChatConversation = mCashTransaction;
      if (mTransactionStatus.equals(mTransactionStatus)) {
        if (ayg.a(paramCashFeedItem1)) {
          paramChatConversation.b(localCashTransaction);
        }
      }
      for (;;)
      {
        mSendReceiveStatus = mSendReceiveStatus;
        mIsInFlight = mIsInFlight;
        mIsFromServer = mIsFromServer;
        mCreatedTimestamp = mCreatedTimestamp;
        mUpdatedTimestamp = mUpdatedTimestamp;
        paramChatConversation = paramCashFeedItem1;
        if (paramCashFeedItem2.l() == null) {
          break;
        }
        mIterToken = paramCashFeedItem2.l();
        return paramCashFeedItem1;
        paramChatConversation.a(localCashTransaction);
        continue;
        paramChatConversation.a(mTransactionStatus);
        paramChatConversation.a(localCashTransaction);
        paramChatConversation.b(localCashTransaction);
      }
      paramChatConversation.a(paramCashFeedItem2);
      return paramCashFeedItem2;
      if (paramCashFeedItem1 == null) {
        break label483;
      }
      paramCashFeedItem1.d();
      paramCashFeedItem2 = mCashTransaction;
      paramChatConversation = paramCashFeedItem1;
    } while (mTransactionStatus.equals(CashTransaction.TransactionStatus.INITIATED));
    if (mTransactionStatus.equals(CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT)) {
      paramCashFeedItem2.a(CashTransaction.TransactionStatus.COMPLETED);
    }
    mIsViewedByRecipient = true;
    mIsSavedByRecipient = false;
    mIsViewedBySender = true;
    mIsSavedBySender = false;
    return paramCashFeedItem1;
    label483:
    return null;
  }
  
  public static String a(int paramInt)
  {
    if (paramInt % 100 == 0) {
      return String.format("%d", new Object[] { Integer.valueOf(paramInt / 100) });
    }
    return String.format("%.2f", new Object[] { Float.valueOf(paramInt / 100.0F) });
  }
  
  public static boolean a(ScCashResponsePayload.Status paramStatus)
  {
    return (paramStatus != ScCashResponsePayload.Status.NON_US_USER) && (paramStatus != ScCashResponsePayload.Status.UNDER_AGE_LIMIT) && (paramStatus != ScCashResponsePayload.Status.LOCKED_ACCOUNT) && (paramStatus != ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT);
  }
  
  public static boolean a(@chd Friend paramFriend)
  {
    return (paramFriend != null) && (akr.an()) && (a(akr.ap())) && (a(paramFriend.r()));
  }
  
  public static boolean a(@chc String paramString, @chc CashFeedItem paramCashFeedItem)
  {
    if (!TextUtils.equals(paramString, mSender)) {}
    do
    {
      return false;
      paramString = mCashTransaction.mTransactionStatus;
    } while ((paramString != CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT) && (paramString != CashTransaction.TransactionStatus.COMPLETED));
    return true;
  }
  
  public static enum CurrencyCode
  {
    USD;
    
    private CurrencyCode() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.CashUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */