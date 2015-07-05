.class public final Lbpg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Landroid/net/Uri;

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z

.field i:F

.field j:F

.field k:F

.field l:Z

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbpm;",
            ">;"
        }
    .end annotation
.end field

.field n:Landroid/graphics/Bitmap$Config;

.field o:I


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap$Config;)V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lbpg$a;->a:Landroid/net/Uri;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lbpg$a;->b:I

    .line 221
    iput-object p2, p0, Lbpg$a;->n:Landroid/graphics/Bitmap$Config;

    .line 222
    return-void
.end method


# virtual methods
.method public final a(II)Lbpg$a;
    .locals 2

    .prologue
    .line 298
    if-gez p1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    if-gez p2, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one dimension has to be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_2
    iput p1, p0, Lbpg$a;->d:I

    .line 308
    iput p2, p0, Lbpg$a;->e:I

    .line 309
    return-object p0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lbpg$a;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lbpg$a;->b:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
