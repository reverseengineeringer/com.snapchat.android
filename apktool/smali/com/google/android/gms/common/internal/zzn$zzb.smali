.class final Lcom/google/android/gms/common/internal/zzn$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzn$zzb$zza;
    }
.end annotation


# instance fields
.field private mState:I

.field private zzPp:Landroid/os/IBinder;

.field private zzQh:Landroid/content/ComponentName;

.field private final zzQi:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

.field private final zzQj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private zzQk:Z

.field private final zzQl:Lcom/google/android/gms/common/internal/zzn$zza;

.field final synthetic zzQm:Lcom/google/android/gms/common/internal/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/internal/zzn$zza;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQl:Lcom/google/android/gms/common/internal/zzn$zza;

    new-instance v0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzn$zzb$zza;-><init>(Lcom/google/android/gms/common/internal/zzn$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQi:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQj:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzn$zzb;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzn$zzb;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQh:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzn$zzb;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzPp:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzn$zzb;)Lcom/google/android/gms/common/internal/zzn$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQl:Lcom/google/android/gms/common/internal/zzn$zza;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzn$zzb;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQj:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzPp:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQh:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    return v0
.end method

.method public final isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQk:Z

    return v0
.end method

.method public final zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzc(Lcom/google/android/gms/common/internal/zzn;)Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzn;->zzb(Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQl:Lcom/google/android/gms/common/internal/zzn$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzn$zza;->zzjj()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQj:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQj:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zzb(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzc(Lcom/google/android/gms/common/internal/zzn;)Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzn;->zzb(Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzlo;->zzb(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQj:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzbh(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzc(Lcom/google/android/gms/common/internal/zzn;)Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzn;->zzb(Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQl:Lcom/google/android/gms/common/internal/zzn$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzn$zza;->zzjj()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQi:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    const/16 v5, 0x81

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQk:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQk:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzc(Lcom/google/android/gms/common/internal/zzn;)Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzn;->zzb(Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQi:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public final zzbi(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzc(Lcom/google/android/gms/common/internal/zzn;)Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQm:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzn;->zzb(Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQi:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQk:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    return-void
.end method

.method public final zzjk()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->zzQj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
