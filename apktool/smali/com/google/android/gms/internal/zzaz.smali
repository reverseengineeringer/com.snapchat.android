.class public Lcom/google/android/gms/internal/zzaz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# static fields
.field public static final zzoZ:Lcom/google/android/gms/internal/zzaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaz;->zzoZ:Lcom/google/android/gms/internal/zzaz;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzbA()Lcom/google/android/gms/internal/zzaz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaz;->zzoZ:Lcom/google/android/gms/internal/zzaz;

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbo;)Lcom/google/android/gms/internal/zzax;
    .locals 20

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->getBirthday()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->getContentUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->getGender()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->getKeywords()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbo;->isTestDevice(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->zzbL()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->getLocation()Landroid/location/Location;

    move-result-object v14

    const-class v2, Lcb;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbo;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->getManualImpressionsEnabled()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->zzbI()Lcom/google/android/gms/ads/search/SearchAdRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v13, Lcom/google/android/gms/internal/zzbs;

    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/zzbs;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/zzax;

    const/4 v3, 0x5

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->zzbK()Landroid/os/Bundle;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->getCustomTargeting()Landroid/os/Bundle;

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->zzbM()Ljava/util/Set;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbo;->zzbH()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/zzax;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzbs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2
.end method
