package in.srain.cube.views.ptr;

final class PtrClassicDefaultHeader$a
  implements Runnable
{
  private boolean b = false;
  
  private PtrClassicDefaultHeader$a(PtrClassicDefaultHeader paramPtrClassicDefaultHeader) {}
  
  public final void run()
  {
    PtrClassicDefaultHeader.b(a);
    if (b) {
      a.postDelayed(this, 1000L);
    }
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.PtrClassicDefaultHeader.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */