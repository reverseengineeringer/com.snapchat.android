.class public final Lajm$a;
.super Laim$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laim$a",
        "<",
        "Lajm$a;",
        ">;"
    }
.end annotation


# instance fields
.field public mFirstFrameBitmap:Landroid/graphics/Bitmap;

.field mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field mSnapWomb:Lajn;

.field mSnapbryoAnalytics:Lnq;

.field mTranscodingState:Lwu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Laim$a;-><init>()V

    .line 253
    new-instance v0, Lwu;

    invoke-direct {v0}, Lwu;-><init>()V

    iput-object v0, p0, Lajm$a;->mTranscodingState:Lwu;

    .line 254
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lajm$a;->mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    return-void
.end method


# virtual methods
.method public final a(Lajm;)Lajm$a;
    .locals 1

    .prologue
    .line 270
    invoke-super {p0, p1}, Laim$a;->a(Laim;)Laim$a;

    .line 271
    invoke-static {p1}, Lajm;->a(Lajm;)Lwu;

    move-result-object v0

    iput-object v0, p0, Lajm$a;->mTranscodingState:Lwu;

    .line 272
    invoke-static {p1}, Lajm;->b(Lajm;)Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    move-result-object v0

    iput-object v0, p0, Lajm$a;->mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 273
    invoke-static {p1}, Lajm;->c(Lajm;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lajm$a;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    .line 274
    return-object p0
.end method

.method public final synthetic b()Laim;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lajm$a;->c()Lajm;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lajm;
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Laim$a;->a()V

    .line 290
    iget-object v0, p0, Lajm$a;->mSnapbryoAnalytics:Lnq;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lnq;

    invoke-direct {v0}, Lnq;-><init>()V

    iput-object v0, p0, Lajm$a;->mSnapbryoAnalytics:Lnq;

    .line 293
    :cond_0
    iget-object v0, p0, Lajm$a;->mSnapWomb:Lajn;

    if-nez v0, :cond_1

    .line 294
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v0

    iput-object v0, p0, Lajm$a;->mSnapWomb:Lajn;

    .line 296
    :cond_1
    new-instance v0, Lajm;

    invoke-direct {v0, p0}, Lajm;-><init>(Lajm$a;)V

    return-object v0
.end method
