.class public Lcom/snapchat/videotranscoder/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/snapchat/videotranscoder/utils/FileUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/snapchat/videotranscoder/utils/FileUtils;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/FileUtils;-><init>()V

    sput-object v0, Lcom/snapchat/videotranscoder/utils/FileUtils;->sInstance:Lcom/snapchat/videotranscoder/utils/FileUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/snapchat/videotranscoder/utils/FileUtils;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/snapchat/videotranscoder/utils/FileUtils;->sInstance:Lcom/snapchat/videotranscoder/utils/FileUtils;

    return-object v0
.end method


# virtual methods
.method public checkExists(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    .line 22
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public isNotZeroBytes(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
