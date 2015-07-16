.class final Lcom/snapchat/android/fragments/chat/ChatFragment$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 3232
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;B)V
    .locals 0

    .prologue
    .line 3232
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$a;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 3235
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 3277
    :cond_0
    :goto_0
    return v0

    .line 3242
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->P(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->S(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 3246
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v2

    .line 3247
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3248
    if-eqz v3, :cond_0

    .line 3249
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 3250
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeight()I

    move-result v2

    if-gt v3, v2, :cond_0

    .line 3252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 3253
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 3254
    sub-float v2, v3, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 3255
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->T(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    .line 3256
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->U(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    .line 3257
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F

    .line 3259
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->T(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v0

    sub-float/2addr v0, v3

    .line 3260
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeight()I

    move-result v2

    .line 3265
    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    div-float/2addr v0, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v4, v6, v0

    .line 3266
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lze;

    move-result-object v5

    iget-object v0, v5, Lze;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v0, v5, Lze;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    move v2, v3

    :goto_1
    if-gt v2, v6, :cond_6

    iget-object v0, v5, Lze;->a:Landroid/widget/ListView;

    sub-int v7, v2, v3

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagr$c;

    if-eqz v0, :cond_5

    iget-object v7, v0, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v7}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ak()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3267
    :goto_2
    if-eqz v0, :cond_4

    .line 3268
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lze;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lze;->a(Lagr$c;F)V

    .line 3270
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$a;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0, v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(Lcom/snapchat/android/fragments/chat/ChatFragment;F)V

    move v0, v1

    .line 3271
    goto/16 :goto_0

    .line 3266
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
