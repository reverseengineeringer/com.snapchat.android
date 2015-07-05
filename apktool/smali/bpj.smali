.class final Lbpj;
.super Lbpi;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lbpi;-><init>()V

    .line 31
    iput-object p1, p0, Lbpj;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lbpg;)Z
    .locals 2

    .prologue
    .line 35
    iget v0, p1, Lbpg;->e:I

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const-string v0, "android.resource"

    iget-object v1, p1, Lbpg;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lbpg;)Lbpi$a;
    .locals 6

    .prologue
    .line 43
    iget-object v0, p0, Lbpj;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbpo;->a(Landroid/content/Context;Lbpg;)Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    invoke-static {v0, p1}, Lbpo;->a(Landroid/content/res/Resources;Lbpg;)I

    move-result v1

    .line 45
    new-instance v2, Lbpi$a;

    invoke-static {p1}, Lbpj;->d(Lbpg;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v3}, Lbpj;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, p1, Lbpg;->h:I

    iget v5, p1, Lbpg;->i:I

    invoke-static {v4, v5, v3, p1}, Lbpj;->a(IILandroid/graphics/BitmapFactory$Options;Lbpg;)V

    :cond_0
    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lbpd$d;->b:Lbpd$d;

    invoke-direct {v2, v0, v1}, Lbpi$a;-><init>(Landroid/graphics/Bitmap;Lbpd$d;)V

    return-object v2
.end method
