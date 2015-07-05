.class Lcom/google/android/gms/tagmanager/zzcm$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcm;->zzb(Lcom/google/android/gms/internal/zzvd$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzazU:Lcom/google/android/gms/tagmanager/zzcm;

.field final synthetic zzazV:Lcom/google/android/gms/internal/zzvd$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcm;Lcom/google/android/gms/internal/zzvd$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcm$2;->zzazU:Lcom/google/android/gms/tagmanager/zzcm;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcm$2;->zzazV:Lcom/google/android/gms/internal/zzvd$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm$2;->zzazU:Lcom/google/android/gms/tagmanager/zzcm;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcm$2;->zzazV:Lcom/google/android/gms/internal/zzvd$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcm;->zzc(Lcom/google/android/gms/internal/zzvd$zza;)Z

    return-void
.end method
