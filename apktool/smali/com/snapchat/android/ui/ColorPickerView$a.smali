.class final Lcom/snapchat/android/ui/ColorPickerView$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/ColorPickerView;

.field private final b:I

.field private final c:I

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/ColorPickerView;IILandroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/ui/ColorPickerView$a;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 63
    iput p2, p0, Lcom/snapchat/android/ui/ColorPickerView$a;->b:I

    .line 64
    sub-int v0, p3, p2

    iput v0, p0, Lcom/snapchat/android/ui/ColorPickerView$a;->c:I

    .line 65
    iput-object p4, p0, Lcom/snapchat/android/ui/ColorPickerView$a;->d:Landroid/view/View;

    .line 66
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v1, p0, Lcom/snapchat/android/ui/ColorPickerView$a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/snapchat/android/ui/ColorPickerView$a;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$a;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final willChangeBounds()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
