.class public Lcom/google/android/gms/internal/zzcz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# static fields
.field static final zzrM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzrK:Lcom/google/android/gms/internal/zzu;

.field private final zzrL:Lcom/google/android/gms/internal/zzeb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcz;->zzrM:Ljava/util/Map;

    const-string v1, "resize"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcz;->zzrM:Ljava/util/Map;

    const-string v1, "playVideo"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcz;->zzrM:Ljava/util/Map;

    const-string v1, "storePicture"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcz;->zzrM:Ljava/util/Map;

    const-string v1, "createCalendarEvent"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcz;->zzrM:Ljava/util/Map;

    const-string v1, "setOrientationProperties"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcz;->zzrM:Ljava/util/Map;

    const-string v1, "closeResizedAd"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzu;Lcom/google/android/gms/internal/zzeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcz;->zzrK:Lcom/google/android/gms/internal/zzu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcz;->zzrL:Lcom/google/android/gms/internal/zzeb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzic;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzcz;->zzrM:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz;->zzrK:Lcom/google/android/gms/internal/zzu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz;->zzrK:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzu;->zzaB()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzrK:Lcom/google/android/gms/internal/zzu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzu;->zzd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown MRAID command called."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzrL:Lcom/google/android/gms/internal/zzeb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzeb;->zzg(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/zzea;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzea;-><init>(Lcom/google/android/gms/internal/zzic;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzea;->execute()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/zzed;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzed;-><init>(Lcom/google/android/gms/internal/zzic;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzed;->execute()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/google/android/gms/internal/zzec;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzec;-><init>(Lcom/google/android/gms/internal/zzic;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzec;->execute()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzrL:Lcom/google/android/gms/internal/zzeb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeb;->zzm(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
