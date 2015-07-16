.class public final Lain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lawj;
.end annotation


# static fields
.field private static c:Lain;

.field private static d:Z

.field private static e:Landroid/content/Context;

.field private static f:Landroid/os/HandlerThread;

.field private static g:Landroid/os/Looper;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lail;",
            ">;"
        }
    .end annotation
.end field

.field final b:Laik;

.field private h:Landroid/location/LocationManager;

.field private final i:Laij;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lain;->d:Z

    return-void
.end method

.method private constructor <init>(Landroid/location/LocationManager;Laij;Laik;)V
    .locals 1

    .prologue
    .line 52
    invoke-static {p1}, Lain;->a(Landroid/location/LocationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lain;-><init>(Landroid/location/LocationManager;Laij;Ljava/util/List;Laik;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/location/LocationManager;Laij;Ljava/util/List;Laik;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Laij;",
            "Ljava/util/List",
            "<",
            "Lail;",
            ">;",
            "Laik;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lain;->h:Landroid/location/LocationManager;

    .line 44
    iput-object p3, p0, Lain;->a:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lain;->i:Laij;

    .line 46
    iput-object p4, p0, Lain;->b:Laik;

    .line 47
    return-void
.end method

.method public static declared-synchronized a()Lain;
    .locals 5

    .prologue
    .line 69
    const-class v1, Lain;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lain;->d:Z

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Location manager has not been initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 72
    :cond_0
    :try_start_1
    sget-object v0, Lain;->c:Lain;

    if-nez v0, :cond_1

    .line 73
    new-instance v2, Lain;

    sget-object v0, Lain;->e:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v3, Laij;

    sget-object v4, Lain;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Laij;-><init>(Landroid/content/Context;)V

    invoke-static {}, Laik;->a()Laik;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lain;-><init>(Landroid/location/LocationManager;Laij;Laik;)V

    sput-object v2, Lain;->c:Lain;

    .line 76
    :cond_1
    sget-object v0, Lain;->c:Lain;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private static a(Landroid/location/LocationManager;)Ljava/util/ArrayList;
    .locals 7
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    new-array v3, v6, [Ljava/lang/String;

    const-string v1, "network"

    aput-object v1, v3, v0

    const/4 v1, 0x1

    const-string v4, "gps"

    aput-object v4, v3, v1

    move v1, v0

    .line 152
    :goto_0
    if-ge v1, v6, :cond_1

    :try_start_0
    aget-object v0, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    .line 155
    if-eqz v4, :cond_0

    .line 156
    new-instance v4, Lail;

    sget-object v5, Lain;->g:Landroid/os/Looper;

    invoke-direct {v4, v0, p0, v5}, Lail;-><init>(Ljava/lang/String;Landroid/location/LocationManager;Landroid/os/Looper;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 170
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 173
    :goto_2
    return-object v2

    .line 160
    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 166
    :cond_1
    new-instance v0, Lail;

    const-string v1, "passive"

    sget-object v3, Lain;->g:Landroid/os/Looper;

    invoke-direct {v0, v1, p0, v3}, Lail;-><init>(Ljava/lang/String;Landroid/location/LocationManager;Landroid/os/Looper;)V

    .line 168
    new-instance v1, Lail$1;

    invoke-direct {v1, v0}, Lail$1;-><init>(Lail;)V

    invoke-static {v1}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 59
    const-class v1, Lain;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lain;->d:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lain;->d:Z

    .line 61
    sput-object p0, Lain;->e:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Location"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v0, Lain;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    sget-object v0, Lain;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lain;->g:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v1

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lain$1;

    invoke-direct {v0, p0}, Lain$1;-><init>(Lain;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lain$2;

    invoke-direct {v0, p0}, Lain$2;-><init>(Lain;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public final d()Landroid/location/Location;
    .locals 6
    .annotation build Lcbr;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lbhp;->b()V

    .line 131
    iget-object v0, p0, Lain;->i:Laij;

    invoke-static {}, Lbhp;->b()V

    iget-object v1, v0, Laij;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Laij;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 132
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Location from device is "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string v1, "Null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lain;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lail;

    .line 134
    invoke-virtual {v0}, Lail;->a()Landroid/location/Location;

    move-result-object v2

    .line 135
    if-eqz v1, :cond_0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Location has been updated to "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_3

    const-string v0, "Null"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    :goto_4
    move-object v1, v0

    .line 140
    goto :goto_2

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 141
    :cond_4
    return-object v1

    :cond_5
    move-object v0, v1

    goto :goto_4
.end method
