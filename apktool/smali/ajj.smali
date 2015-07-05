.class public final Lajj;
.super Laim;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajj$a;
    }
.end annotation


# static fields
.field private static final JPEG_ENCODING_QUALITY:I = 0x3c


# instance fields
.field private final mSnapbryoAnalytics:Lnq;


# direct methods
.method protected constructor <init>(Lajj$a;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Laim;-><init>(Laim$a;)V

    .line 23
    iget-object v0, p1, Lajj$a;->mSnapbryoAnalytics:Lnq;

    iput-object v0, p0, Lajj;->mSnapbryoAnalytics:Lnq;

    .line 24
    return-void
.end method

.method private n()Lajj;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lajj$a;

    invoke-direct {v0}, Lajj$a;-><init>()V

    invoke-virtual {v0, p0}, Lajj$a;->a(Laim;)Laim$a;

    move-result-object v0

    check-cast v0, Lajj$a;

    invoke-virtual {v0}, Lajj$a;->c()Lajj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Laim;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lajj;->n()Lajj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lajj;->n()Lajj;

    move-result-object v0

    return-object v0
.end method

.method public final g()[B
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 50
    if-nez v1, :cond_0

    .line 51
    const-string v1, "Null Composite Image Bitmap"

    invoke-static {p0, v1}, Lnq;->a(Laim;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-object v0

    .line 55
    :cond_0
    invoke-static {v1}, Laur;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    const-string v1, "Null Composite Image Bitmap after SnapMediaUtils.downscaleBitmapForUpload"

    invoke-static {p0, v1}, Lnq;->a(Laim;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v1}, Laur;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
