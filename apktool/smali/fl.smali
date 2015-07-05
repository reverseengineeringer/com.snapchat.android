.class public final Lfl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Picture;

.field private final c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/drawable/PictureDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lfl;->a:Landroid/graphics/RectF;

    .line 40
    iput-object v0, p0, Lfl;->d:Landroid/graphics/drawable/PictureDrawable;

    .line 49
    iput-object p1, p0, Lfl;->b:Landroid/graphics/Picture;

    .line 50
    iput-object p2, p0, Lfl;->c:Landroid/graphics/RectF;

    .line 51
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/PictureDrawable;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lfl;->d:Landroid/graphics/drawable/PictureDrawable;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    iget-object v1, p0, Lfl;->b:Landroid/graphics/Picture;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    iput-object v0, p0, Lfl;->d:Landroid/graphics/drawable/PictureDrawable;

    .line 71
    :cond_0
    iget-object v0, p0, Lfl;->d:Landroid/graphics/drawable/PictureDrawable;

    return-object v0
.end method
