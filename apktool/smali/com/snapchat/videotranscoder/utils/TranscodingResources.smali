.class public Lcom/snapchat/videotranscoder/utils/TranscodingResources;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MISS_ETIKATE_LOOKUP_PATH:Ljava/lang/String; = "res/raw/lookup_miss_etikate.png"

.field private static final TAG:Ljava/lang/String; = "TranscodingResourceProvider"

.field private static sInstance:Lcom/snapchat/videotranscoder/utils/TranscodingResources;


# instance fields
.field private mFragmentShader:Ljava/lang/String;

.field private final mRawResourceStringProvider:Lcom/snapchat/videotranscoder/utils/RawResourceStringProvider;

.field private final mUtils:Lcom/snapchat/videotranscoder/utils/Utils;

.field private mVertexShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->sInstance:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 33
    new-instance v0, Lcom/snapchat/videotranscoder/utils/RawResourceStringProvider;

    invoke-direct {v0, p1}, Lcom/snapchat/videotranscoder/utils/RawResourceStringProvider;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/snapchat/videotranscoder/utils/Utils;->getInstance()Lcom/snapchat/videotranscoder/utils/Utils;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/videotranscoder/utils/TranscodingResources;-><init>(Lcom/snapchat/videotranscoder/utils/RawResourceStringProvider;Lcom/snapchat/videotranscoder/utils/Utils;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/videotranscoder/utils/RawResourceStringProvider;Lcom/snapchat/videotranscoder/utils/Utils;)V
    .locals 0
    .param p1    # Lcom/snapchat/videotranscoder/utils/RawResourceStringProvider;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/utils/Utils;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mRawResourceStringProvider:Lcom/snapchat/videotranscoder/utils/RawResourceStringProvider;

    .line 40
    iput-object p2, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mUtils:Lcom/snapchat/videotranscoder/utils/Utils;

    .line 41
    return-void
.end method

.method private loadRawBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable find load bitmap from path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private loadResource(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mUtils:Lcom/snapchat/videotranscoder/utils/Utils;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/Utils;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "Loading resource %i on UI thread. This may degrade performance."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mRawResourceStringProvider:Lcom/snapchat/videotranscoder/utils/RawResourceStringProvider;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/utils/RawResourceStringProvider;->get(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :catch_1
    move-exception v0

    .line 104
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public loadFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mFragmentShader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    sget v0, Lcom/snapchat/videotranscoder/R$raw;->fragment_shader:I

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->loadResource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mFragmentShader:Ljava/lang/String;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mFragmentShader:Ljava/lang/String;

    return-object v0
.end method

.method public loadMissEtikateLookupBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 74
    const-string v0, "res/raw/lookup_miss_etikate.png"

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->loadRawBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mVertexShader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    sget v0, Lcom/snapchat/videotranscoder/R$raw;->vertex_shader:I

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->loadResource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mVertexShader:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->mVertexShader:Ljava/lang/String;

    return-object v0
.end method
