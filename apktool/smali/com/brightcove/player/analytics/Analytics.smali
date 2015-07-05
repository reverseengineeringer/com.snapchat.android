.class public Lcom/brightcove/player/analytics/Analytics;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "account",
        "didSetAnalyticsBaseParams",
        "error"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "addAnalyticsBaseParams",
        "completed",
        "didSeekTo",
        "didSetVideo",
        "progress",
        "readyToPlay",
        "setAnalyticsBaseParams",
        "version"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/analytics/Analytics$Fields;,
        Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://metrics.brightcove.com/tracker"

.field private static final DEVICE_OS:Ljava/lang/String; = "android"

.field private static final DOMAIN:Ljava/lang/String; = "videocloud"

.field private static final ENGAGEMENT_PERIOD:I = 0x2710

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private account:Ljava/lang/String;

.field private final baseParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field public destination:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private duration:I

.field private endTime:I

.field private hasStarted:Z

.field private platform:Ljava/lang/String;

.field private platformVersion:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private startTime:I

.field private uniqueIdentifierEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/brightcove/player/analytics/Analytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/analytics/Analytics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0, p1, p2, v0}, Lcom/brightcove/player/analytics/Analytics;-><init>(Lcom/brightcove/player/event/EventEmitter;Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    return-void
.end method

.method protected constructor <init>(Lcom/brightcove/player/event/EventEmitter;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/brightcove/player/event/Component;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1, p3}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;

    .line 126
    const-string v0, "android-native-sdk"

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->platform:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/brightcove/player/analytics/Analytics;->context:Landroid/content/Context;

    .line 140
    iput v1, p0, Lcom/brightcove/player/analytics/Analytics;->endTime:I

    iput v1, p0, Lcom/brightcove/player/analytics/Analytics;->startTime:I

    .line 141
    iput-boolean v1, p0, Lcom/brightcove/player/analytics/Analytics;->hasStarted:Z

    .line 143
    invoke-direct {p0, p2}, Lcom/brightcove/player/analytics/Analytics;->setDestination(Landroid/content/Context;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/brightcove/player/analytics/Analytics;->initializeEvents(Lcom/brightcove/player/event/EventEmitter;)V

    .line 146
    invoke-direct {p0, p2}, Lcom/brightcove/player/analytics/Analytics;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->deviceType:Ljava/lang/String;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/analytics/Analytics;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brightcove/player/analytics/Analytics;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/brightcove/player/analytics/Analytics;->emitDidSetEvent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/analytics/Analytics;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/brightcove/player/analytics/Analytics;->endTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/brightcove/player/analytics/Analytics;I)I
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/brightcove/player/analytics/Analytics;->endTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/brightcove/player/analytics/Analytics;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/brightcove/player/analytics/Analytics;->startTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/brightcove/player/analytics/Analytics;I)I
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/brightcove/player/analytics/Analytics;->startTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;II)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/brightcove/player/analytics/Analytics;->sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/brightcove/player/analytics/Analytics;->sendVideoAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$602(Lcom/brightcove/player/analytics/Analytics;I)I
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/brightcove/player/analytics/Analytics;->duration:I

    return p1
.end method

.method static synthetic access$700(Lcom/brightcove/player/analytics/Analytics;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/brightcove/player/analytics/Analytics;->hasStarted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/brightcove/player/analytics/Analytics;Z)Z
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/brightcove/player/analytics/Analytics;->hasStarted:Z

    return p1
.end method

.method static synthetic access$802(Lcom/brightcove/player/analytics/Analytics;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics;->platformVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method private emitDidSetEvent()V
    .locals 3

    .prologue
    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 474
    const-string v1, "baseParams"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "didSetAnalyticsBaseParams"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 476
    return-void
.end method

.method private getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    const-string v1, "tablet"

    .line 481
    if-eqz p1, :cond_0

    .line 483
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 486
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "mobile"
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 498
    :goto_0
    return-object v0

    .line 491
    :catch_0
    move-exception v0

    const-string v0, "tablet"

    goto :goto_0

    .line 494
    :catch_1
    move-exception v0

    const-string v0, "tablet"

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private initializeEvents(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 218
    const-string v0, "addAnalyticsBaseParams"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$1;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$1;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 234
    const-string v0, "setAnalyticsBaseParams"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$2;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$2;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 250
    const-string v0, "willChangeVideo"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$3;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$3;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 268
    const-string v0, "didSeekTo"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$4;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$4;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 289
    const-string v0, "progress"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$5;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$5;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 320
    const-string v0, "completed"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$6;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$6;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 335
    const-string v0, "videoDurationChanged"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$7;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$7;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 346
    const-string v0, "version"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$8;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$8;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 353
    return-void
.end method

.method private sendVideoAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/Event;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    if-nez p3, :cond_0

    .line 378
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 381
    :cond_0
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 384
    if-nez v0, :cond_1

    .line 385
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "currentVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 389
    :cond_1
    if-nez v0, :cond_2

    .line 390
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "nextVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 393
    :cond_2
    if-eqz v0, :cond_4

    .line 394
    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->getId()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 397
    const-string v2, "video"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_3
    const-string v1, "pubId"

    invoke-virtual {v0, v1}, Lcom/brightcove/player/model/Video;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 403
    const-string v1, "account"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/brightcove/player/analytics/Analytics;->sendAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 413
    :cond_5
    return-void

    .line 404
    :cond_6
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->account:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 405
    const-string v0, "account"

    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics;->account:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 356
    div-int/lit16 v0, p2, 0x3e8

    .line 357
    div-int/lit16 v1, p3, 0x3e8

    add-int/lit8 v1, v1, -0x1

    .line 359
    if-ge v1, v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 364
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 366
    iget v3, p0, Lcom/brightcove/player/analytics/Analytics;->duration:I

    if-lez v3, :cond_1

    .line 367
    const-string v3, "range"

    const-string v4, "%d..%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_1
    const-string v0, "video_engagement"

    invoke-direct {p0, p1, v0, v2}, Lcom/brightcove/player/analytics/Analytics;->sendVideoAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 370
    :cond_1
    const-string v3, "video_seconds_viewed"

    const-string v4, "%d"

    new-array v5, v7, [Ljava/lang/Object;

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private setDestination(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bcsdk://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/analytics/Analytics;->setDestination(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueIdentifierEnabled()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/brightcove/player/analytics/Analytics;->uniqueIdentifierEnabled:Z

    return v0
.end method

.method protected sendAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/Event;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 420
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 421
    if-eqz p3, :cond_0

    .line 422
    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 425
    :cond_0
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "video"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 426
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 427
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/brightcove/player/model/Video;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    const-string v2, "video_name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_1
    iget v0, p0, Lcom/brightcove/player/analytics/Analytics;->duration:I

    if-lez v0, :cond_2

    .line 435
    const-string v0, "video_duration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/brightcove/player/analytics/Analytics;->duration:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_2
    const-string v0, "event"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v0, "domain"

    const-string v2, "videocloud"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v0, "device_os"

    const-string v2, "android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v0, "device_type"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->deviceType:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v0, "device_os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v0, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v0, "platform"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->platform:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v0, "platform_version"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->platformVersion:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->destination:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 448
    const-string v0, "destination"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->destination:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->source:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 452
    const-string v0, "source"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->source:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_4
    iget-boolean v0, p0, Lcom/brightcove/player/analytics/Analytics;->uniqueIdentifierEnabled:Z

    if-eqz v0, :cond_5

    .line 456
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    const-string v2, "user"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_5
    new-instance v0, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;

    invoke-direct {v0, p0}, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    .line 461
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/HashMap;

    .line 462
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 463
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_6

    .line 464
    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v2}, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 469
    :goto_0
    return-object v1

    .line 466
    :cond_6
    invoke-virtual {v0, v2}, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 160
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics;->account:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    const-string v1, "value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "account"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    return-void
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics;->destination:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 173
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 206
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics;->source:Ljava/lang/String;

    .line 207
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 209
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setUniqueIdentifierEnabled(Z)V
    .locals 0

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/brightcove/player/analytics/Analytics;->uniqueIdentifierEnabled:Z

    .line 521
    return-void
.end method
