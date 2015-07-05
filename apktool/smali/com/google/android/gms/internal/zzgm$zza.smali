.class public final Lcom/google/android/gms/internal/zzgm$zza;
.super Lcom/google/android/gms/internal/zzgm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzgm;-><init>(Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgm$zza;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzdJ()V
    .locals 0

    return-void
.end method

.method public final zzdK()Lcom/google/android/gms/internal/zzgs;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzbv;

    sget-object v0, Lcom/google/android/gms/internal/zzca;->zzql:Lcom/google/android/gms/internal/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzca;->zzcb()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzbv;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm$zza;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/zzdh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzdh;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzhd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzhd;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzgw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;)Lcom/google/android/gms/internal/zzgw;

    move-result-object v0

    return-object v0
.end method
