.class public final Laqp;
.super Lbpi;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Lbpi;-><init>()V

    .line 38
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Laqp;->a:Landroid/content/ContentResolver;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lbpg;)Z
    .locals 2

    .prologue
    .line 46
    const-string v0, "content"

    iget-object v1, p1, Lbpg;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    iget-object v1, p1, Lbpg;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lbpg;)Lbpi$a;
    .locals 5

    .prologue
    .line 57
    iget-object v0, p1, Lbpg;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Laqp;->a:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    new-instance v1, Lbpi$a;

    sget-object v2, Lbpd$d;->b:Lbpd$d;

    invoke-direct {v1, v0, v2}, Lbpi$a;-><init>(Landroid/graphics/Bitmap;Lbpd$d;)V

    return-object v1
.end method
