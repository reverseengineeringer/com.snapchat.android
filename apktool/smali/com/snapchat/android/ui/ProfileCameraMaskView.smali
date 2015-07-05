.class public Lcom/snapchat/android/ui/ProfileCameraMaskView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/snapchat/android/ui/ProfileCameraMaskView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/ProfileCameraMaskView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfileCameraMaskView;->c:Landroid/graphics/Paint;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfileCameraMaskView;->c:Landroid/graphics/Paint;

    .line 37
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfileCameraMaskView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfileCameraMaskView;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/snapchat/android/ui/ProfileCameraMaskView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 48
    :cond_0
    return-void
.end method
