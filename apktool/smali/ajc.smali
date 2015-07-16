.class public final Lajc;
.super Lajb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lajb",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lawn;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Laxo;->GEOFILTER_CACHE:Laxn;

    new-instance v1, Lawn;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lawn;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lajc;-><init>(Laxn;Lawn;Lalw;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Laxn;Lawn;Lalw;)V
    .locals 1
    .param p1    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lawn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lalw;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p3, p1}, Lajb;-><init>(Lalw;Laxn;)V

    .line 38
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawn;

    iput-object v0, p0, Lajc;->b:Lawn;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-static {}, Lbhp;->b()V

    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lajc;->a:Laxn;

    invoke-virtual {v1, p1}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lajc;->a:Laxn;

    invoke-virtual {v1, p1}, Laxn;->c(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lawv$a;

    invoke-direct {v1}, Lawv$a;-><init>()V

    iget-object v2, p0, Lajc;->a:Laxn;

    invoke-virtual {v1, p1, v2, p1}, Lawv$a;->a(Ljava/lang/String;Laxn;Ljava/lang/String;)Lawv$a;

    move-result-object v1

    invoke-virtual {v1}, Lawv$a;->a()Lawv;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lajc;->b:Lawn;

    invoke-virtual {v2, v1}, Lawn;->a(Lawv;)Lawm;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    :cond_3
    iget-object v1, p0, Lajc;->a:Laxn;

    invoke-virtual {v1, p1}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Lajf$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajf$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lbhp;->b()V

    .line 45
    iget-object v0, p0, Lajc;->a:Laxn;

    invoke-virtual {v0, p1}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajc;->a:Laxn;

    invoke-virtual {v0, p1}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p2}, Lajf$a;->a()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Lajc;->a(Ljava/lang/String;Lajf$a;)V

    goto :goto_0
.end method
