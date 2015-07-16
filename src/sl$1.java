import java.util.List;

final class sl$1
  implements rl.a
{
  sl$1(sl paramsl) {}
  
  public final void a(@chc rl paramrl)
  {
    sl.c(this$0);
  }
  
  public final void a(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      sl.a(new ti.a()
      {
        public final void a()
        {
          this$0.a(null, true);
        }
        
        public final void a(int paramAnonymousInt)
        {
          if ((paramAnonymousInt == 401) && (!sl.a(this$0)))
          {
            sl.b(this$0);
            this$0.mCashAuthManager.a(null);
            this$0.a(null);
            return;
          }
          this$0.b(null, false);
        }
      }).execute();
      return;
    }
    this$0.b(null, false);
  }
  
  public final void b(@chc rl paramrl)
  {
    sl.d(this$0);
  }
  
  public final void b(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    this$0.b(null, false);
  }
}

/* Location:
 * Qualified Name:     sl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */