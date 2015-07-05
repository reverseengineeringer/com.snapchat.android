.class final Lahk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/addlive/service/AddLiveService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://cnc.addlive.io/events.store"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lahk;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/addlive/service/AddLiveService;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lahk;->a:Lcom/addlive/service/AddLiveService;

    .line 47
    return-void
.end method

.method static synthetic a(Lahk;)Lcom/addlive/service/AddLiveService;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lahk;->a:Lcom/addlive/service/AddLiveService;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 30
    const-string v0, "|"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/Serializable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "Ir3boG9oahw6bo9Xzei9Phei"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "HmacSHA256"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method final a()V
    .locals 6

    .prologue
    .line 50
    const-string v0, "livechat"

    const-string v1, "Setting up the AddLive performance gathering metrics"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lahk;->b:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Lahk;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lahk;->a:Lcom/addlive/service/AddLiveService;

    const-string v2, "setProperty(global.service.eventsTrackingEndpoint"

    invoke-static {v2}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v2

    const-string v3, "global.service.eventsTrackingEndpoint"

    invoke-interface {v1, v2, v3, v0}, Lcom/addlive/service/AddLiveService;->setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lahk;->a:Lcom/addlive/service/AddLiveService;

    const-string v1, "setProperty(global.service.eventsTrackingSession"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    const-string v2, "global.service.eventsTrackingSession"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lahk;->a:Lcom/addlive/service/AddLiveService;

    const-string v1, "startEventsTracking"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    const-string v2, "ADL_Performance.log"

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->startEventsTracking(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 60
    return-void
.end method
