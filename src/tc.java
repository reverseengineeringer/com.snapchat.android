import com.snapchat.android.api2.cash.square.data.CardBrand;
import com.snapchat.android.api2.cash.square.data.CashCustomer;

public final class tc
  implements rd
{
  @chd
  private final tl mCardSummary;
  @chd
  private final CashCustomer mCashCustomer;
  @chc
  private final tm mCashCustomerStatus;
  
  public tc(@chc tm paramtm)
  {
    mCashCustomerStatus = paramtm;
    mCashCustomer = mCustomer;
    mCardSummary = mCardSummary;
  }
  
  public final boolean a()
  {
    return mCardSummary != null;
  }
  
  public final boolean b()
  {
    return mCashCustomerStatus.mPasswordConfirmationEnabled;
  }
  
  public final boolean c()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (mCashCustomerStatus != null)
    {
      bool1 = bool2;
      if (mCashCustomerStatus.mNumberOfPayments > 0) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  @chd
  public final CardBrand d()
  {
    if (mCardSummary != null) {
      return mCardSummary.mBrand;
    }
    return null;
  }
  
  @chd
  public final String e()
  {
    if (mCardSummary != null) {
      return mCardSummary.mPanSuffix;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     tc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */