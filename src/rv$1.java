import java.util.List;

final class rv$1
  implements qv.a
{
  rv$1(rv paramrv) {}
  
  public final void a(@cgb qv paramqv)
  {
    rv.c(this$0);
  }
  
  public final void a(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      rv.a(new ss.a()
      {
        public final void a()
        {
          this$0.a(null, true);
        }
        
        public final void a(int paramAnonymousInt)
        {
          if ((paramAnonymousInt == 401) && (!rv.a(this$0)))
          {
            rv.b(this$0);
            this$0.mCashAuthManager.a(null);
            this$0.a(null);
            return;
          }
          this$0.b(null, false);
        }
      }).f();
      return;
    }
    this$0.b(null, false);
  }
  
  public final void b(@cgb qv paramqv)
  {
    rv.d(this$0);
  }
  
  public final void b(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    this$0.b(null, false);
  }
}

/* Location:
 * Qualified Name:     rv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */