.class public final Laxp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxp$a;
    }
.end annotation


# instance fields
.field public final mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

.field final mCompressor:Lack;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Laxo;->DISCOVER_SHARE:Laxn;

    check-cast v0, Lcom/snapchat/android/util/cache/DiscoverShareCache;

    sget-object v1, Lack;->a:Lack;

    if-nez v1, :cond_0

    new-instance v1, Lack;

    invoke-direct {v1}, Lack;-><init>()V

    sput-object v1, Lack;->a:Lack;

    :cond_0
    sget-object v1, Lack;->a:Lack;

    invoke-direct {p0, v0, v1}, Laxp;-><init>(Lcom/snapchat/android/util/cache/DiscoverShareCache;Lack;)V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Laxp;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/util/cache/DiscoverShareCache;Lack;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Laxp;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    .line 42
    iput-object p2, p0, Laxp;->mCompressor:Lack;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Laco;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Laxp;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    sget-object v2, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->METADATA:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, p1, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)[B

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 84
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Laco;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laco;

    .line 87
    :cond_0
    return-object v0
.end method

.method public final a(Laji;)[B
    .locals 3

    .prologue
    .line 49
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Laxp;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    sget-object v2, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->BLOB:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)[B

    move-result-object v0

    return-object v0
.end method
