import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

final class bpk$a<M>
  extends WeakReference<M>
{
  final bpk a;
  
  public bpk$a(bpk parambpk, M paramM, ReferenceQueue<? super M> paramReferenceQueue)
  {
    super(paramM, paramReferenceQueue);
    a = parambpk;
  }
}

/* Location:
 * Qualified Name:     bpk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */