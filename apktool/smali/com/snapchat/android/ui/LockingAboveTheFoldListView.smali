.class public Lcom/snapchat/android/ui/LockingAboveTheFoldListView;
.super Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lbr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;,
        Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;,
        Lcom/snapchat/android/ui/LockingAboveTheFoldListView$b;,
        Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lbr;"
    }
.end annotation


# instance fields
.field private A:Landroid/widget/AbsListView$OnScrollListener;

.field private B:Lbr;

.field private C:I

.field private D:I

.field private E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Landroid/widget/BaseAdapter;

.field public e:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/view/View;

.field private g:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/LockingAboveTheFoldListView",
            "<TT;>.a;"
        }
    .end annotation
.end field

.field private h:I

.field private i:F

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Landroid/view/View;

.field private q:Lapv;

.field private r:I

.field private s:F

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->i:F

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->r:I

    .line 130
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    .line 144
    iput v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->C:I

    .line 147
    new-instance v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$1;-><init>(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->a:Ljava/util/Map;

    .line 158
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->f:Landroid/view/View;

    .line 159
    new-instance v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;

    invoke-direct {v0, p0, v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;-><init>(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;B)V

    iput-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->g:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;

    .line 161
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->D:I

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 166
    invoke-super {p0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 167
    invoke-super {p0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->setScrollViewCallbacks(Lbr;)V

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 745
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mFlingRunnable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 746
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 747
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 748
    if-eqz v0, :cond_0

    .line 749
    const-string v1, "android.widget.AbsListView$FlingRunnable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "endFling"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 750
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 751
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 771
    :goto_0
    return-void

    .line 765
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$3;-><init>(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setLocked(Z)V
    .locals 3

    .prologue
    .line 212
    const-string v0, "ObservableAboveTheFoldListView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LockingAboveTheFoldListView setLocked to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-eq v0, p1, :cond_0

    .line 214
    iput-boolean p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;

    if-eqz v0, :cond_0

    .line 216
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;

    iget-object v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->p:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;->c(Landroid/view/View;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;

    invoke-interface {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;->r()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 274
    iput-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->p:Landroid/view/View;

    .line 275
    iput-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->r:I

    .line 277
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    .line 278
    iput-boolean v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->w:Z

    .line 279
    iput-boolean v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->v:Z

    iput-boolean v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->u:Z

    .line 280
    iput-boolean v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->x:Z

    .line 281
    iput v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->y:I

    .line 282
    invoke-direct {p0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setLocked(Z)V

    .line 283
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->B:Lbr;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->B:Lbr;

    invoke-interface {v0, p1}, Lbr;->a(I)V

    .line 698
    :cond_0
    return-void
.end method

.method public final a(IZZ)V
    .locals 11

    .prologue
    .line 639
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->B:Lbr;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->B:Lbr;

    invoke-interface {v0, p1, p2, p3}, Lbr;->a(IZZ)V

    .line 643
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->o:Z

    if-nez v0, :cond_2

    .line 644
    const-string v0, "ObservableAboveTheFoldListView"

    const-string v1, "CHAT-LOG: LockingAboveTheFoldListView onScrollChanged but locking is disabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    :cond_1
    :goto_0
    return-void

    .line 649
    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-nez v0, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeight()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    .line 651
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v4

    .line 652
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v6

    move v3, v4

    .line 653
    :goto_1
    if-gt v3, v6, :cond_1

    .line 654
    sub-int v0, v3, v4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 655
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$b;

    .line 656
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$b;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 657
    invoke-interface {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$b;->d()[I

    move-result-object v1

    .line 658
    invoke-interface {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$b;->e()I

    move-result v8

    .line 659
    const/4 v2, 0x1

    aget v1, v1, v2

    div-int/lit8 v2, v8, 0x2

    add-int v9, v1, v2

    .line 660
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getScrollState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    move v2, v1

    .line 661
    :goto_2
    if-eqz v2, :cond_4

    const/16 v1, 0xa

    .line 662
    :goto_3
    sub-int v10, v5, v1

    if-lt v9, v10, :cond_5

    add-int/2addr v1, v5

    if-gt v9, v1, :cond_5

    .line 664
    iput-object v7, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->p:Landroid/view/View;

    .line 665
    invoke-interface {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$b;->c()Lapv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    .line 666
    iput v3, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->r:I

    .line 667
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setLocked(Z)V

    .line 668
    if-eqz v2, :cond_1

    .line 672
    div-int/lit8 v0, v8, 0x2

    sub-int v0, v5, v0

    iget-object v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v1}, Lapv;->c()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v1}, Lapv;->d()F

    move-result v1

    sub-float/2addr v0, v1

    .line 674
    float-to-int v0, v0

    invoke-virtual {p0, v3, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setSelectionFromTop(II)V

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->z:Z

    .line 676
    invoke-direct {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->d()V

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->z:Z

    goto :goto_0

    .line 660
    :cond_3
    const/4 v1, 0x0

    move v2, v1

    goto :goto_2

    .line 661
    :cond_4
    const/4 v1, 0x5

    goto :goto_3

    .line 653
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 525
    iget v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    const-string v1, "ObservableAboveTheFoldListView"

    const-string v2, "mMeasuredHeight has not been initialized yet. Aborting updateFooter()."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 531
    :cond_1
    iget-boolean v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;

    invoke-interface {v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;->q()I

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 535
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 536
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v2

    .line 537
    if-ltz v2, :cond_0

    .line 540
    :goto_1
    if-gt v1, v2, :cond_5

    .line 542
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 545
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 546
    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 547
    :cond_2
    iget-object v4, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;

    invoke-interface {v4, v3}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 549
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 550
    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 552
    :cond_3
    iget-object v5, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->f:Landroid/view/View;

    if-eq v4, v5, :cond_4

    .line 553
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 554
    iget-object v5, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    :cond_5
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getPaddingTop()I

    move-result v2

    sub-int v2, v1, v2

    .line 560
    iget-object v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 561
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 562
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 565
    if-lt v0, v2, :cond_9

    .line 566
    :goto_3
    sub-int v0, v2, v0

    iget v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->m:I

    sub-int/2addr v0, v1

    .line 569
    iget-boolean v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->n:Z

    if-eqz v1, :cond_7

    .line 570
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 571
    sub-int/2addr v0, v1

    .line 576
    :cond_7
    iget v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->m:I

    if-ge v0, v1, :cond_8

    .line 577
    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->m:I

    .line 579
    :cond_8
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b(I)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    move v1, v0

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_3
.end method

.method public final b(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 597
    if-gez p1, :cond_0

    move p1, v0

    .line 598
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 600
    iget v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->h:I

    if-ne v1, v2, :cond_2

    .line 610
    :cond_1
    :goto_0
    return v0

    .line 602
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 603
    if-eqz v2, :cond_1

    .line 604
    iput v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->h:I

    .line 605
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 606
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 609
    invoke-direct {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e()V

    .line 610
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$2;-><init>(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->post(Ljava/lang/Runnable;)Z

    .line 633
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->o:Z

    if-nez v0, :cond_0

    .line 290
    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 451
    :goto_0
    return v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 295
    if-nez v1, :cond_1

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->l:F

    .line 299
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-eqz v0, :cond_1d

    .line 300
    const/4 v2, 0x1

    .line 301
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v0}, Lapv;->a()[I

    move-result-object v0

    const/4 v3, 0x1

    aget v3, v0, v3

    if-gez v3, :cond_2

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v3}, Lapv;->b()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 302
    :goto_1
    iget-object v3, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v3}, Lapv;->a()[I

    move-result-object v3

    .line 303
    iget-object v4, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v4}, Lapv;->c()I

    move-result v6

    .line 304
    iget-object v4, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v4}, Lapv;->d()F

    move-result v4

    float-to-int v7, v4

    .line 306
    const/4 v4, 0x1

    aget v8, v3, v4

    .line 308
    iget-object v3, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v3}, Lapv;->b()I

    move-result v9

    .line 309
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeight()I

    move-result v10

    .line 310
    add-int v11, v8, v9

    .line 311
    neg-int v3, v6

    sub-int v4, v3, v7

    .line 312
    sub-int v3, v10, v9

    sub-int/2addr v3, v6

    sub-int/2addr v3, v7

    add-int/lit8 v5, v3, -0x1

    .line 313
    sub-int v3, v10, v9

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v6

    sub-int/2addr v3, v7

    .line 315
    packed-switch v1, :pswitch_data_0

    .line 441
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->k:F

    .line 442
    if-eqz v2, :cond_1c

    .line 443
    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 301
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 318
    :pswitch_0
    if-eqz v0, :cond_3

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->w:Z

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    goto :goto_2

    .line 337
    :pswitch_1
    if-ltz v8, :cond_5

    const/16 v0, 0xc8

    if-gt v8, v0, :cond_5

    if-gt v11, v10, :cond_5

    add-int/lit16 v0, v10, -0xc8

    if-lt v11, v0, :cond_5

    .line 340
    iput v3, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->y:I

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->x:Z

    goto :goto_2

    .line 342
    :cond_5
    if-ltz v8, :cond_6

    const/16 v0, 0xc8

    if-gt v8, v0, :cond_6

    .line 343
    iput v4, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->y:I

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->x:Z

    goto :goto_2

    .line 345
    :cond_6
    if-gt v11, v10, :cond_7

    add-int/lit16 v0, v10, -0xc8

    if-lt v11, v0, :cond_7

    .line 346
    iput v5, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->y:I

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->x:Z

    goto :goto_2

    .line 349
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->y:I

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->x:Z

    goto :goto_2

    .line 355
    :pswitch_2
    iget v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v1, v1, v6

    if-nez v1, :cond_8

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    .line 357
    iget v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    iget v6, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->k:F

    sub-float/2addr v1, v6

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-lez v1, :cond_10

    sget v1, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->b:I

    :goto_3
    iput v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->t:I

    .line 361
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v6, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->l:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v6, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->D:I

    int-to-float v6, v6

    cmpg-float v1, v1, v6

    if-lez v1, :cond_3

    .line 362
    if-eqz v0, :cond_1b

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    sub-float v1, v0, v1

    .line 370
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->w:Z

    if-eqz v0, :cond_b

    if-le v9, v10, :cond_b

    .line 371
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->u:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_a

    :cond_9
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->v:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_b

    .line 372
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->w:Z

    .line 383
    :cond_b
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->w:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->t:I

    sget v6, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->b:I

    if-ne v0, v6, :cond_c

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_c

    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->v:Z

    if-nez v0, :cond_f

    :cond_c
    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->t:I

    sget v6, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->b:I

    if-ne v0, v6, :cond_d

    const/high16 v0, 0x43480000    # 200.0f

    cmpl-float v0, v1, v0

    if-gez v0, :cond_f

    :cond_d
    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->t:I

    sget v6, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->a:I

    if-ne v0, v6, :cond_e

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->u:Z

    if-nez v0, :cond_f

    :cond_e
    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->t:I

    sget v6, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->a:I

    if-ne v0, v6, :cond_11

    const/high16 v0, -0x3cb80000    # -200.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_11

    .line 390
    :cond_f
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->a()V

    goto/16 :goto_2

    .line 357
    :cond_10
    sget v1, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->a:I

    goto :goto_3

    .line 394
    :cond_11
    if-gez v8, :cond_12

    if-gt v11, v10, :cond_1a

    .line 396
    :cond_12
    if-ltz v8, :cond_15

    if-gt v11, v10, :cond_15

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->v:Z

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->u:Z

    move v0, v3

    .line 421
    :goto_4
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_13

    iget v3, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->t:I

    sget v4, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->b:I

    if-eq v3, v4, :cond_14

    :cond_13
    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1e

    iget v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->t:I

    sget v3, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->a:I

    if-ne v1, v3, :cond_1e

    .line 427
    :cond_14
    iget v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->r:I

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setSelectionFromTop(II)V

    .line 428
    const/4 v0, 0x0

    :goto_5
    move v2, v0

    .line 430
    goto/16 :goto_2

    .line 400
    :cond_15
    if-ltz v8, :cond_17

    .line 403
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->u:Z

    if-nez v0, :cond_1f

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->u:Z

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    .line 410
    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    iget v3, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->k:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_16

    sget v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->b:I

    :goto_6
    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->t:I

    move v0, v4

    goto :goto_4

    :cond_16
    sget v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->a:I

    goto :goto_6

    .line 415
    :cond_17
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->v:Z

    if-nez v0, :cond_18

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->v:Z

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    .line 418
    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->s:F

    iget v3, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->k:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_19

    sget v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->b:I

    :goto_7
    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->t:I

    :cond_18
    move v0, v5

    goto :goto_4

    :cond_19
    sget v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$d;->a:I

    goto :goto_7

    .line 431
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->v:Z

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->u:Z

    goto/16 :goto_2

    .line 435
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->v:Z

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->u:Z

    goto/16 :goto_2

    .line 446
    :cond_1c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 449
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->k:F

    .line 451
    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_1e
    move v0, v2

    goto :goto_5

    :cond_1f
    move v0, v4

    goto/16 :goto_4

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->j:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 493
    invoke-super {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->onAttachedToWindow()V

    .line 494
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 498
    iget-object v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 500
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 487
    invoke-super {p0, p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->onMeasure(II)V

    .line 488
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->i:F

    .line 489
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->A:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->A:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 732
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 706
    iput p2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->j:I

    .line 708
    iget-object v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->A:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->A:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 712
    :cond_0
    if-nez p2, :cond_3

    .line 713
    invoke-direct {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e()V

    .line 721
    iget-boolean v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->z:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v2}, Lapv;->a()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->q:Lapv;

    invoke-interface {v4}, Lapv;->b()I

    move-result v4

    if-gt v4, v3, :cond_4

    div-int/lit8 v3, v3, 0x2

    aget v2, v2, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    if-gt v2, v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 722
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->a()V

    .line 725
    :cond_3
    return-void

    .line 721
    :cond_4
    aget v5, v2, v1

    if-gtz v5, :cond_5

    aget v2, v2, v1

    add-int/2addr v2, v4

    if-ge v2, v3, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b:Z

    if-eqz v0, :cond_1

    .line 472
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->onSizeChanged(IIII)V

    .line 474
    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->C:I

    if-le p2, v0, :cond_0

    iput p2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->C:I

    .line 477
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->C:I

    sub-int/2addr v0, p2

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    .line 478
    :goto_0
    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 483
    :cond_1
    return-void

    .line 477
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 456
    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 458
    iget-boolean v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->x:Z

    if-eqz v1, :cond_0

    .line 460
    iput-boolean v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->z:Z

    .line 461
    invoke-direct {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->d()V

    .line 462
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->z:Z

    .line 463
    iget v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->r:I

    iget v2, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setSelectionFromTop(II)V

    .line 466
    :cond_0
    return v0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iput-object p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->d:Landroid/widget/BaseAdapter;

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->g:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->g:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;

    iget-object v1, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->a:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->a:Landroid/widget/BaseAdapter;

    iget-object v1, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 176
    :cond_1
    return-void
.end method

.method public setInterface(Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    iput-object p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;

    .line 180
    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b:Z

    .line 198
    return-void
.end method

.method public setLockingEnabled(Z)V
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->o:Z

    .line 205
    return-void
.end method

.method public setMinimumFooterHeight(I)V
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->m:I

    .line 184
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->A:Landroid/widget/AbsListView$OnScrollListener;

    .line 189
    return-void
.end method

.method public setScrollViewCallbacks(Lbr;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->B:Lbr;

    .line 194
    return-void
.end method

.method public setShouldSubtractStatusBarHeightFromFooter(Z)V
    .locals 0

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->n:Z

    .line 590
    return-void
.end method
