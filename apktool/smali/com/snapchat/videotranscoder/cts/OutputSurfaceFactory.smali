.class public Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOutputSurface(Lcom/snapchat/videotranscoder/utils/TranscodingResources;II[FLandroid/graphics/Bitmap;)Lcom/snapchat/videotranscoder/cts/OutputSurface;
    .locals 6
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 21
    new-instance v0, Lcom/snapchat/videotranscoder/cts/OutputSurface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/cts/OutputSurface;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;II[FLandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public createOutputSurface(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[FLandroid/graphics/Bitmap;)Lcom/snapchat/videotranscoder/cts/OutputSurface;
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 28
    new-instance v0, Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-direct {v0, p1, p2, p3}, Lcom/snapchat/videotranscoder/cts/OutputSurface;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[FLandroid/graphics/Bitmap;)V

    return-object v0
.end method
