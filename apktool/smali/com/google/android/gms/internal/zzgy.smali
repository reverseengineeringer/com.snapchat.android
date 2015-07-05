.class public final Lcom/google/android/gms/internal/zzgy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field zzmu:Lcom/google/android/gms/internal/zzic;

.field private final zznh:Ljava/lang/Object;

.field public final zzxA:Lcom/google/android/gms/internal/zzcv;

.field private zzxv:Ljava/lang/String;

.field private zzxw:Ljava/lang/String;

.field private zzxx:Lcom/google/android/gms/internal/zzhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzhq",
            "<",
            "Lcom/google/android/gms/internal/zzha;",
            ">;"
        }
    .end annotation
.end field

.field zzxy:Lcom/google/android/gms/internal/zzia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;"
        }
    .end annotation
.end field

.field public final zzxz:Lcom/google/android/gms/internal/zzcv;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zznh:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzhq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzxx:Lcom/google/android/gms/internal/zzhq;

    new-instance v0, Lcom/google/android/gms/internal/zzgy$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgy$1;-><init>(Lcom/google/android/gms/internal/zzgy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzxz:Lcom/google/android/gms/internal/zzcv;

    new-instance v0, Lcom/google/android/gms/internal/zzgy$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgy$2;-><init>(Lcom/google/android/gms/internal/zzgy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzxA:Lcom/google/android/gms/internal/zzcv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgy;->zzxw:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgy;->zzxv:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zznh:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzgy;)Lcom/google/android/gms/internal/zzhq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzxx:Lcom/google/android/gms/internal/zzhq;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzgy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzxv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzgy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzxw:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzic;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgy;->zzmu:Lcom/google/android/gms/internal/zzic;

    return-void
.end method

.method public final zzdR()Lcom/google/android/gms/internal/zzia;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzxy:Lcom/google/android/gms/internal/zzia;

    return-object v0
.end method

.method public final zzdS()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzha;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzxx:Lcom/google/android/gms/internal/zzhq;

    return-object v0
.end method

.method public final zzdT()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzmu:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzmu:Lcom/google/android/gms/internal/zzic;

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/zzia;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgy;->zzxy:Lcom/google/android/gms/internal/zzia;

    return-void
.end method
