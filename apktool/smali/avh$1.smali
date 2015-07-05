.class final Lavh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavh;->a(Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$childSmallView:Landroid/view/View;

.field final synthetic val$extraPaddingPixels:I

.field final synthetic val$parentBigView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lavh$1;->val$childSmallView:Landroid/view/View;

    iput p2, p0, Lavh$1;->val$extraPaddingPixels:I

    iput-object p3, p0, Lavh$1;->val$parentBigView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 595
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 596
    iget-object v1, p0, Lavh$1;->val$childSmallView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 598
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lavh$1;->val$extraPaddingPixels:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 599
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lavh$1;->val$extraPaddingPixels:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 600
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lavh$1;->val$extraPaddingPixels:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 601
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lavh$1;->val$extraPaddingPixels:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 603
    iget-object v1, p0, Lavh$1;->val$parentBigView:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lavh$1;->val$childSmallView:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 604
    return-void
.end method
