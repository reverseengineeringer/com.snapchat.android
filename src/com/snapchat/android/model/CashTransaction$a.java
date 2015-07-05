package com.snapchat.android.model;

import aud;
import bhc;
import com.snapchat.android.util.CashUtils.CurrencyCode;
import java.util.UUID;

public final class CashTransaction$a
{
  private int mAmount;
  public String mCashRecipientId;
  public String mCashSenderId;
  public long mCreatedAt;
  public CashUtils.CurrencyCode mCurrencyCode;
  public boolean mFromRain;
  public String mId;
  public boolean mIsFromServer;
  public String mMessage;
  public String mProvider;
  private String mRecipient;
  private String mSender;
  public CashTransaction.TransactionStatus mStatus;
  public long mUpdatedAt;
  
  public CashTransaction$a(String paramString1, String paramString2, int paramInt)
  {
    mSender = paramString1;
    mRecipient = paramString2;
    mAmount = paramInt;
    mCurrencyCode = CashUtils.CurrencyCode.USD;
    mCreatedAt = System.currentTimeMillis();
    mUpdatedAt = mCreatedAt;
    mStatus = CashTransaction.TransactionStatus.INITIATED;
  }
  
  public static CashTransaction a(bhc parambhc)
  {
    Object localObject = new a(parambhc.c(), parambhc.e(), aud.a(parambhc.f()));
    mId = parambhc.a();
    mCashSenderId = parambhc.b();
    mCashRecipientId = parambhc.d();
    mCurrencyCode = CashUtils.CurrencyCode.valueOf(parambhc.g());
    mMessage = parambhc.h();
    mCreatedAt = aud.a(parambhc.i());
    mUpdatedAt = aud.a(parambhc.j());
    mProvider = parambhc.s();
    mIsFromServer = true;
    mFromRain = aud.a(parambhc.r());
    int i = aud.a(parambhc.k());
    if ((i >= 0) && (i < CashTransaction.TransactionStatus.values().length)) {
      mStatus = CashTransaction.TransactionStatus.values()[i];
    }
    localObject = ((a)localObject).a();
    CashTransaction.c((CashTransaction)localObject, aud.a(parambhc.l()));
    CashTransaction.d((CashTransaction)localObject, aud.a(parambhc.m()));
    CashTransaction.e((CashTransaction)localObject, aud.a(parambhc.n()));
    CashTransaction.a((CashTransaction)localObject, aud.a(parambhc.o()));
    CashTransaction.f((CashTransaction)localObject, aud.a(parambhc.p()));
    CashTransaction.b((CashTransaction)localObject, aud.a(parambhc.q()));
    return (CashTransaction)localObject;
  }
  
  public final CashTransaction a()
  {
    CashTransaction localCashTransaction = new CashTransaction(mSender, mRecipient, mAmount, (byte)0);
    if (mId == null)
    {
      mId = UUID.randomUUID().toString();
      mIsInFlight = true;
    }
    mTransactionId = mId;
    CashTransaction.a(localCashTransaction, mCashSenderId);
    CashTransaction.b(localCashTransaction, mCashRecipientId);
    CashTransaction.c(localCashTransaction, mMessage);
    CashTransaction.a(localCashTransaction, mCurrencyCode);
    CashTransaction.a(localCashTransaction, mFromRain);
    CashTransaction.a(localCashTransaction, mCreatedAt);
    CashTransaction.b(localCashTransaction, mUpdatedAt);
    CashTransaction.c(localCashTransaction);
    CashTransaction.a(localCashTransaction, mStatus);
    CashTransaction.d(localCashTransaction, mProvider);
    CashTransaction.b(localCashTransaction, mIsFromServer);
    return localCashTransaction;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.model.CashTransaction.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */