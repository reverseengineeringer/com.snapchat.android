.class public final Lbfj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mProvider:Lbfi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lbfi;

    invoke-direct {v0}, Lbfi;-><init>()V

    invoke-direct {p0, v0}, Lbfj;-><init>(Lbfi;)V

    .line 16
    return-void
.end method

.method private constructor <init>(Lbfi;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbfj;->mProvider:Lbfi;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lbfj;->mProvider:Lbfi;

    invoke-virtual {v1, p1}, Lbfi;->a(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    .line 36
    if-nez v1, :cond_0

    .line 47
    :goto_0
    return v0

    .line 40
    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 45
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lbfj;->mProvider:Lbfi;

    invoke-virtual {v0, p1}, Lbfi;->a(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0
.end method
