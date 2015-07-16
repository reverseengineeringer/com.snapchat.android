import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.fragments.cash.SecurityCodeFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public final class rz
  extends rl
{
  private static final String TAG = "SQConfirmBlocker";
  @Inject
  protected qw mCashErrorReporter;
  @SerializedName("requires_passcode")
  protected boolean mRequiresPasscode;
  @Inject
  protected td mSquareProvider;
  
  public rz()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  protected static sq a(@chc String paramString1, @chd String paramString2, @chc sx.a parama)
  {
    return new sq(paramString1, paramString2, parama);
  }
  
  public final void a(@chc final CashTransaction paramCashTransaction)
  {
    final Object localObject = mTransactionId;
    localObject = mRecipientUsername;
    paramCashTransaction.a();
    if (mRequiresPasscode) {}
    for (localObject = mSecurityCode; (mRequiresPasscode) && (TextUtils.isEmpty((CharSequence)localObject)); localObject = null)
    {
      localObject = new SecurityCodeFragment();
      b = new SecurityCodeFragment.a()
      {
        public final void a()
        {
          rz.f(rz.this);
        }
        
        public final void a(@chc String paramAnonymousString)
        {
          paramCashTransactionmSecurityCode = paramAnonymousString;
          rz.a(paramCashTransactionmTransactionId, paramAnonymousString, new sx.a()
          {
            public final void a(@chd sy paramAnonymous2sy)
            {
              Object localObject1 = val$transaction.mTransactionId;
              val$fragment.l();
              Object localObject2 = null;
              CashTransaction.TransactionStatus localTransactionStatus = null;
              if (paramAnonymous2sy != null)
              {
                localObject1 = localTransactionStatus;
                if (blockers != null)
                {
                  localObject1 = localTransactionStatus;
                  if (blockers.a()) {
                    localObject1 = blockers.b();
                  }
                }
                paramAnonymous2sy = payment;
                localObject2 = localObject1;
                if (paramAnonymous2sy != null)
                {
                  localTransactionStatus = td.a(mState, mCancellationReason);
                  val$transaction.a(localTransactionStatus);
                  localObject2 = localObject1;
                  if (mState == CashPayment.State.CANCELED)
                  {
                    td.a(mCancellationReason);
                    if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
                    {
                      rz.d(rz.this);
                      return;
                    }
                    rz.e(rz.this);
                    return;
                  }
                }
              }
              rz.c(rz.this, (List)localObject2);
            }
            
            public final void a(@chd sy paramAnonymous2sy, int paramAnonymous2Int)
            {
              Object localObject = val$transaction.mTransactionId;
              localObject = td.a(rz.this, paramAnonymous2Int);
              if (localObject != null)
              {
                rz.d(rz.this, (List)localObject);
                return;
              }
              if (paramAnonymous2sy != null) {}
              for (paramAnonymous2sy = type;; paramAnonymous2sy = null)
              {
                val$transaction.mSecurityCode = null;
                val$fragment.a(paramAnonymous2sy, paramAnonymous2Int);
                return;
              }
            }
          }).execute();
        }
        
        public final void b()
        {
          rz.e(rz.this, Arrays.asList(new rl[] { new sj() }));
        }
      };
      bbo.a().a(new bev((SnapchatFragment)localObject));
      return;
    }
    a(mTransactionId, (String)localObject, new sx.a()
    {
      public final void a(@chd sy paramAnonymoussy)
      {
        Object localObject1 = paramCashTransactionmTransactionId;
        Object localObject2;
        boolean bool1;
        if (paramAnonymoussy != null)
        {
          if ((blockers == null) || (!blockers.a())) {
            break label183;
          }
          localObject1 = blockers.b();
          localObject2 = ((List)localObject1).iterator();
          while (((Iterator)localObject2).hasNext()) {
            if (!((rl)((Iterator)localObject2).next()).d()) {
              bool1 = false;
            }
          }
        }
        for (;;)
        {
          localObject2 = payment;
          boolean bool2 = bool1;
          paramAnonymoussy = (sy)localObject1;
          if (localObject2 != null)
          {
            CashTransaction.TransactionStatus localTransactionStatus = td.a(mState, mCancellationReason);
            paramCashTransaction.a(localTransactionStatus);
            bool2 = bool1;
            paramAnonymoussy = (sy)localObject1;
            if (mState == CashPayment.State.CANCELED)
            {
              td.a(mCancellationReason);
              if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
              {
                rz.a(rz.this);
                return;
              }
              rz.b(rz.this);
              return;
              paramAnonymoussy = null;
              bool2 = true;
            }
          }
          rz.a(rz.this, paramAnonymoussy, bool2);
          return;
          bool1 = true;
          continue;
          label183:
          localObject1 = null;
          bool1 = true;
        }
      }
      
      public final void a(@chd sy paramAnonymoussy, int paramAnonymousInt)
      {
        ErrorType localErrorType = null;
        Object localObject = paramCashTransactionmTransactionId;
        localObject = td.a(rz.this, paramAnonymousInt);
        if (localObject != null)
        {
          rz.a(rz.this, (List)localObject);
          return;
        }
        paramCashTransactionmSecurityCode = null;
        if (paramAnonymoussy != null) {
          localErrorType = type;
        }
        if (ErrorType.isNonRecoverableError(localErrorType))
        {
          rz.b(rz.this, Arrays.asList(new rl[] { new sj() }));
          return;
        }
        AnalyticsEvents.a("SQUARE_SECURITY_CODE_VERIFICATION_FAILED", paramAnonymousInt);
        qw.a(2131493290, new Object[0]);
        rz.c(rz.this);
      }
    }).execute();
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_CONFIRM_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */