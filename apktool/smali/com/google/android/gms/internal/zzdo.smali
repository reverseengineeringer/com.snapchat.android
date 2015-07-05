.class public final Lcom/google/android/gms/internal/zzdo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdo$zza;
    }
.end annotation


# instance fields
.field public final zzsK:I

.field public final zzsL:Lcom/google/android/gms/internal/zzdj;

.field public final zzsM:Lcom/google/android/gms/internal/zzds;

.field public final zzsN:Ljava/lang/String;

.field public final zzsO:Lcom/google/android/gms/internal/zzdm;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdo;-><init>(Lcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzds;Ljava/lang/String;Lcom/google/android/gms/internal/zzdm;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzds;Ljava/lang/String;Lcom/google/android/gms/internal/zzdm;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdo;->zzsL:Lcom/google/android/gms/internal/zzdj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdo;->zzsM:Lcom/google/android/gms/internal/zzds;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdo;->zzsN:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdo;->zzsO:Lcom/google/android/gms/internal/zzdm;

    iput p5, p0, Lcom/google/android/gms/internal/zzdo;->zzsK:I

    return-void
.end method
