.class Lcom/google/android/gms/common/api/zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/zzd$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzNb:Lcom/google/android/gms/common/api/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd$1;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/common/api/zzd$zzg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzd$zzg",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$1;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzd;->zzMW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
