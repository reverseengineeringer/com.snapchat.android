.class public final Lcom/google/android/gms/internal/zzfh;
.super Lcom/google/android/gms/internal/zzfr$zza;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field zzuY:Lcom/google/android/gms/internal/zzfc;

.field private zzvf:Ljava/lang/String;

.field private zzvj:Lcom/google/android/gms/internal/zzfg;

.field private zzvp:Z

.field private zzvq:I

.field private zzvr:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/zzfg;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfr$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfh;->zzvp:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfh;->zzvf:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzfh;->zzvq:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfh;->zzvr:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzfh;->zzvp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzfh;->zzvj:Lcom/google/android/gms/internal/zzfg;

    return-void
.end method


# virtual methods
.method public final finishPurchase()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh;->zzvr:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfj;->zzd(Landroid/content/Intent;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzfh;->zzvq:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzfc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzuY:Lcom/google/android/gms/internal/zzfc;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/internal/zzlo;->zzka()Lcom/google/android/gms/internal/zzlo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzvf:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzvr:Landroid/content/Intent;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfh;->zzvq:I

    return v0
.end method

.method public final isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfh;->zzvp:Z

    return v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "In-app billing service connected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzfc;->zzx(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh;->zzvr:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfj;->zze(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzfj;->zzM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh;->zzuY:Lcom/google/android/gms/internal/zzfc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzfc;->zzg(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfi;->zzm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzfi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh;->zzvj:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfi;->zza(Lcom/google/android/gms/internal/zzfg;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzlo;->zzka()Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfc;->destroy()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfc;->destroy()V

    return-void
.end method
