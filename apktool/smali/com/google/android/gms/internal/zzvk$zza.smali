.class public Lcom/google/android/gms/internal/zzvk$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzvk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzvk$zza$zza;
    }
.end annotation


# instance fields
.field private final zzHb:Lcom/google/android/gms/common/api/Status;

.field private final zzaCa:Lcom/google/android/gms/internal/zzvk$zza$zza;

.field private final zzaCb:[B

.field private final zzaCc:J

.field private final zzaCd:Lcom/google/android/gms/internal/zzve;

.field private final zzaCe:Lcom/google/android/gms/internal/zzvl$zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvk$zza$zza;)V
    .locals 8

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzvk$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzve;[BLcom/google/android/gms/internal/zzvl$zzc;Lcom/google/android/gms/internal/zzvk$zza$zza;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzve;[BLcom/google/android/gms/internal/zzvl$zzc;Lcom/google/android/gms/internal/zzvk$zza$zza;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzHb:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCd:Lcom/google/android/gms/internal/zzve;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCb:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCe:Lcom/google/android/gms/internal/zzvl$zzc;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCa:Lcom/google/android/gms/internal/zzvk$zza$zza;

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCc:J

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzHb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public zzup()Lcom/google/android/gms/internal/zzvk$zza$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCa:Lcom/google/android/gms/internal/zzvk$zza$zza;

    return-object v0
.end method

.method public zzuq()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCb:[B

    return-object v0
.end method

.method public zzur()Lcom/google/android/gms/internal/zzve;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCd:Lcom/google/android/gms/internal/zzve;

    return-object v0
.end method

.method public zzus()Lcom/google/android/gms/internal/zzvl$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCe:Lcom/google/android/gms/internal/zzvl$zzc;

    return-object v0
.end method

.method public zzut()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzvk$zza;->zzaCc:J

    return-wide v0
.end method
