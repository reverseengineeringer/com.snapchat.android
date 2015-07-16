.class public final Laqt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laqu;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/snapchat/android/ui/ImageResourceView;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/snapchat/android/ui/ImageResourceView;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/ImageResourceView;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Laqt;->a:Landroid/view/View;

    .line 28
    iput-object p2, p0, Laqt;->b:Lcom/snapchat/android/ui/ImageResourceView;

    .line 29
    iget-object v0, p0, Laqt;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResourceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Laqt;->c:I

    .line 31
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Laqt;->d:I

    .line 32
    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 37
    iget-object v1, p0, Laqt;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ImageResourceView;->getLocationOnScreen([I)V

    .line 38
    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Laqt;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResourceView;->getHeight()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Laqt;->c:I

    return v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laqt;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method
