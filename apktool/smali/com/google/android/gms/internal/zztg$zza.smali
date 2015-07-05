.class public Lcom/google/android/gms/internal/zztg$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field public final zzatR:Lcom/google/android/gms/internal/zztj;

.field public final zzatS:Lcom/google/android/gms/internal/zztf;

.field public final zzatT:Lcom/google/android/gms/internal/zzxf$zzd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztj;

    iput-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->zzatR:Lcom/google/android/gms/internal/zztj;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->zzatS:Lcom/google/android/gms/internal/zztf;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->zzatT:Lcom/google/android/gms/internal/zzxf$zzd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;Lcom/google/android/gms/internal/zztg$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zztg$zza;-><init>(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V

    return-void
.end method
