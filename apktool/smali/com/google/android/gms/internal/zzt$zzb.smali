.class Lcom/google/android/gms/internal/zzt$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field public final zzlM:Ljava/lang/String;

.field public final zzlN:Landroid/content/Context;

.field public final zzlO:Lcom/google/android/gms/internal/zzk;

.field public final zzlP:Lcom/google/android/gms/internal/zzhy;

.field public zzlQ:Lcom/google/android/gms/internal/zzhl;

.field public zzlR:Lcom/google/android/gms/internal/zzbg;

.field public zzlS:Lcom/google/android/gms/internal/zzt$zza;

.field public zzlT:Lcom/google/android/gms/internal/zzbh;

.field public zzlU:Lcom/google/android/gms/internal/zzhl;

.field public zzlV:Lcom/google/android/gms/internal/zzba;

.field public zzlW:Lcom/google/android/gms/internal/zzhe;

.field public zzlX:Lcom/google/android/gms/internal/zzhe$zza;

.field public zzlY:Lcom/google/android/gms/internal/zzhf;

.field public zzlZ:Lcom/google/android/gms/internal/zzbk;

.field public zzma:Lcom/google/android/gms/internal/zzfs;

.field public zzmb:Lcom/google/android/gms/internal/zzfo;

.field public zzmc:Lcom/google/android/gms/internal/zzcq;

.field public zzmd:Lcom/google/android/gms/internal/zzcr;

.field public zzme:Lcom/google/android/gms/internal/zzcj;

.field public zzmf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzmg:Lcom/google/android/gms/internal/zzfl;

.field public zzmh:Lcom/google/android/gms/internal/zzhj;

.field public zzmi:Landroid/view/View;

.field public zzmj:I

.field public zzmk:Z

.field public zzml:Z

.field public zzmm:Lcom/google/android/gms/internal/zzbl;

.field private zzmn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzhf;",
            ">;"
        }
    .end annotation
.end field

.field private zzmo:I

.field private zzmp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzhy;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzt$zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzhy;Lcom/google/android/gms/internal/zzk;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzhy;Lcom/google/android/gms/internal/zzk;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmh:Lcom/google/android/gms/internal/zzhj;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmi:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmj:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzml:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmn:Ljava/util/HashSet;

    iput v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmo:I

    iput v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmp:I

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzba;->zzpb:Z

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    :goto_0
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaM()Lcom/google/android/gms/internal/zzho;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/internal/zzho;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlV:Lcom/google/android/gms/internal/zzba;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlM:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlN:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlP:Lcom/google/android/gms/internal/zzhy;

    if-eqz p5, :cond_2

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlO:Lcom/google/android/gms/internal/zzk;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzt$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzt$zza;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    iget v1, p2, Lcom/google/android/gms/internal/zzba;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzt$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    iget v1, p2, Lcom/google/android/gms/internal/zzba;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzt$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzt$zza;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance p5, Lcom/google/android/gms/internal/zzk;

    new-instance v0, Lcom/google/android/gms/internal/zzw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzw;-><init>(Lcom/google/android/gms/internal/zzt$zzb;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/zzk;-><init>(Lcom/google/android/gms/internal/zzg;)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlT:Lcom/google/android/gms/internal/zzbh;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlZ:Lcom/google/android/gms/internal/zzbk;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzma:Lcom/google/android/gms/internal/zzfs;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmb:Lcom/google/android/gms/internal/zzfo;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzme:Lcom/google/android/gms/internal/zzcj;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmm:Lcom/google/android/gms/internal/zzbl;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlN:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlN:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaO()Lcom/google/android/gms/internal/zzhp;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlN:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/internal/zzhp;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzt$zzb;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzt$zza;->removeAllViews()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzt$zzb;->zzay()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzt$zzb;->zzaA()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzid;->zzba()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlS:Lcom/google/android/gms/internal/zzt$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzt$zza;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlN:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzhw;->zzc(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlN:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzhw;->zzc(Landroid/content/Context;I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmo:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmp:I

    if-eq v0, v2, :cond_0

    :cond_2
    iput v1, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmo:I

    iput v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmo:I

    iget v2, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmp:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzid;->zzb(II)V

    goto :goto_0
.end method

.method public zza(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzhf;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmn:Ljava/util/HashSet;

    return-void
.end method

.method public zzaA()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzsM:Lcom/google/android/gms/internal/zzds;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzsM:Lcom/google/android/gms/internal/zzds;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzds;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzax()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzhf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmn:Ljava/util/HashSet;

    return-object v0
.end method

.method public zzay()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->destroy()V

    :cond_0
    return-void
.end method

.method public zzaz()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->stopLoading()V

    :cond_0
    return-void
.end method

.method public zzf(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzmj:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzt$zzb;->zzaz()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlQ:Lcom/google/android/gms/internal/zzhl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlQ:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhl;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlU:Lcom/google/android/gms/internal/zzhl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlU:Lcom/google/android/gms/internal/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhl;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    :cond_3
    return-void
.end method
