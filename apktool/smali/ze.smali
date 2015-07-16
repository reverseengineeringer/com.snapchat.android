.class public final Lze;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ListView;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .param p1    # Landroid/widget/ListView;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lze;->a:Landroid/widget/ListView;

    .line 25
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)Z
    .locals 1
    .param p0    # Lcom/snapchat/android/model/chat/ChatFeedItem;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/model/chat/ChatFeedItem;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 167
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ak()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lze;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 117
    iget-object v0, p0, Lze;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move v1, v2

    .line 118
    :goto_0
    if-gt v1, v3, :cond_1

    .line 119
    iget-object v0, p0, Lze;->a:Landroid/widget/ListView;

    sub-int v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagr$c;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lagr$c;->a()V

    .line 123
    iget-object v4, v0, Lagr$c;->L:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 124
    iget-object v0, v0, Lagr$c;->L:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 118
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method

.method public final a(Lagr$c;F)V
    .locals 12
    .param p1    # Lagr$c;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 39
    iget-object v0, p1, Lagr$c;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    iget-object v1, p1, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/ImageResourceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    iget v2, p1, Lagr$c;->F:I

    if-nez v2, :cond_0

    iget v2, p1, Lagr$c;->G:I

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p1, Lagr$c;->C:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, p1, Lagr$c;->F:I

    .line 43
    iget-object v2, p1, Lagr$c;->C:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, p1, Lagr$c;->G:I

    .line 45
    :cond_0
    iget v2, p1, Lagr$c;->H:I

    if-nez v2, :cond_1

    iget v2, p1, Lagr$c;->I:I

    if-nez v2, :cond_1

    .line 46
    iget-object v2, p1, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/ImageResourceView;->getWidth()I

    move-result v2

    iput v2, p1, Lagr$c;->H:I

    .line 47
    iget-object v2, p1, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/ImageResourceView;->getHeight()I

    move-result v2

    iput v2, p1, Lagr$c;->I:I

    .line 50
    :cond_1
    iget v2, p0, Lze;->b:I

    iget v3, p1, Lagr$c;->F:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 52
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v2, v3

    .line 54
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 55
    sub-int v1, v3, v1

    .line 57
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 58
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 59
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 60
    iget-object v7, p1, Lagr$c;->C:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    .line 62
    iget v8, p1, Lagr$c;->F:I

    int-to-float v8, v8

    int-to-float v9, v2

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 63
    iget v8, p1, Lagr$c;->G:I

    int-to-float v8, v8

    int-to-float v9, v2

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 64
    neg-float v8, p2

    int-to-float v9, v2

    mul-float/2addr v8, v9

    neg-int v9, v3

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 65
    int-to-float v8, v2

    mul-float/2addr v8, p2

    div-float/2addr v8, v11

    .line 68
    iget v9, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    neg-int v10, v1

    if-ge v9, v10, :cond_2

    .line 69
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    .line 70
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v1, v1

    int-to-float v1, v1

    sub-float v9, p2, v9

    int-to-float v10, v2

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v1, v9

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 74
    :cond_2
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v1, v4, :cond_3

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v1, v5, :cond_3

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-eq v1, v6, :cond_4

    .line 75
    :cond_3
    iget-object v1, p1, Lagr$c;->C:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_4
    invoke-static {v8, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    iget-object v1, p1, Lagr$c;->C:Landroid/view/ViewGroup;

    neg-float v3, v8

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 81
    :cond_5
    iget-object v1, p1, Lagr$c;->L:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 82
    iget v1, p0, Lze;->b:I

    int-to-float v1, v1

    iget v3, p1, Lagr$c;->I:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, p1, Lagr$c;->H:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 83
    iget v3, p1, Lagr$c;->I:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, p2

    .line 84
    iget-object v3, p1, Lagr$c;->L:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    .line 85
    iget-object v3, p1, Lagr$c;->L:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 89
    :cond_6
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, p1, Lagr$c;->F:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Lagr$c;->J:Z

    .line 90
    return-void

    .line 89
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lze;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 177
    iget-object v0, p0, Lze;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move v1, v2

    .line 178
    :goto_0
    if-gt v1, v3, :cond_1

    .line 179
    iget-object v0, p0, Lze;->a:Landroid/widget/ListView;

    sub-int v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagr$c;

    .line 181
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lagr$c;->J:Z

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 185
    :goto_1
    return v0

    .line 178
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
