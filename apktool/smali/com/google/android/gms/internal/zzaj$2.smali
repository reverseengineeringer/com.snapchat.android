.class Lcom/google/android/gms/internal/zzaj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaj;->zzb(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zznQ:Ljava/lang/String;

.field final synthetic zznS:Lcom/google/android/gms/internal/zzaj;

.field final synthetic zznT:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaj$2;->zznS:Lcom/google/android/gms/internal/zzaj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaj$2;->zznQ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaj$2;->zznT:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$2;->zznS:Lcom/google/android/gms/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaj;->zza(Lcom/google/android/gms/internal/zzaj;)Lcom/google/android/gms/internal/zzic;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$2;->zznQ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$2;->zznT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzic;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
