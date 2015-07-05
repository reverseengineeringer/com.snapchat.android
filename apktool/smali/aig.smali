.class public final Laig;
.super Laif;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laif",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lavp;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lawq;->GEOFILTER_CACHE:Lawp;

    new-instance v1, Lavp;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lavp;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laig;-><init>(Lawp;Lavp;Lalb;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lawp;Lavp;Lalb;)V
    .locals 1
    .param p1    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lavp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lalb;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p3, p1}, Laif;-><init>(Lalb;Lawp;)V

    .line 38
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavp;

    iput-object v0, p0, Laig;->b:Lavp;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-static {}, Lbgp;->b()V

    if-nez p1, :cond_0

    const-string v1, "BitmapResourceProvider"

    const-string v2, "Uri was null can not create bitmap request"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    const-string v1, "BitmapResourceProvider"

    const-string v2, "Couldn\'t load bitmap"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Laig;->a:Lawp;

    invoke-virtual {v1, p1}, Lawp;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "BitmapResourceProvider"

    const-string v2, "bytes from cache was null can not create bitmap request"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Laig;->a:Lawp;

    invoke-virtual {v1, p1}, Lawp;->c(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lavx$a;

    invoke-direct {v1}, Lavx$a;-><init>()V

    iget-object v2, p0, Laig;->a:Lawp;

    invoke-virtual {v1, p1, v2, p1, v0}, Lavx$a;->a(Ljava/lang/String;Lawp;Ljava/lang/String;Layc;)Lavx$a;

    invoke-virtual {v1}, Lavx$a;->a()Lavx;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Laig;->b:Lavp;

    invoke-virtual {v2, v1}, Lavp;->a(Lavx;)Lavo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    :cond_3
    iget-object v1, p0, Laig;->a:Lawp;

    invoke-virtual {v1, p1}, Lawp;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Laij$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laij$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lbgp;->b()V

    .line 45
    iget-object v0, p0, Laig;->a:Lawp;

    invoke-virtual {v0, p1}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laig;->a:Lawp;

    invoke-virtual {v0, p1}, Lawp;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p2}, Laij$a;->a()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Laig;->a(Ljava/lang/String;Laij$a;)V

    goto :goto_0
.end method
