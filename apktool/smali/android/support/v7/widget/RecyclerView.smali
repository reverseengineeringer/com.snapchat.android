.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$g;,
        Landroid/support/v7/widget/RecyclerView$d;,
        Landroid/support/v7/widget/RecyclerView$e;,
        Landroid/support/v7/widget/RecyclerView$p;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$b;,
        Landroid/support/v7/widget/RecyclerView$o;,
        Landroid/support/v7/widget/RecyclerView$c;,
        Landroid/support/v7/widget/RecyclerView$LayoutParams;,
        Landroid/support/v7/widget/RecyclerView$s;,
        Landroid/support/v7/widget/RecyclerView$m;,
        Landroid/support/v7/widget/RecyclerView$j;,
        Landroid/support/v7/widget/RecyclerView$i;,
        Landroid/support/v7/widget/RecyclerView$f;,
        Landroid/support/v7/widget/RecyclerView$h;,
        Landroid/support/v7/widget/RecyclerView$a;,
        Landroid/support/v7/widget/RecyclerView$q;,
        Landroid/support/v7/widget/RecyclerView$l;,
        Landroid/support/v7/widget/RecyclerView$k;,
        Landroid/support/v7/widget/RecyclerView$n;,
        Landroid/support/v7/widget/RecyclerView$r;
    }
.end annotation


# static fields
.field private static final ab:Landroid/view/animation/Interpolator;

.field private static final p:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private final F:Z

.field private final G:Landroid/view/accessibility/AccessibilityManager;

.field private H:Z

.field private I:Z

.field private J:I

.field private K:I

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private final R:I

.field private final S:I

.field private T:Landroid/support/v7/widget/RecyclerView$j;

.field private U:Landroid/support/v7/widget/RecyclerView$d$a;

.field private V:Z

.field private W:Lai;

.field public final a:Landroid/support/v7/widget/RecyclerView$l;

.field private aa:Ljava/lang/Runnable;

.field b:Lac;

.field public c:Lad;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/support/v7/widget/RecyclerView$a;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$i;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/support/v4/widget/EdgeEffectCompat;

.field h:Landroid/support/v4/widget/EdgeEffectCompat;

.field i:Landroid/support/v4/widget/EdgeEffectCompat;

.field j:Landroid/support/v4/widget/EdgeEffectCompat;

.field k:Landroid/support/v7/widget/RecyclerView$d;

.field final l:Landroid/support/v7/widget/RecyclerView$r;

.field public final m:Landroid/support/v7/widget/RecyclerView$p;

.field n:Z

.field o:Z

.field private final q:Landroid/support/v7/widget/RecyclerView$n;

.field private r:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private s:Z

.field private final t:Ljava/lang/Runnable;

.field private final u:Landroid/graphics/Rect;

.field private v:Landroid/support/v7/widget/RecyclerView$h;

.field private w:Landroid/support/v7/widget/RecyclerView$m;

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$f;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/support/v7/widget/RecyclerView$i;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->p:Z

    .line 266
    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/view/animation/Interpolator;

    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance v0, Landroid/support/v7/widget/RecyclerView$n;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/support/v7/widget/RecyclerView;B)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$n;

    .line 128
    new-instance v0, Landroid/support/v7/widget/RecyclerView$l;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    .line 151
    new-instance v0, Landroid/support/v7/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    .line 193
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    .line 203
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    .line 207
    new-instance v0, Lae;

    invoke-direct {v0}, Lae;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    .line 232
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 243
    new-instance v0, Landroid/support/v7/widget/RecyclerView$r;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$r;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$r;

    .line 245
    new-instance v0, Landroid/support/v7/widget/RecyclerView$p;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$p;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    .line 250
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    .line 251
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    .line 252
    new-instance v0, Landroid/support/v7/widget/RecyclerView$e;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/RecyclerView$e;-><init>(Landroid/support/v7/widget/RecyclerView;B)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$d$a;

    .line 254
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    .line 256
    new-instance v0, Landroid/support/v7/widget/RecyclerView$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Ljava/lang/Runnable;

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 285
    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Z

    .line 287
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 289
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 290
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 291
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$d$a;

    iput-object v2, v0, Landroid/support/v7/widget/RecyclerView$d;->h:Landroid/support/v7/widget/RecyclerView$d$a;

    .line 294
    new-instance v0, Lac;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$5;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v2}, Lac;-><init>(Lac$a;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    .line 295
    new-instance v0, Lad;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$4;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/RecyclerView$4;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v2}, Lad;-><init>(Lad$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    .line 297
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 302
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/view/accessibility/AccessibilityManager;

    .line 304
    new-instance v0, Lai;

    invoke-direct {v0, p0}, Lai;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Lai;)V

    .line 305
    return-void

    :cond_2
    move v0, v2

    .line 285
    goto :goto_0
.end method

.method private a(II)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 974
    .line 976
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    .line 977
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_10

    .line 978
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    .line 980
    if-eqz p1, :cond_f

    .line 981
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p1, v2, v3}, Landroid/support/v7/widget/RecyclerView$h;->a(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v3

    .line 982
    sub-int v4, p1, v3

    .line 984
    :goto_0
    if-eqz p2, :cond_e

    .line 985
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p2, v2, v5}, Landroid/support/v7/widget/RecyclerView$h;->b(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    .line 986
    sub-int v2, p2, v0

    .line 988
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 990
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v5}, Lad;->a()I

    move-result v7

    move v6, v1

    .line 991
    :goto_2
    if-ge v6, v7, :cond_3

    .line 992
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v5, v6}, Lad;->b(I)Landroid/view/View;

    move-result-object v8

    .line 993
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v5

    .line 994
    if-eqz v5, :cond_1

    iget-object v9, v5, Landroid/support/v7/widget/RecyclerView$s;->h:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v9, :cond_1

    .line 995
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$s;->h:Landroid/support/v7/widget/RecyclerView$s;

    .line 996
    if-eqz v5, :cond_2

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    .line 997
    :goto_3
    if-eqz v5, :cond_1

    .line 998
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 999
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1000
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    if-eq v8, v10, :cond_1

    .line 1001
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v5, v9, v8, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 991
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2

    .line 996
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 1009
    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    .line 1010
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    move v12, v3

    move v3, v2

    move v2, v12

    .line 1012
    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1013
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1015
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    .line 1016
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    .line 1017
    if-gez v4, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v6, v4

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    :cond_5
    :goto_5
    if-gez v3, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    :cond_6
    :goto_6
    if-nez v4, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1019
    :cond_8
    if-nez v2, :cond_9

    if-eqz v0, :cond_a

    .line 1020
    :cond_9
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 1021
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$j;

    if-eqz v1, :cond_a

    .line 1022
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v1, p0, v2, v0}, Landroid/support/v7/widget/RecyclerView$j;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 1025
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1026
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1028
    :cond_b
    return-void

    .line 1017
    :cond_c
    if-lez v4, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v6, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_5

    :cond_d
    if-lez v3, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v6, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_6

    :cond_e
    move v0, v1

    move v2, v1

    goto/16 :goto_1

    :cond_f
    move v3, v1

    move v4, v1

    goto/16 :goto_0

    :cond_10
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_4
.end method

.method private a(Landroid/support/v4/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 2128
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_3

    .line 2129
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    .line 2130
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v1

    .line 2131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$g;

    .line 2132
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v2, :cond_0

    .line 2133
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    :cond_0
    invoke-virtual {p1, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, v5, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$l;)V

    .line 2128
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 2139
    :cond_1
    if-eqz v0, :cond_2

    .line 2140
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    goto :goto_1

    .line 2143
    :cond_2
    new-instance v0, Landroid/support/v7/widget/RecyclerView$g;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$g;-><init>(Landroid/support/v7/widget/RecyclerView$s;IIII)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    goto :goto_1

    .line 2147
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2148
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$a;ZZ)V
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 580
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_3

    .line 584
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$d;->d()V

    .line 591
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 596
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->a()V

    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    .line 598
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    .line 599
    if-eqz p1, :cond_4

    .line 600
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 601
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$l;->a()V

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$l;->b()Landroid/support/v7/widget/RecyclerView$k;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$k;->b()V

    :cond_5
    if-nez p2, :cond_6

    iget v0, v1, Landroid/support/v7/widget/RecyclerView$k;->b:I

    if-nez v0, :cond_6

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$k;->a()V

    .line 607
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    .line 608
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 609
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$g;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2177
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView$s;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    .line 2178
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 2179
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$g;->b:I

    .line 2180
    iget v3, p1, Landroid/support/v7/widget/RecyclerView$g;->c:I

    .line 2181
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2182
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2183
    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_2

    .line 2184
    :cond_0
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView$s;->a(Z)V

    .line 2185
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 2192
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$d;->a(Landroid/support/v7/widget/RecyclerView$s;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2194
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 2206
    :cond_1
    :goto_0
    return-void

    .line 2201
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView$s;->a(Z)V

    .line 2202
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$d;->a(Landroid/support/v7/widget/RecyclerView$s;)Z

    .line 2203
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 707
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    .line 708
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 709
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$l;->b(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 710
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v3, v1}, Lad;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 718
    :goto_1
    return-void

    .line 708
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 713
    :cond_1
    if-nez v0, :cond_2

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0, v2, v5, v1}, Lad;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 716
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    iget-object v1, v0, Lad;->a:Lad$b;

    invoke-interface {v1, v2}, Lad$b;->a(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "view is not a child, cannot hide "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v3, v0, Lad;->b:Lad$a;

    invoke-virtual {v3, v1}, Lad$a;->a(I)V

    iget-object v0, v0, Lad;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 1727
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1728
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    if-ne v1, v2, :cond_0

    .line 1730
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1731
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 1732
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 1733
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 1735
    :cond_0
    return-void

    .line 1730
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    return p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$s;)J
    .locals 2

    .prologue
    .line 2119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroid/support/v7/widget/RecyclerView$s;->d:J

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$s;->b:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method static b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;
    .locals 1

    .prologue
    .line 2576
    if-nez p0, :cond_0

    .line 2577
    const/4 v0, 0x0

    .line 2579
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    goto :goto_0
.end method

.method private b(II)V
    .locals 2

    .prologue
    .line 1269
    const/4 v0, 0x0

    .line 1270
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1271
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1273
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1274
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1276
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1277
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1279
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1280
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1282
    :cond_3
    if-eqz v0, :cond_4

    .line 1283
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1285
    :cond_4
    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    return v0
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2589
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    .line 2590
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    return v0
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    return-object v0
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 4460
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 4461
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    .line 4463
    :cond_0
    return-void
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    iget-object v3, v2, Lad;->a:Lad$b;

    invoke-interface {v3, p1}, Lad$b;->a(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v2, v2, Lad;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$l;->b(Landroid/support/v7/widget/RecyclerView$s;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    return v0

    :cond_1
    iget-object v4, v2, Lad;->b:Lad$a;

    invoke-virtual {v4, v3}, Lad$a;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lad;->b:Lad$a;

    invoke-virtual {v4, v3}, Lad$a;->c(I)Z

    iget-object v4, v2, Lad;->a:Lad$b;

    invoke-interface {v4, v3}, Lad$b;->a(I)V

    iget-object v2, v2, Lad;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    return-void
.end method

.method static synthetic g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    return-object v0
.end method

.method static synthetic h()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->p:Z

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 968
    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    return-void
.end method

.method static synthetic k(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$j;

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 1220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1221
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 1222
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$r;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$r;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 1229
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->s()V

    .line 1230
    return-void
.end method

.method static synthetic l(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 1258
    const/4 v0, 0x0

    .line 1259
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1260
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1261
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1262
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1263
    :cond_3
    if-eqz v0, :cond_4

    .line 1264
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1266
    :cond_4
    return-void
.end method

.method static synthetic m(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    return v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1364
    return-void
.end method

.method static synthetic n(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Z

    return v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1722
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 1723
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1724
    return-void
.end method

.method static synthetic o(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    return v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 1820
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    .line 1824
    :cond_0
    return-void
.end method

.method static synthetic p(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    return v0
.end method

.method static synthetic q(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method private q()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1837
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->a()V

    .line 1841
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 1842
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->a()V

    .line 1847
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1848
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->b()V

    .line 1852
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v2

    .line 1854
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$h;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v3, :cond_7

    :cond_4
    move v3, v2

    :goto_2
    iput-boolean v3, v4, Landroid/support/v7/widget/RecyclerView$p;->j:Z

    .line 1858
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$p;->j:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_3
    if-eqz v0, :cond_9

    :goto_4
    iput-boolean v2, v3, Landroid/support/v7/widget/RecyclerView$p;->k:Z

    .line 1861
    return-void

    .line 1850
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->e()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1852
    goto :goto_1

    :cond_7
    move v3, v1

    .line 1854
    goto :goto_2

    :cond_8
    move v0, v1

    .line 1858
    goto :goto_3

    :cond_9
    move v2, v1

    goto :goto_4
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2252
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->b()I

    move-result v3

    move v2, v1

    .line 2253
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2254
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0, v2}, Lad;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2255
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 2253
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2257
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2258
    :cond_2
    return-void
.end method

.method static synthetic r(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Z

    return v0
.end method

.method static synthetic s(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2375
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->b()I

    move-result v2

    move v0, v1

    .line 2376
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2377
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v3, v0}, Lad;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v3

    .line 2378
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2379
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->a()V

    .line 2376
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2382
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2383
    :cond_4
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-ne p1, v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 818
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 819
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 820
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 822
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$j;

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$j;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 825
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->f(I)V

    goto :goto_0
.end method

.method static synthetic t(Landroid/support/v7/widget/RecyclerView;)Lai;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Lai;

    return-object v0
.end method

.method private t()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x6

    .line 2533
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v1}, Lad;->b()I

    move-result v2

    move v1, v0

    .line 2534
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2535
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v3, v1}, Lad;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v3

    .line 2536
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2537
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    .line 2534
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2540
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 2541
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v1, :cond_3

    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_5

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$l;->c(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 2542
    :cond_5
    return-void
.end method

.method static synthetic u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/RecyclerView$m;

    return-object v0
.end method

.method static synthetic v(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    return v0
.end method

.method static synthetic w(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$r;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$r;

    return-object v0
.end method


# virtual methods
.method public final a(IZ)Landroid/support/v7/widget/RecyclerView$s;
    .locals 4

    .prologue
    .line 2618
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->b()I

    move-result v2

    .line 2619
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 2620
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0, v1}, Lad;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    .line 2621
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2622
    if-eqz p2, :cond_1

    .line 2623
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-ne v3, p1, :cond_2

    .line 2634
    :cond_0
    :goto_1
    return-object v0

    .line 2626
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 2619
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2634
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;
    .locals 3

    .prologue
    .line 2567
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2568
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2572
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    return-object v0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 1161
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-nez v0, :cond_0

    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 1163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 1165
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 915
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->b(I)V

    .line 917
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 918
    return-void
.end method

.method final a(IIZ)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2438
    add-int v1, p1, p2

    .line 2439
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->b()I

    move-result v2

    .line 2440
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 2441
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v3, v0}, Lad;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v3

    .line 2442
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2443
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-lt v4, v1, :cond_1

    .line 2449
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/RecyclerView$s;->a(IZ)V

    .line 2450
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v7, v3, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    .line 2440
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2451
    :cond_1
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-lt v4, p1, :cond_0

    .line 2456
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    invoke-virtual {v3, v5, p3}, Landroid/support/v7/widget/RecyclerView$s;->a(IZ)V

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$s;->b:I

    .line 2458
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v7, v3, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    goto :goto_1

    .line 2462
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    add-int v3, p1, p2

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v4

    if-lt v4, v3, :cond_4

    neg-int v4, p2

    invoke-virtual {v0, v4, p3}, Landroid/support/v7/widget/RecyclerView$s;->a(IZ)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v4

    if-lt v4, p1, :cond_3

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$l;->c(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    goto :goto_3

    .line 2463
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2464
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$a;ZZ)V

    .line 550
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    .line 551
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 552
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$f;)V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 873
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1460
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    if-eqz v0, :cond_1

    .line 1461
    if-nez p1, :cond_0

    .line 1462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_1
    return-void
.end method

.method final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1168
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_1

    .line 1169
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1173
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 1174
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 1176
    :cond_1
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1402
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1405
    return-void
.end method

.method public final b(I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 1

    .prologue
    .line 2614
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    return-object v0
.end method

.method final b()V
    .locals 4

    .prologue
    .line 1310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1320
    :goto_0
    return-void

    .line 1313
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1314
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1318
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method final c()V
    .locals 4

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1326
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1327
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1331
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2333
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->e(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->f(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2734
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2735
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    if-nez v1, :cond_0

    .line 2736
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 2751
    :goto_0
    return-object v0

    .line 2739
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 2740
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2741
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 2742
    :goto_1
    if-ge v3, v5, :cond_1

    .line 2743
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2744
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$f;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 2745
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 2746
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 2747
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 2748
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 2742
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 2750
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    move-object v0, v2

    .line 2751
    goto :goto_0
.end method

.method final d()V
    .locals 4

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1339
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1340
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2262
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2264
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 2265
    :goto_0
    if-ge v3, v4, :cond_0

    .line 2266
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$f;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p1, p0, v5}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 2265
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 2271
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2273
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 2274
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2275
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2276
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 2277
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2279
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2281
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v3, :cond_1

    .line 2282
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2284
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    .line 2285
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2287
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2289
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 2290
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 2291
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2292
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2293
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    .line 2294
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2296
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2298
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2299
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v4, :cond_c

    .line 2300
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2304
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    .line 2305
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2311
    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$d;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2316
    :goto_8
    if-eqz v2, :cond_6

    .line 2317
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2319
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 2273
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 2276
    goto/16 :goto_2

    :cond_9
    move v3, v1

    .line 2284
    goto/16 :goto_4

    :cond_a
    move v3, v1

    .line 2290
    goto/16 :goto_5

    :cond_b
    move v3, v1

    .line 2293
    goto :goto_6

    .line 2302
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method final e()V
    .locals 4

    .prologue
    .line 1350
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1360
    :goto_0
    return-void

    .line 1353
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1354
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1358
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$d;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 1370
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 1375
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1376
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v1, :cond_0

    .line 1377
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 1378
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->c(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v0

    .line 1379
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1381
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method final g()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1886
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v0, :cond_0

    .line 2097
    :goto_0
    return-void

    .line 1890
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1891
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 1892
    iput-boolean v9, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    .line 1894
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 1896
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->j:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :goto_1
    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    .line 1898
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    .line 1900
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$p;->k:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    .line 1901
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$p;->e:I

    .line 1903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->j:Z

    if-eqz v0, :cond_4

    .line 1905
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1906
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1907
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->a()I

    move-result v10

    move v6, v8

    .line 1908
    :goto_2
    if-ge v6, v10, :cond_4

    .line 1909
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0, v6}, Lad;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v1

    .line 1910
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v0, :cond_2

    .line 1911
    :cond_1
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    .line 1914
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$g;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$g;-><init>(Landroid/support/v7/widget/RecyclerView$s;IIII)V

    invoke-virtual {v11, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_3
    move-object v0, v7

    .line 1896
    goto :goto_1

    .line 1918
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->k:Z

    if-eqz v0, :cond_d

    .line 1925
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->b()I

    move-result v1

    move v0, v8

    :goto_3
    if-ge v0, v1, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v2, v0}, Lad;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, v2, Landroid/support/v7/widget/RecyclerView$s;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    iget v3, v2, Landroid/support/v7/widget/RecyclerView$s;->b:I

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$s;->c:I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1927
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_8

    .line 1928
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->a()I

    move-result v1

    move v0, v8

    .line 1929
    :goto_4
    if-ge v0, v1, :cond_8

    .line 1930
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v2, v0}, Lad;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v2

    .line 1931
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1932
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$s;)J

    move-result-wide v4

    .line 1933
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1939
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    .line 1940
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v8, v1, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    .line 1942
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 1943
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    .line 1945
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move v1, v8

    .line 1946
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->a()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 1948
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0, v1}, Lad;->b(I)Landroid/view/View;

    move-result-object v4

    .line 1949
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v0

    if-nez v0, :cond_9

    move v2, v8

    .line 1950
    :goto_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_25

    .line 1953
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    .line 1954
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    if-ne v0, v4, :cond_a

    move v0, v9

    .line 1959
    :goto_7
    if-nez v0, :cond_9

    .line 1960
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v0, v2, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1952
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 1965
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 1966
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->c()V

    move-object v6, v3

    .line 1983
    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$p;->e:I

    .line 1984
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput v8, v0, Landroid/support/v7/widget/RecyclerView$p;->g:I

    .line 1987
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v8, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    .line 1988
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 1990
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v8, v0, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    .line 1991
    iput-object v7, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1994
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_f

    move v0, v9

    :goto_9
    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView$p;->j:Z

    .line 1996
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->j:Z

    if-eqz v0, :cond_22

    .line 1998
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 2000
    :goto_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->a()I

    move-result v11

    move v10, v8

    .line 2001
    :goto_b
    if-ge v10, v11, :cond_12

    .line 2002
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0, v10}, Lad;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v1

    .line 2003
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2004
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    .line 2007
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$s;)J

    move-result-wide v2

    .line 2008
    if-eqz v9, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2009
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    :cond_c
    :goto_c
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_b

    .line 1968
    :cond_d
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 1970
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->e()V

    .line 1971
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_24

    .line 1972
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->a()I

    move-result v1

    move v0, v8

    .line 1973
    :goto_d
    if-ge v0, v1, :cond_24

    .line 1974
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v2, v0}, Lad;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v2

    .line 1975
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1976
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$s;)J

    move-result-wide v4

    .line 1977
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_f
    move v0, v8

    .line 1994
    goto/16 :goto_9

    :cond_10
    move-object v9, v7

    .line 1998
    goto/16 :goto_a

    .line 2011
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$g;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$g;-><init>(Landroid/support/v7/widget/RecyclerView$s;IIII)V

    invoke-virtual {v12, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 2015
    :cond_12
    invoke-direct {p0, v6}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v4/util/ArrayMap;)V

    .line 2017
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 2018
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_14

    .line 2019
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    .line 2020
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2021
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$g;

    .line 2022
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2024
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$l;->b(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 2026
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 2018
    :cond_13
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 2030
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 2031
    if-lez v0, :cond_1a

    .line 2032
    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_f
    if-ltz v10, :cond_1a

    .line 2033
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$s;

    .line 2034
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$g;

    .line 2035
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2037
    :cond_15
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2038
    if-eqz v6, :cond_18

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object v3, v2

    .line 2040
    :goto_10
    iget v4, v0, Landroid/support/v7/widget/RecyclerView$g;->b:I

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$g;->c:I

    if-eqz v3, :cond_19

    iget v0, v3, Landroid/graphics/Rect;->left:I

    if-ne v0, v4, :cond_16

    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-eq v0, v5, :cond_19

    :cond_16
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView$s;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$d;->a(Landroid/support/v7/widget/RecyclerView$s;IIII)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 2032
    :cond_17
    :goto_11
    add-int/lit8 v0, v10, -0x1

    move v10, v0

    goto :goto_f

    :cond_18
    move-object v3, v7

    .line 2038
    goto :goto_10

    .line 2040
    :cond_19
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView$s;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$d;->b(Landroid/support/v7/widget/RecyclerView$s;)Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    goto :goto_11

    .line 2046
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v10

    move v6, v8

    .line 2047
    :goto_12
    if-ge v6, v10, :cond_1d

    .line 2048
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$s;

    .line 2049
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/RecyclerView$g;

    .line 2050
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/RecyclerView$g;

    .line 2051
    if-eqz v3, :cond_1c

    if-eqz v5, :cond_1c

    .line 2052
    iget v0, v3, Landroid/support/v7/widget/RecyclerView$g;->b:I

    iget v2, v5, Landroid/support/v7/widget/RecyclerView$g;->b:I

    if-ne v0, v2, :cond_1b

    iget v0, v3, Landroid/support/v7/widget/RecyclerView$g;->c:I

    iget v2, v5, Landroid/support/v7/widget/RecyclerView$g;->c:I

    if-eq v0, v2, :cond_1c

    .line 2053
    :cond_1b
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView$s;->a(Z)V

    .line 2058
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    iget v2, v3, Landroid/support/v7/widget/RecyclerView$g;->b:I

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$g;->c:I

    iget v4, v5, Landroid/support/v7/widget/RecyclerView$g;->b:I

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$g;->c:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$d;->a(Landroid/support/v7/widget/RecyclerView$s;IIII)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2060
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 2047
    :cond_1c
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_12

    .line 2066
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 2068
    :goto_13
    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_14
    if-ltz v10, :cond_22

    .line 2069
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2070
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$s;

    .line 2071
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2073
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2079
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView$s;->a(Z)V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$l;->b(Landroid/support/v7/widget/RecyclerView$s;)V

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1e
    move v6, v4

    move v5, v3

    :goto_15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView$d;->a(Landroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$s;IIII)Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 2068
    :cond_1f
    add-int/lit8 v0, v10, -0x1

    move v10, v0

    goto :goto_14

    :cond_20
    move v0, v8

    .line 2066
    goto :goto_13

    .line 2079
    :cond_21
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView$s;->a(Z)V

    iput-object v1, v2, Landroid/support/v7/widget/RecyclerView$s;->h:Landroid/support/v7/widget/RecyclerView$s;

    goto :goto_15

    .line 2085
    :cond_22
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2086
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 2087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$p;->e:I

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$p;->f:I

    .line 2088
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    .line 2089
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v8, v0, Landroid/support/v7/widget/RecyclerView$p;->j:Z

    .line 2090
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v8, v0, Landroid/support/v7/widget/RecyclerView$p;->k:Z

    .line 2091
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    .line 2092
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$h;)Z

    .line 2093
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    .line 2094
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2096
    :cond_23
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-object v7, v0, Landroid/support/v7/widget/RecyclerView$p;->d:Landroid/support/v4/util/ArrayMap;

    goto/16 :goto_0

    :cond_24
    move-object v6, v7

    goto/16 :goto_8

    :cond_25
    move v0, v8

    goto/16 :goto_7
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2341
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->b()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2346
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    .line 2347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2349
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2354
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    .line 2355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2357
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$a;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    return-object v0
.end method

.method public getCompatAccessibilityDelegate()Lai;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Lai;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$d;
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    return-object v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    return-object v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$k;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$l;->b()Landroid/support/v7/widget/RecyclerView$k;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1409
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1411
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 1412
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    .line 1416
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1420
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1421
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$d;->d()V

    .line 1424
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 1426
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1427
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1428
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_1

    .line 1429
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$l;)V

    .line 1431
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1432
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 2323
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2325
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2326
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2327
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2329
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    .line 1547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v9, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$i;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v5, v9, :cond_3

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$i;

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 1548
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 1622
    :cond_2
    :goto_2
    return v2

    .line 1547
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    .line 1552
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v0

    .line 1553
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v4

    .line 1555
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    if-nez v5, :cond_6

    .line 1556
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    .line 1558
    :cond_6
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1560
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    .line 1561
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1563
    packed-switch v5, :pswitch_data_0

    .line 1622
    :cond_7
    :goto_3
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-eq v0, v2, :cond_2

    move v2, v3

    goto :goto_2

    .line 1565
    :pswitch_1
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 1566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 1567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 1569
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1570
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1571
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_3

    .line 1576
    :pswitch_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 1577
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 1578
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    goto :goto_3

    .line 1582
    :pswitch_3
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1583
    if-gez v5, :cond_8

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 1586
    goto/16 :goto_2

    .line 1589
    :cond_8
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 1590
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 1591
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-eq v7, v2, :cond_7

    .line 1592
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    sub-int/2addr v6, v7

    .line 1593
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    sub-int/2addr v5, v7

    .line 1595
    if-eqz v0, :cond_c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-le v0, v7, :cond_c

    .line 1596
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-gez v6, :cond_a

    move v0, v1

    :goto_4
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    move v0, v2

    .line 1599
    :goto_5
    if-eqz v4, :cond_9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-le v4, v6, :cond_9

    .line 1600
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-gez v5, :cond_b

    :goto_6
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    move v0, v2

    .line 1603
    :cond_9
    if-eqz v0, :cond_7

    .line 1604
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1605
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_3

    :cond_a
    move v0, v2

    .line 1596
    goto :goto_4

    :cond_b
    move v1, v2

    .line 1600
    goto :goto_6

    .line 1611
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 1615
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_3

    .line 1619
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    goto/16 :goto_3

    :cond_c
    move v0, v3

    goto :goto_5

    .line 1563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 2236
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 2237
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 2238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2239
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 2240
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1739
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Z

    if-eqz v0, :cond_0

    .line 1740
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 1741
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 1743
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->k:Z

    if-eqz v0, :cond_1

    .line 1748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    .line 1754
    :goto_0
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->E:Z

    .line 1755
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1758
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    .line 1759
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$p;->e:I

    .line 1764
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v3, :sswitch_data_0

    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    :sswitch_0
    sparse-switch v4, :sswitch_data_1

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    :sswitch_1
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 1765
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v5, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    .line 1766
    return-void

    .line 1751
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->e()V

    .line 1752
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v5, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    goto :goto_0

    .line 1761
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput v5, v0, Landroid/support/v7/widget/RecyclerView$p;->e:I

    goto :goto_1

    .line 1764
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 691
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 692
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 693
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/os/Parcelable;)V

    .line 696
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 677
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 678
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->a(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 686
    :goto_0
    return-object v0

    .line 680
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v1, :cond_1

    .line 681
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->d()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0

    .line 683
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 1770
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1771
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 1772
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 1774
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$i;

    :cond_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$i;

    move v0, v9

    :goto_1
    if-eqz v0, :cond_6

    .line 1628
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 1715
    :goto_2
    return v9

    .line 1627
    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v9, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$i;

    :cond_3
    move v0, v9

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 1632
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v2

    .line 1633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v6

    .line 1635
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 1636
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    .line 1638
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1640
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1641
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1643
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 1645
    :pswitch_1
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 1646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 1647
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    goto :goto_2

    .line 1651
    :pswitch_2
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 1652
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 1653
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    goto :goto_2

    .line 1657
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1658
    if-gez v0, :cond_8

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v1

    .line 1661
    goto/16 :goto_2

    .line 1664
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    add-float/2addr v3, v7

    float-to-int v3, v3

    .line 1665
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v4, v0

    .line 1666
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-eq v0, v9, :cond_a

    .line 1667
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    sub-int v0, v3, v0

    .line 1668
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    sub-int v5, v4, v5

    .line 1670
    if-eqz v2, :cond_19

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-le v7, v8, :cond_19

    .line 1671
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-gez v0, :cond_d

    const/4 v0, -0x1

    :goto_3
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    move v0, v9

    .line 1674
    :goto_4
    if-eqz v6, :cond_9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-le v7, v8, :cond_9

    .line 1675
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-gez v5, :cond_e

    const/4 v0, -0x1

    :goto_5
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    move v0, v9

    .line 1678
    :cond_9
    if-eqz v0, :cond_a

    .line 1679
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1680
    invoke-direct {p0, v9}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1683
    :cond_a
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-ne v0, v9, :cond_c

    .line 1684
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    sub-int v0, v3, v0

    .line 1685
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    sub-int v5, v4, v5

    .line 1686
    if-eqz v2, :cond_f

    neg-int v0, v0

    :goto_6
    if-eqz v6, :cond_b

    neg-int v1, v5

    :cond_b
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 1689
    :cond_c
    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 1690
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    goto/16 :goto_2

    :cond_d
    move v0, v9

    .line 1671
    goto :goto_3

    :cond_e
    move v0, v9

    .line 1675
    goto :goto_5

    :cond_f
    move v0, v1

    .line 1686
    goto :goto_6

    .line 1694
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1698
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    int-to-float v7, v7

    invoke-virtual {v0, v4, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1699
    if-eqz v2, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v4, v0

    .line 1701
    :goto_7
    if-eqz v6, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v2, v0

    .line 1703
    :goto_8
    cmpl-float v0, v4, v3

    if-nez v0, :cond_10

    cmpl-float v0, v2, v3

    if-eqz v0, :cond_14

    :cond_10
    float-to-int v0, v4

    float-to-int v2, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    if-ge v3, v4, :cond_11

    move v0, v1

    :cond_11
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    if-ge v3, v4, :cond_12

    move v2, v1

    :cond_12
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    neg-int v3, v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    neg-int v0, v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-nez v3, :cond_13

    if-eqz v4, :cond_18

    :cond_13
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v0, v10, Landroid/support/v7/widget/RecyclerView$r;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    iput v1, v10, Landroid/support/v7/widget/RecyclerView$r;->b:I

    iput v1, v10, Landroid/support/v7/widget/RecyclerView$r;->a:I

    iget-object v0, v10, Landroid/support/v7/widget/RecyclerView$r;->c:Landroid/support/v4/widget/ScrollerCompat;

    const v6, 0x7fffffff

    const v8, 0x7fffffff

    move v2, v1

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$r;->a()V

    move v0, v9

    :goto_9
    if-nez v0, :cond_15

    .line 1704
    :cond_14
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1706
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1707
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    goto/16 :goto_2

    :cond_16
    move v4, v3

    .line 1699
    goto :goto_7

    :cond_17
    move v2, v3

    .line 1701
    goto :goto_8

    :cond_18
    move v0, v1

    .line 1703
    goto :goto_9

    .line 1711
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    goto/16 :goto_2

    :cond_19
    move v0, v1

    goto/16 :goto_4

    .line 1643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 2101
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    .line 2102
    if-eqz v0, :cond_0

    .line 2103
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2104
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->h()V

    .line 2110
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    .line 2111
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2112
    return-void

    .line 2105
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1386
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$h;->k()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->I:Z

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 1387
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1388
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1389
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1390
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/graphics/Rect;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1392
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1393
    return-void

    :cond_2
    move v2, v1

    .line 1386
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1390
    goto :goto_1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1397
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->o()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->p()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->m()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->q()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->n()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->r()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v7, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v7

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v0, v7, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v0, v8, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v5, v9, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-ne v6, v3, :cond_4

    if-eqz v0, :cond_3

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    if-eqz v4, :cond_5

    move v0, v4

    :goto_2
    if-nez v1, :cond_1

    if-eqz v0, :cond_8

    :cond_1
    if-eqz p3, :cond_6

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_2
    :goto_3
    move v0, v3

    :goto_4
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    if-eqz v0, :cond_2

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView$r;->a(II)V

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2244
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-nez v0, :cond_0

    .line 2245
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2249
    :goto_0
    return-void

    .line 2247
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 947
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_0

    .line 948
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v1

    .line 952
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v2

    .line 953
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 954
    :cond_1
    if-eqz v1, :cond_3

    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 956
    :cond_2
    return-void

    :cond_3
    move p1, v0

    .line 954
    goto :goto_0

    :cond_4
    move p2, v0

    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 941
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAccessibilityDelegateCompat(Lai;)V
    .locals 1

    .prologue
    .line 321
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->W:Lai;

    .line 322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Lai;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 323
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 2

    .prologue
    .line 563
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$a;ZZ)V

    .line 564
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 565
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eq p1, v0, :cond_0

    .line 499
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 501
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    .line 502
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 503
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 506
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .prologue
    .line 485
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 486
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$d;)V
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$d;->d()V

    .line 1790
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$d;->h:Landroid/support/v7/widget/RecyclerView$d$a;

    .line 1792
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    .line 1793
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_1

    .line 1794
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$d$a;

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$d;->h:Landroid/support/v7/widget/RecyclerView$d$a;

    .line 1796
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 3

    .prologue
    .line 798
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iput p1, v1, Landroid/support/v7/widget/RecyclerView$l;->e:I

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$l;->c(I)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 799
    :cond_1
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 4

    .prologue
    .line 648
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-ne p1, v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_2

    .line 654
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$l;)V

    .line 657
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 659
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$l;->a()V

    .line 660
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    iget-object v0, v1, Lad;->a:Lad$b;

    invoke-interface {v0}, Lad$b;->b()V

    iget-object v0, v1, Lad;->b:Lad$a;

    :goto_1
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lad$a;->a:J

    iget-object v2, v0, Lad$a;->b:Lad$a;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lad$a;->b:Lad$a;

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 661
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    .line 662
    if-eqz p1, :cond_5

    .line 663
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LayoutManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 668
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$j;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$j;

    .line 904
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$k;)V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$l;->f:Landroid/support/v7/widget/RecyclerView$k;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$l;->f:Landroid/support/v7/widget/RecyclerView$k;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$k;->b()V

    :cond_0
    iput-object p1, v0, Landroid/support/v7/widget/RecyclerView$l;->f:Landroid/support/v7/widget/RecyclerView$k;

    if-eqz p1, :cond_1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$l;->f:Landroid/support/v7/widget/RecyclerView$k;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$k;->a()V

    .line 773
    :cond_1
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$m;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/RecyclerView$m;

    .line 633
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; using default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 532
    :goto_0
    return-void

    .line 529
    :pswitch_1
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$q;)V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iput-object p1, v0, Landroid/support/v7/widget/RecyclerView$l;->g:Landroid/support/v7/widget/RecyclerView$q;

    .line 784
    return-void
.end method
