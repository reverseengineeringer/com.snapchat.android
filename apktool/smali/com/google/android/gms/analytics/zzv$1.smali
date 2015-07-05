.class Lcom/google/android/gms/analytics/zzv$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/zzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCg:Lcom/google/android/gms/analytics/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzv$1;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzD(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzv$1;->zzCg:Lcom/google/android/gms/analytics/zzv;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzv$1;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzv;->zza(Lcom/google/android/gms/analytics/zzv;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/zzv;->zzb(ZZ)V

    return-void
.end method
