.class public final Lva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d",
        "<",
        "Luw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Luw;)F
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Luw;->k:Landroid/view/View;

    .line 67
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method private static b(Luw;)I
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Luw;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 88
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 89
    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 90
    iget v1, v2, Landroid/util/TypedValue;->type:I

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v1, v3}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 93
    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Luw;

    invoke-static {p1}, Lva;->b(Luw;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Landroid/support/v7/widget/RecyclerView$s;Z)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;FFFF)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 21
    check-cast p1, Luw;

    iget-object v1, p1, Luw;->k:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, p2

    invoke-static {p1}, Lva;->b(Luw;)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    invoke-static {p1}, Lva;->a(Luw;)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_3

    invoke-static {p1}, Lva;->a(Luw;)F

    move-result v0

    int-to-float v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    int-to-float v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method public final synthetic b(Landroid/support/v7/widget/RecyclerView$s;)Z
    .locals 1

    .prologue
    .line 21
    check-cast p1, Luw;

    iget-object v0, p1, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic c(Landroid/support/v7/widget/RecyclerView$s;)F
    .locals 1

    .prologue
    .line 21
    check-cast p1, Luw;

    invoke-static {p1}, Lva;->a(Luw;)F

    move-result v0

    return v0
.end method

.method public final bridge synthetic d(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
