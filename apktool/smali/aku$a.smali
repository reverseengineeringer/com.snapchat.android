.class public final Laku$a;
.super Laji$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laji$a",
        "<",
        "Laku$a;",
        ">;"
    }
.end annotation


# instance fields
.field public mFirstFrameBitmap:Landroid/graphics/Bitmap;

.field mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field mSnapWomb:Laki;

.field mSnapbryoAnalytics:Loh;

.field mTranscodingState:Lxp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Laji$a;-><init>()V

    .line 253
    new-instance v0, Lxp;

    invoke-direct {v0}, Lxp;-><init>()V

    iput-object v0, p0, Laku$a;->mTranscodingState:Lxp;

    .line 254
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Laku$a;->mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    return-void
.end method


# virtual methods
.method public final a(Laku;)Laku$a;
    .locals 1

    .prologue
    .line 270
    invoke-super {p0, p1}, Laji$a;->a(Laji;)Laji$a;

    .line 271
    invoke-static {p1}, Laku;->a(Laku;)Lxp;

    move-result-object v0

    iput-object v0, p0, Laku$a;->mTranscodingState:Lxp;

    .line 272
    invoke-static {p1}, Laku;->b(Laku;)Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    move-result-object v0

    iput-object v0, p0, Laku$a;->mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 273
    invoke-static {p1}, Laku;->c(Laku;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Laku$a;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    .line 274
    return-object p0
.end method

.method public final synthetic b()Laji;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Laku$a;->c()Laku;

    move-result-object v0

    return-object v0
.end method

.method public final c()Laku;
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Laji$a;->a()V

    .line 290
    iget-object v0, p0, Laku$a;->mSnapbryoAnalytics:Loh;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Loh;

    invoke-direct {v0}, Loh;-><init>()V

    iput-object v0, p0, Laku$a;->mSnapbryoAnalytics:Loh;

    .line 293
    :cond_0
    iget-object v0, p0, Laku$a;->mSnapWomb:Laki;

    if-nez v0, :cond_1

    .line 294
    invoke-static {}, Laki;->a()Laki;

    move-result-object v0

    iput-object v0, p0, Laku$a;->mSnapWomb:Laki;

    .line 296
    :cond_1
    new-instance v0, Laku;

    invoke-direct {v0, p0}, Laku;-><init>(Laku$a;)V

    return-object v0
.end method
