import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public final class eq$b
  implements Externalizable
{
  private boolean A;
  private boolean B;
  private boolean C;
  private boolean D;
  private boolean E;
  private boolean F;
  private boolean G;
  private boolean H;
  private eq.d I = null;
  private boolean J;
  private boolean K;
  private eq.d L = null;
  private boolean M;
  private eq.d N = null;
  private boolean O;
  private eq.d P = null;
  private boolean Q;
  private eq.d R = null;
  private boolean S;
  private String T = "";
  private boolean U;
  private boolean V;
  private boolean W;
  private String X = "";
  private boolean Y;
  private boolean Z;
  eq.d a = null;
  private boolean aa;
  private boolean ab;
  private boolean ac;
  private boolean ad = false;
  private boolean ae;
  private boolean af = false;
  private boolean ag;
  private boolean ah = false;
  eq.d b = null;
  eq.d c = null;
  eq.d d = null;
  eq.d e = null;
  eq.d f = null;
  eq.d g = null;
  eq.d h = null;
  eq.d i = null;
  eq.d j = null;
  eq.d k = null;
  int l = 0;
  String m = "";
  String n = "";
  boolean o;
  String p = "";
  String q = "";
  String r = "";
  boolean s = false;
  List<eq.a> t = new ArrayList();
  List<eq.a> u = new ArrayList();
  boolean v;
  String w = "";
  private boolean x;
  private boolean y;
  private boolean z;
  
  public final void readExternal(ObjectInput paramObjectInput)
  {
    int i2 = 0;
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      x = true;
      a = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      y = true;
      b = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      z = true;
      c = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      A = true;
      d = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      B = true;
      e = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      C = true;
      f = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      D = true;
      g = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      E = true;
      h = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      F = true;
      i = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      G = true;
      j = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      H = true;
      I = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      J = true;
      k = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      K = true;
      L = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      M = true;
      N = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      O = true;
      P = ((eq.d)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new eq.d();
      ((eq.d)localObject).readExternal(paramObjectInput);
      Q = true;
      R = ((eq.d)localObject);
    }
    Object localObject = paramObjectInput.readUTF();
    S = true;
    T = ((String)localObject);
    int i1 = paramObjectInput.readInt();
    U = true;
    l = i1;
    localObject = paramObjectInput.readUTF();
    V = true;
    m = ((String)localObject);
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      W = true;
      X = ((String)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      Y = true;
      n = ((String)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      o = true;
      p = ((String)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      Z = true;
      q = ((String)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      aa = true;
      r = ((String)localObject);
    }
    boolean bool = paramObjectInput.readBoolean();
    ab = true;
    s = bool;
    int i3 = paramObjectInput.readInt();
    i1 = 0;
    while (i1 < i3)
    {
      localObject = new eq.a();
      ((eq.a)localObject).readExternal(paramObjectInput);
      t.add(localObject);
      i1 += 1;
    }
    i3 = paramObjectInput.readInt();
    i1 = i2;
    while (i1 < i3)
    {
      localObject = new eq.a();
      ((eq.a)localObject).readExternal(paramObjectInput);
      u.add(localObject);
      i1 += 1;
    }
    bool = paramObjectInput.readBoolean();
    ac = true;
    ad = bool;
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      v = true;
      w = ((String)localObject);
    }
    bool = paramObjectInput.readBoolean();
    ae = true;
    af = bool;
    bool = paramObjectInput.readBoolean();
    ag = true;
    ah = bool;
  }
  
  public final void writeExternal(ObjectOutput paramObjectOutput)
  {
    int i2 = 0;
    paramObjectOutput.writeBoolean(x);
    if (x) {
      a.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(y);
    if (y) {
      b.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(z);
    if (z) {
      c.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(A);
    if (A) {
      d.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(B);
    if (B) {
      e.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(C);
    if (C) {
      f.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(D);
    if (D) {
      g.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(E);
    if (E) {
      h.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(F);
    if (F) {
      i.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(G);
    if (G) {
      j.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(H);
    if (H) {
      I.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(J);
    if (J) {
      k.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(K);
    if (K) {
      L.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(M);
    if (M) {
      N.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(O);
    if (O) {
      P.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeBoolean(Q);
    if (Q) {
      R.writeExternal(paramObjectOutput);
    }
    paramObjectOutput.writeUTF(T);
    paramObjectOutput.writeInt(l);
    paramObjectOutput.writeUTF(m);
    paramObjectOutput.writeBoolean(W);
    if (W) {
      paramObjectOutput.writeUTF(X);
    }
    paramObjectOutput.writeBoolean(Y);
    if (Y) {
      paramObjectOutput.writeUTF(n);
    }
    paramObjectOutput.writeBoolean(o);
    if (o) {
      paramObjectOutput.writeUTF(p);
    }
    paramObjectOutput.writeBoolean(Z);
    if (Z) {
      paramObjectOutput.writeUTF(q);
    }
    paramObjectOutput.writeBoolean(aa);
    if (aa) {
      paramObjectOutput.writeUTF(r);
    }
    paramObjectOutput.writeBoolean(s);
    int i3 = t.size();
    paramObjectOutput.writeInt(i3);
    int i1 = 0;
    while (i1 < i3)
    {
      ((eq.a)t.get(i1)).writeExternal(paramObjectOutput);
      i1 += 1;
    }
    i3 = u.size();
    paramObjectOutput.writeInt(i3);
    i1 = i2;
    while (i1 < i3)
    {
      ((eq.a)u.get(i1)).writeExternal(paramObjectOutput);
      i1 += 1;
    }
    paramObjectOutput.writeBoolean(ad);
    paramObjectOutput.writeBoolean(v);
    if (v) {
      paramObjectOutput.writeUTF(w);
    }
    paramObjectOutput.writeBoolean(af);
    paramObjectOutput.writeBoolean(ah);
  }
}

/* Location:
 * Qualified Name:     eq.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */