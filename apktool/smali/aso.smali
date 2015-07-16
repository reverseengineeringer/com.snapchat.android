.class public final Laso;
.super Lasm;
.source "SourceFile"


# instance fields
.field protected b:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lasm;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Laso;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Laso;->f:Z

    .line 42
    iput-object p1, p0, Laso;->c:Ljava/lang/String;

    .line 43
    iput p2, p0, Laso;->d:I

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Laso;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(ZLandroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 58
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Laso;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 66
    iget-object v4, p0, Laso;->b:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Laso;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Laso;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v0, v1

    .line 68
    :cond_3
    if-eqz v0, :cond_4

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Laso;->b:Landroid/graphics/Bitmap;

    .line 73
    :cond_4
    iget-object v0, p0, Laso;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4, v5}, Lavp;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 77
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lawo;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Laso;->b:Landroid/graphics/Bitmap;

    .line 80
    :cond_5
    iget-object v0, p0, Laso;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Lavp;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Laso;->b:Landroid/graphics/Bitmap;

    .line 85
    :cond_6
    :try_start_0
    iget v0, p0, Laso;->d:I

    iget-object v3, p0, Laso;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, p2, v3, v2}, Lcom/snapchat/android/util/PhotoEffectTask;->a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Laso;->a:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Laso;->a:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Laso;->b:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 88
    invoke-static {p2, v2}, Lavp;->b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 89
    iget-object v2, p0, Laso;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Laso;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    iput-boolean v1, p0, Laso;->f:Z

    goto/16 :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 93
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set the bitmap shader"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    iget-object v0, p0, Laso;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    iput-boolean v1, p0, Laso;->f:Z

    goto/16 :goto_0

    .line 95
    :catchall_0
    move-exception v0

    iget-object v2, p0, Laso;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    iput-boolean v1, p0, Laso;->f:Z

    throw v0
.end method

.method public final b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->BACKGROUNDFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Laso;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    iget-object v1, p0, Laso;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lawo;->a(Landroid/graphics/Bitmap;)V

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Laso;->b:Landroid/graphics/Bitmap;

    .line 111
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Laso;->f:Z

    return v0
.end method
