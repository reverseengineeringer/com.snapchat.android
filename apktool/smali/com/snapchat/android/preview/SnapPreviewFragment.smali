.class public Lcom/snapchat/android/preview/SnapPreviewFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lanh$a;
.implements Lapg$a;
.implements Lcom/snapchat/android/ui/SnapEditorView$b;
.implements Lcom/snapchat/android/ui/SwipeImageView$a;


# annotations
.annotation build Lavl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/preview/SnapPreviewFragment$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:I

.field private C:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/widget/CheckBox;

.field private E:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

.field private H:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

.field private I:Landroid/widget/ImageButton;

.field private J:Z

.field private K:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lajc;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Lcom/snapchat/android/ui/SendToBottomPanelView;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final O:Loj;

.field private final P:Laho;

.field private Q:Lajv;

.field private R:Lcom/snapchat/android/ui/SnapEditorView$a;

.field private final S:Lyt;

.field private final T:Lys;

.field private final U:Lno;

.field private final V:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final W:Lwz;

.field private final X:Lbfj;

.field private final Y:Lahs;

.field private final Z:Lcom/squareup/otto/Bus;

.field public a:Laim;

.field private final aa:Lavq;

.field private ab:Z

.field private ac:Landroid/os/Handler;

.field private ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

.field private ae:J

.field public b:Lcom/snapchat/android/ui/SnapEditorView;

.field protected c:Lanh;

.field public d:Lbcz;

.field public e:Laex;

.field public final f:Lbgt;

.field private g:Lcom/snapchat/android/ui/CanvasViewBase;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageButton;

.field private j:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Landroid/widget/Button;

.field private n:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/view/View;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:Lasv;

.field private v:I

.field private w:Landroid/content/SharedPreferences;

.field private x:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Lnet/simonvt/numberpicker/SnapchatTimePicker;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/view/View;

.field private z:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    .line 199
    new-instance v1, Lyt;

    invoke-direct {v1}, Lyt;-><init>()V

    new-instance v2, Lys;

    invoke-direct {v2}, Lys;-><init>()V

    invoke-static {}, Lno;->a()Lno;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v4

    new-instance v5, Loj;

    invoke-direct {v5}, Loj;-><init>()V

    invoke-static {}, Lwz;->a()Lwz;

    move-result-object v6

    new-instance v7, Lbfj;

    invoke-direct {v7}, Lbfj;-><init>()V

    invoke-static {}, Laho;->a()Laho;

    move-result-object v8

    new-instance v9, Lbgt;

    invoke-direct {v9}, Lbgt;-><init>()V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v10

    invoke-static {}, Lahs;->c()Lahs;

    move-result-object v11

    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v12

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/snapchat/android/preview/SnapPreviewFragment;-><init>(Lyt;Lys;Lno;Lcom/snapchat/android/analytics/NetworkAnalytics;Loj;Lwz;Lbfj;Laho;Lbgt;Lcom/squareup/otto/Bus;Lahs;Lavq;)V

    .line 211
    return-void
.end method

.method private constructor <init>(Lyt;Lys;Lno;Lcom/snapchat/android/analytics/NetworkAnalytics;Loj;Lwz;Lbfj;Laho;Lbgt;Lcom/squareup/otto/Bus;Lahs;Lavq;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 146
    iput-boolean v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    .line 148
    iput-boolean v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->l:Z

    .line 172
    iput-boolean v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->J:Z

    .line 173
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->K:Ljava/util/LinkedHashSet;

    .line 1482
    iput-boolean v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ab:Z

    .line 1539
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ac:Landroid/os/Handler;

    .line 1574
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ae:J

    .line 227
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->S:Lyt;

    .line 228
    iput-object p2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->T:Lys;

    .line 229
    iput-object p3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->U:Lno;

    .line 230
    iput-object p4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->V:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 231
    iput-object p5, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    .line 232
    iput-object p6, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->W:Lwz;

    .line 233
    iput-object p7, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->X:Lbfj;

    .line 234
    iput-object p8, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->P:Laho;

    .line 235
    iput-object p9, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->f:Lbgt;

    .line 236
    iput-object p10, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    .line 237
    iput-object p11, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Y:Lahs;

    .line 238
    iput-object p12, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->aa:Lavq;

    .line 239
    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    .line 980
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->c:Lanh;

    invoke-virtual {v0}, Lanh;->notifyDataSetChanged()V

    .line 981
    const-string v1, ""

    .line 982
    const-string v0, ""

    .line 983
    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->K:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    .line 984
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lajc;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 985
    const-string v0, ", "

    move-object v2, v1

    move-object v1, v0

    .line 986
    goto :goto_0

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setText(Ljava/lang/String;)V

    .line 988
    return-void
.end method

.method static synthetic A(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 4

    .prologue
    .line 130
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ae:J

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->o:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->o:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private B()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1048
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1050
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1051
    const/4 v1, 0x2

    const v2, 0x7f0a0337

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1052
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0, v3}, Lbgr;->a(I)V

    .line 1054
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setAlpha(F)V

    .line 1055
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->I:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1056
    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1059
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1061
    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1062
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1063
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 1066
    return-void
.end method

.method private D()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 1475
    .line 1476
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->w:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->w:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_PREFERRED_TIME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1479
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/preview/SnapPreviewFragment;Lajv;)Lajv;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Q:Lajv;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/preview/SnapPreviewFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(F)V
    .locals 1

    .prologue
    .line 1633
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 1634
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(I)V

    .line 1639
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1640
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1641
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1642
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 1643
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setAlpha(F)V

    .line 1646
    :cond_0
    return-void

    .line 1636
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1667
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1668
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1669
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1671
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 660
    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->o:Lbgr;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lbgr;->a(I)V

    .line 661
    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 662
    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->m:Landroid/widget/Button;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 664
    if-eqz p1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 666
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->C:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 667
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->o:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 668
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->p:Lbgr;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lbgr;->a(I)V

    .line 669
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->q:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 671
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->C:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 677
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 660
    goto :goto_0

    :cond_2
    move v0, v1

    .line 661
    goto :goto_1

    :cond_3
    move v0, v1

    .line 662
    goto :goto_2

    .line 673
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->C:Lbgr;

    invoke-virtual {v0, v2}, Lbgr;->a(I)V

    .line 674
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->q:Lbgr;

    invoke-virtual {v0, v2}, Lbgr;->a(I)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/snapchat/android/preview/SnapPreviewFragment;)Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/preview/SnapPreviewFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private b(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1649
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 1650
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1651
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 1654
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    .line 1661
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setAlpha(F)V

    .line 1663
    :cond_1
    return-void

    .line 1657
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0, v2}, Lbgr;->a(I)V

    .line 1658
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1429
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1430
    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->t:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1431
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->u:Lasv;

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lasv;->a(F)V

    :cond_0
    iput-boolean p1, v0, Lasv;->mBounceEnabled:Z

    .line 1432
    return-void

    .line 1430
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Z)V

    iget-boolean v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-boolean v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lbgr;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->n:Lbgr;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->b()V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->C:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->q:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->C:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lbgr;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->q:Lbgr;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-static {v0}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Lcom/snapchat/android/preview/SnapPreviewFragment;->b(Z)V

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-nez v0, :cond_1

    const-string v0, "SnapPreviewFragment"

    const-string v1, "mSnapbryo is empty"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v3, v0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    new-instance v0, Lcom/snapchat/android/preview/SnapPreviewFragment$11;

    sget-object v4, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    sget-object v5, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/preview/SnapPreviewFragment$11;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;Landroid/content/Context;Landroid/net/Uri;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    sget-object v1, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/preview/SnapPreviewFragment$11;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6}, Lcom/snapchat/android/preview/SnapPreviewFragment;->b(Z)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    if-nez v0, :cond_3

    const-string v0, "SnapPreviewFragment"

    const-string v1, "mSnapEditorView is empty"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapEditorView;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v0, "SnapPreviewFragment"

    const-string v1, "SnapBitmap is empty"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/snapchat/android/preview/SnapPreviewFragment$10;

    sget-object v4, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    sget-object v5, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/preview/SnapPreviewFragment$10;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    sget-object v1, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/preview/SnapPreviewFragment$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic i(Lcom/snapchat/android/preview/SnapPreviewFragment;)Laim;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 130
    new-array v3, v6, [Ljava/lang/String;

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "        "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v0, 0x9

    if-ne v1, v0, :cond_0

    const-string v0, "  "

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v6}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setFocusable(Z)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setValue(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    new-instance v1, Lcom/snapchat/android/preview/SnapPreviewFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$13;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setOnTimeSelectedListener(Lnet/simonvt/numberpicker/SnapchatTimePicker$e;)V

    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lbgr;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->z:Lbgr;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/preview/SnapPreviewFragment;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    return v0
.end method

.method static synthetic m(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ab:Z

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->z:Lbgr;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbgr;->a(I)V

    new-instance v0, Lcom/snapchat/android/preview/SnapPreviewFragment$9;

    invoke-direct {v0, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$9;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->z:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/preview/SnapPreviewFragment;)Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040085

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a02f0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v3, 0x7f0c017d

    invoke-virtual {p0, v3}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0c0028

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0c0058

    invoke-virtual {p0, v3}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0c0002

    invoke-virtual {p0, v3}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$8;

    invoke-direct {v4, p0, v2}, Lcom/snapchat/android/preview/SnapPreviewFragment$8;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/preview/SnapPreviewFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$5;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->z()V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->K:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->K:Ljava/util/LinkedHashSet;

    invoke-static {}, Laja;->a()Laja;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->A()V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->L:Lbgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->B()V

    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-eq v0, v3, :cond_1

    :cond_0
    const-string v0, "SnapPreviewFragment"

    const-string v1, "Failed to prepare snap for sending!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lajk;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->L:Lbgr;

    invoke-virtual {v3}, Lbgr;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->K:Ljava/util/LinkedHashSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->d:Lbcz;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    const-string v4, "PREVIEW_SCREEN"

    invoke-static {v3, v0, v0, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laim;ZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->S:Lyt;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0, v3, v2, v1}, Lyt;->b(Laim;ZZ)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->V:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v2, "STORY_POST_DELAY"

    const-string v3, "preview_screen"

    invoke-virtual {v0, v2, v1, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbec;

    invoke-direct {v1}, Lbec;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbap;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Laja;->a()Laja;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method static synthetic q(Lcom/snapchat/android/preview/SnapPreviewFragment;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->J:Z

    return v0
.end method

.method static synthetic r(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->H:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbap;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdn;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-direct {v1, v2}, Lbdn;-><init>(Laim;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->d:Lbcz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->G:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->H:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic s(Lcom/snapchat/android/preview/SnapPreviewFragment;)Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->J:Z

    return v0
.end method

.method static synthetic t(Lcom/snapchat/android/preview/SnapPreviewFragment;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->K:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-boolean v0, v0, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 333
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->V:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mPreviewConfiguration:Lajl;

    .line 337
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lajl;->mShouldHideSystemUi:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdt;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 341
    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lajv;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Q:Lajv;

    return-object v0
.end method

.method private v()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 357
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 358
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->r()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/preview/SnapPreviewFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$6;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-boolean v0, v0, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :goto_0
    const-string v3, ""

    const-string v2, ""

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v4, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v4, :cond_1

    move-object v0, v1

    check-cast v0, Lajk;

    iget-object v0, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lajc;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, ", "

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v8}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/preview/SnapPreviewFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$7;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, ", "

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setText(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->B()V

    .line 362
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->A:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-boolean v0, v0, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-nez v0, :cond_4

    .line 366
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    iget-object v1, v0, Lcom/snapchat/android/ui/SendToBottomPanelView;->c:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/snapchat/android/ui/SendToBottomPanelView;->c:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, v0, Lcom/snapchat/android/ui/SendToBottomPanelView;->b:Landroid/widget/TextView;

    invoke-static {v1}, Lavh;->a(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, v0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/TextView;

    const-string v3, "translationY"

    new-array v4, v8, [F

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v1

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/snapchat/android/ui/SendToBottomPanelView$1;

    invoke-direct {v3, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView$1;-><init>(Lcom/snapchat/android/ui/SendToBottomPanelView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, v0, Lcom/snapchat/android/ui/SendToBottomPanelView;->b:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v4, v0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/TextView;

    const-string v5, "translationY"

    new-array v6, v8, [F

    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/snapchat/android/ui/SendToBottomPanelView$2;

    invoke-direct {v1, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView$2;-><init>(Lcom/snapchat/android/ui/SendToBottomPanelView;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v4, v0, Lcom/snapchat/android/ui/SendToBottomPanelView;->c:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 385
    :cond_4
    :goto_3
    return-void

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_4

    .line 369
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->z()V

    .line 370
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->C()V

    .line 376
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-static {v0}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->y:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :goto_4
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->A:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 379
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method static synthetic w(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private w()V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->H()Landroid/view/Window;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 397
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 401
    :cond_0
    return-void
.end method

.method static synthetic x(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lbgr;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    return-object v0
.end method

.method private x()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 416
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v4, Lbel;

    sget-object v5, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v4, v5}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-static {v0}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->y:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 420
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v4, Lbaw;

    invoke-direct {v4, v1}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 431
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$12;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$12;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->m:Landroid/widget/Button;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$14;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$14;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->o:Lbgr;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$15;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$15;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Lbgr;->a(Lbgr$a;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$16;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$16;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->t:Landroid/widget/ImageButton;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$17;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$17;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->z:Lbgr;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$18;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$18;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Lbgr;->a(Lbgr$a;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->y:Landroid/view/View;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$19;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$19;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->L:Lbgr;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$20;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$20;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Lbgr;->a(Lbgr$a;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->A:Landroid/view/View;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$2;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$2;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->v()V

    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->D()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->B:I

    iget-object v4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->h:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->I:Landroid/widget/ImageButton;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$3;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$3;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->D:Landroid/widget/CheckBox;

    new-instance v4, Lcom/snapchat/android/preview/SnapPreviewFragment$4;

    invoke-direct {v4, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$4;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 433
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    iget-object v4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-static {v4}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setIsVideoSnap(Z)V

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->R:Lcom/snapchat/android/ui/SnapEditorView$a;

    if-nez v0, :cond_6

    .line 436
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 441
    :goto_1
    iget-object v4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/snapchat/android/ui/SnapEditorView;->setAudible(Z)V

    .line 443
    iget-object v4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->m:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    if-eqz v0, :cond_8

    move v0, v3

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getSwipeFilterType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->TURN_ON_FILTERS_PAGE:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    iput-boolean v1, v0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;->a:Z

    iput-object v6, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    iget v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->v:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->a(I)V

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lavh;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->v:I

    .line 445
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->U:Lno;

    iget v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->v:I

    invoke-static {v0}, Lavh;->b(I)Z

    move-result v0

    iget-object v3, v1, Lno;->mSnapCaptureMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lno;->mSnapCaptureMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "orientation"

    if-eqz v0, :cond_9

    const-string v0, "portrait"

    :goto_4
    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    iput-object v6, v1, Lno;->mSnapCaptureMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_3
    invoke-virtual {v1}, Lno;->b()V

    .line 446
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v1}, Laim;->h()I

    move-result v1

    iput v1, v0, Loj;->a:I

    .line 447
    return-void

    .line 424
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v4, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-eq v0, v4, :cond_5

    .line 425
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v4, Lbaw;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 428
    :cond_5
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->t()V

    goto/16 :goto_0

    .line 438
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->R:Lcom/snapchat/android/ui/SnapEditorView$a;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView$a;)V

    .line 439
    iput-object v6, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->R:Lcom/snapchat/android/ui/SnapEditorView$a;

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 441
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 443
    goto/16 :goto_3

    .line 445
    :cond_9
    const-string v0, "landscape"

    goto :goto_4
.end method

.method static synthetic y(Lcom/snapchat/android/preview/SnapPreviewFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    return-object v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->F:Lbgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 530
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    .line 928
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lajc;Z)V
    .locals 1

    .prologue
    .line 971
    if-eqz p2, :cond_0

    .line 972
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->K:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 976
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->A()V

    .line 977
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->K:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1675
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getLeftSwipeFilterPageType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    .line 1678
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getRightSwipeFilterPageType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v1

    .line 1679
    sget-object v2, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->TURN_ON_FILTERS_PAGE:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v2, :cond_2

    .line 1680
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    sub-float v0, v3, v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(F)V

    .line 1681
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    sub-float v0, v3, v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->b(F)V

    goto :goto_0

    .line 1682
    :cond_2
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->TURN_ON_FILTERS_PAGE:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v1, v0, :cond_0

    .line 1683
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(F)V

    .line 1684
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->b(F)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1700
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->P:Laho;

    new-instance v1, Laho$1;

    invoke-direct {v1, v0}, Laho$1;-><init>(Laho;)V

    invoke-static {v1}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 1701
    if-eqz p2, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->F:Lbgr;

    invoke-virtual {v0}, Lbgr;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->F:Lbgr;

    invoke-virtual {v0, v4}, Lbgr;->a(I)V

    .line 1704
    invoke-static {v3}, Lajx;->i(Z)V

    .line 1712
    :cond_0
    :goto_0
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1722
    :goto_1
    return-void

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    iput-boolean v3, v0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1716
    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getPageIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/SwipeImageView;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    .line 1717
    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->TURN_ON_FILTERS_PAGE:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v1, :cond_4

    .line 1718
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(F)V

    goto :goto_1

    .line 1720
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(F)V

    goto :goto_1
.end method

.method public final a(Lajc;)Z
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->K:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 687
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method protected final e()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->u()V

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->N:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Y:Lahs;

    invoke-virtual {v0}, Lahs;->b()V

    .line 288
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->w()V

    .line 291
    iput-boolean v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->J:Z

    .line 294
    iget v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->v:I

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lavh;->d(Landroid/content/Context;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->R:Lcom/snapchat/android/ui/SnapEditorView$a;

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->x()V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-eqz v0, :cond_2

    .line 299
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->v()V

    .line 300
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->t()V

    .line 304
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0}, Laim;->f()V

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v2, Lbel;

    sget-object v3, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v2, v3}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-static {v0}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    check-cast v0, Lajm;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lajm;)V

    .line 311
    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SnapEditorView;->setAudible(Z)V

    .line 316
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v2, v0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v2, v2, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v2, v2, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(IZ)V

    .line 317
    return-void

    :cond_4
    move v0, v1

    .line 311
    goto :goto_0

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-eq v0, v2, :cond_3

    .line 313
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v2, Lbaw;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final g()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 587
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->L:Lbgr;

    invoke-virtual {v0}, Lbgr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->m()Z

    move v0, v1

    .line 636
    :goto_0
    return v0

    .line 592
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ab:Z

    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->p()Z

    move v0, v1

    .line 594
    goto :goto_0

    .line 597
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 599
    goto :goto_0

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v3, v0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    instance-of v3, v3, Lcom/snapchat/android/ui/caption/FatCaptionView;

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Z)V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    move v0, v1

    .line 603
    goto :goto_0

    :cond_4
    move v0, v2

    .line 602
    goto :goto_1

    .line 606
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 608
    new-instance v0, Lcom/snapchat/android/preview/SnapPreviewFragment$1;

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0038

    invoke-virtual {p0, v3}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/snapchat/android/preview/SnapPreviewFragment$1;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0}, Laqb;->show()V

    move v0, v1

    .line 621
    goto :goto_0

    .line 624
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-static {v0}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->e:Laex;

    if-nez v0, :cond_7

    .line 625
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->CANCEL_PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 627
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->e:Laex;

    if-eqz v0, :cond_9

    .line 629
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v3, Lbap;

    sget-object v4, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v3, v4}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->H:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_b

    .line 632
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v2, Lbas;

    invoke-direct {v2}, Lbas;-><init>()V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    move v0, v1

    .line 633
    goto/16 :goto_0

    .line 627
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->T:Lys;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0, v3}, Lys;->b(Laim;)V

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->S:Lyt;

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v3, v3, Lyt;->b:Lawx;

    invoke-virtual {v3, v0}, Lawx;->b(Laim;)V

    instance-of v3, v0, Lajm;

    if-eqz v3, :cond_8

    check-cast v0, Lajm;

    invoke-virtual {v0}, Lajm;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Laxc;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move v0, v2

    .line 636
    goto/16 :goto_0
.end method

.method public final g_()Z
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->a()Lcom/snapchat/android/ui/SnapEditorView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->R:Lcom/snapchat/android/ui/SnapEditorView$a;

    .line 412
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->x()V

    .line 413
    return-void
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x1

    return v0
.end method

.method public final m()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 948
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->L:Lbgr;

    invoke-virtual {v1}, Lbgr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 953
    :goto_0
    return v0

    .line 950
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->L:Lbgr;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lbgr;->a(I)V

    .line 951
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 952
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->C()V

    .line 953
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final n()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1170
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0}, Laim;->h()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :cond_0
    move v4, v3

    .line 1213
    :cond_1
    :goto_0
    return v4

    .line 1175
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0}, Laim;->c()V

    .line 1177
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1180
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, v1, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeImageView;->getCurrentPage()Larn;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Larn;->i()V

    .line 1182
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1183
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-static {v1}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1184
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->c()V

    .line 1185
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1188
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getShaderFilter()Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    move-result-object v6

    .line 1190
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v1, v0}, Laim;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0}, Laim;->i()V

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->X:Lbfj;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v8

    double-to-int v0, v0

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    int-to-double v8, v0

    iput-wide v8, v1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    instance-of v0, v0, Lajm;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    check-cast v0, Lajm;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v2, :cond_f

    iget-object v7, v0, Lajm;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_8

    const-string v1, "SnapPreviewFragment"

    const-string v2, "Videobryo has no first frame bitmap."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Videobryo has no first frame bitmap."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v1, v4

    :goto_1
    if-nez v1, :cond_f

    move v0, v4

    :goto_2
    if-eqz v0, :cond_1

    .line 1201
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->i()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1202
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laim;->mCaptionText:Ljava/lang/String;

    .line 1205
    :cond_7
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_13

    move v0, v3

    :goto_4
    iput-boolean v0, v1, Laim;->mHasDrawing:Z

    .line 1206
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    iget v1, v1, Loj;->b:I

    iput v1, v0, Laim;->mSwipeFilterNumSingleSwipes:I

    .line 1207
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    iget v1, v1, Loj;->c:I

    iput v1, v0, Laim;->mSwipeFilterNumDoubleSwipes:I

    .line 1208
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    iget v1, v1, Loj;->d:I

    iput v1, v0, Laim;->mGeofilterImpressions:I

    .line 1209
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionStyleDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laim;->mCaptionStyleDescription:Ljava/lang/String;

    .line 1210
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionAnalyticsDetails()Lapo;

    move-result-object v1

    iput-object v1, v0, Laim;->mCaptionAnalyticData:Lapo;

    .line 1211
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    iget-object v1, v1, Loj;->e:Loi;

    iput-object v1, v0, Laim;->mBaseFilter:Loi;

    .line 1212
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    iget-object v1, v1, Loj;->f:Loi;

    iput-object v1, v0, Laim;->mStackedFilter:Loi;

    move v4, v3

    .line 1213
    goto/16 :goto_0

    .line 1190
    :cond_8
    iget-object v8, v0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_5
    iget-object v5, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->aa:Lavq;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v2, v1, v9}, Lavq;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_9

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Laur;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_9
    if-nez v5, :cond_c

    const-string v5, "Failed to create bitmap for raw image (width=%d, height=%d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapPreviewFragment"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_5

    :cond_b
    move v1, v4

    goto/16 :goto_1

    :cond_c
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v7, :cond_d

    invoke-virtual {v1, v7, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_d
    if-eqz v8, :cond_e

    invoke-virtual {v1, v8, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_e
    iput-object v5, v0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    move v1, v3

    goto/16 :goto_1

    :cond_f
    iput-object v6, v0, Lajm;->mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->W:Lwz;

    invoke-virtual {v1, v0}, Lwz;->a(Lajm;)V

    :cond_10
    move v0, v3

    goto/16 :goto_2

    .line 1195
    :cond_11
    if-eqz v0, :cond_1

    .line 1198
    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image Snap with no image? Ruh-roh"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v1, v0}, Laim;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->B:I

    int-to-double v6, v1

    iput-wide v6, v0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    goto/16 :goto_3

    :cond_13
    move v0, v4

    .line 1205
    goto/16 :goto_4
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0a03a1

    const v5, 0x7f0a0398

    .line 451
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 453
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_1

    .line 461
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->w:Landroid/content/SharedPreferences;

    .line 465
    :cond_1
    const v0, 0x7f0a01e1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    .line 466
    const v0, 0x7f0a01e3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->m:Landroid/widget/Button;

    .line 467
    const v0, 0x7f0a01e2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    .line 468
    const v0, 0x7f0a0395

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->t:Landroid/widget/ImageButton;

    .line 469
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a0399

    const v4, 0x7f0a03a2

    invoke-direct {v0, v2, v3, v4}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->p:Lbgr;

    .line 470
    const v0, 0x7f0a039b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->h:Landroid/widget/TextView;

    .line 471
    const v0, 0x7f0a039a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->y:Landroid/view/View;

    .line 472
    const v0, 0x7f0a039c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->A:Landroid/view/View;

    .line 473
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a039d

    const v4, 0x7f0a03a5

    invoke-direct {v0, v2, v3, v4}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->E:Lbgr;

    .line 474
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a039e

    const v4, 0x7f0a03a8

    invoke-direct {v0, v2, v3, v4}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->F:Lbgr;

    .line 475
    const v0, 0x7f0a01e5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->D:Landroid/widget/CheckBox;

    .line 476
    const v0, 0x7f0a01e6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->I:Landroid/widget/ImageButton;

    .line 477
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a039f

    const v4, 0x7f0a03a6

    invoke-direct {v0, v2, v3, v4}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->L:Lbgr;

    .line 478
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03a0

    const v4, 0x7f0a0337

    invoke-direct {v0, v2, v3, v4}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    .line 479
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a038f

    invoke-direct {v0, v2, v5, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->o:Lbgr;

    .line 480
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a0390

    invoke-direct {v0, v2, v5, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->j:Lbgr;

    .line 481
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a0392

    invoke-direct {v0, v2, v5, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->C:Lbgr;

    .line 482
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a0391

    invoke-direct {v0, v2, v5, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->n:Lbgr;

    .line 483
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a0393

    invoke-direct {v0, v2, v5, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->q:Lbgr;

    .line 486
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    new-instance v2, Lasv;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    new-instance v2, Lasv;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->y:Landroid/view/View;

    new-instance v2, Lasv;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->y:Landroid/view/View;

    invoke-direct {v2, v3}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    new-instance v0, Lasv;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->t:Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Lasv;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->u:Lasv;

    .line 490
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->t:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->u:Lasv;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->A:Landroid/view/View;

    new-instance v2, Lasv;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->A:Landroid/view/View;

    invoke-direct {v2, v3}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->D:Landroid/widget/CheckBox;

    new-instance v2, Lasv;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->D:Landroid/widget/CheckBox;

    invoke-direct {v2, v3}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->I:Landroid/widget/ImageButton;

    new-instance v2, Lasv;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->I:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    invoke-static {}, Lajx;->d()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lajx;->M()Z

    move-result v0

    if-nez v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->E:Lbgr;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbgr;->a(I)V

    .line 502
    :cond_2
    :goto_1
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03aa

    invoke-direct {v0, v2, v6, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->z:Lbgr;

    .line 503
    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03ab

    invoke-direct {v0, v2, v6, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    .line 505
    const v0, 0x7f0a01e4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    .line 507
    const v0, 0x7f0a038e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapEditorView;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    .line 508
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/content/Context;)V

    .line 509
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView;->setSnapPreviewRotationListener(Lcom/snapchat/android/ui/SwipeImageView$a;)V

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView;->setInterface(Lcom/snapchat/android/ui/SnapEditorView$b;)V

    .line 511
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setSwipeImageViewAnalytics(Loj;)V

    .line 512
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView;->setSwipeImageViewOnScrollListener(Lapg$a;)V

    .line 513
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCanvasView()Lcom/snapchat/android/ui/CanvasViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    .line 515
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->x()V

    .line 518
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setColor(I)V

    .line 520
    new-instance v0, Lanh;

    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v2

    invoke-virtual {v2}, Lajq;->d()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lanh;-><init>(Landroid/content/Context;Ljava/util/List;Lanh$a;)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->c:Lanh;

    goto/16 :goto_0

    .line 498
    :cond_3
    invoke-static {}, Lajx;->O()Z

    move-result v0

    if-nez v0, :cond_2

    .line 499
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->y()V

    goto :goto_1
.end method

.method public onColorPickedEvent(Lbbc;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    .line 1611
    instance-of v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    iget v1, p1, Lbbc;->mColor:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setColor(I)V

    .line 1615
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1617
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 406
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->i()V

    .line 407
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 244
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->w()V

    .line 249
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->N:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 251
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v1, :cond_2

    .line 252
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->h()Lbdj;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    iget-object v1, v0, Lbdj;->mMediabryo:Laim;

    instance-of v1, v1, Laim;

    if-nez v1, :cond_1

    .line 257
    :cond_0
    new-instance v0, Lajj$a;

    invoke-direct {v0}, Lajj$a;-><init>()V

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Lajj$a;

    invoke-virtual {v0}, Lajj$a;->c()Lajj;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->l:Z

    .line 261
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    .line 277
    :goto_0
    return-object v0

    .line 264
    :cond_1
    iget-object v0, v0, Lbdj;->mMediabryo:Laim;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 270
    :cond_3
    const v0, 0x7f04009f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->f:Lbgt;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    iput-object v1, v0, Lbgt;->mView:Landroid/view/View;

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0}, Laim;->h()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->f:Lbgt;

    invoke-virtual {v0}, Lbgt;->a()V

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->mFragmentLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 775
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 777
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0}, Laim;->j()V

    .line 781
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->H()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 785
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 786
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->H()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 787
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 731
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 733
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h()V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(I)V

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    iget v0, v0, Loj;->b:I

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->O:Loj;

    iget v1, v1, Loj;->c:I

    add-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/Mediabryo;)V

    .line 746
    :cond_2
    invoke-static {}, Lnp;->a()Lnp;

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-static {v0}, Lnp;->d(Laim;)V

    .line 748
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->b()V

    .line 749
    iput-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    .line 750
    iput-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->R:Lcom/snapchat/android/ui/SnapEditorView$a;

    .line 752
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->H()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 753
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 754
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->H()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 756
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbaw;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 757
    return-void
.end method

.method public onDrawingEvent(Lcom/snapchat/android/util/eventbus/DrawingEvent;)V
    .locals 10
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1557
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;->a:Z

    .line 1559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    .line 1562
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/DrawingEvent;->mDrawingEventType:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->STARTED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    if-ne v0, v2, :cond_2

    .line 1563
    new-instance v0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    invoke-direct {v0, p0, v6}, Lcom/snapchat/android/preview/SnapPreviewFragment$a;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;B)V

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    .line 1564
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ac:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1572
    :cond_1
    :goto_0
    return-void

    .line 1565
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/DrawingEvent;->mDrawingEventType:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->COMPLETED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    if-ne v0, v2, :cond_1

    .line 1566
    iget-wide v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ae:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_4

    const v0, 0x5368d4a5    # 1.0E12f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ae:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v0, v2

    iput-wide v8, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ae:J

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    mul-float/2addr v0, v3

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x190

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->o:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->M:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1568
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->q:Lbgr;

    invoke-virtual {v0, v6}, Lbgr;->a(I)V

    .line 1569
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->C:Lbgr;

    invoke-virtual {v0, v6}, Lbgr;->a(I)V

    .line 1570
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->C:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onEditCaptionEvent(Lbbh;)V
    .locals 6
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 539
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->E:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 540
    invoke-static {}, Lajx;->N()V

    .line 541
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->p:Lbgr;

    invoke-virtual {v0, v5}, Lbgr;->a(I)V

    .line 543
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->F:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v3

    .line 546
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->m:Landroid/widget/Button;

    const v4, 0x7f020283

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 547
    iget-object v4, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->m:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    const v4, 0x7f020064

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 549
    iget-boolean v0, p1, Lbbh;->mIsEditing:Z

    if-eqz v0, :cond_2

    .line 550
    instance-of v0, v3, Lcom/snapchat/android/ui/caption/FatCaptionView;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->s:Landroid/widget/ImageButton;

    const v3, 0x7f020021

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 552
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    .line 553
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->o:Lbgr;

    invoke-virtual {v0, v5}, Lbgr;->a(I)V

    .line 554
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->q:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 556
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->C:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 557
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->p:Lbgr;

    invoke-virtual {v0, v2}, Lbgr;->a(I)V

    .line 558
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->m:Landroid/widget/Button;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 563
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 547
    goto :goto_0

    .line 561
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->u()V

    goto :goto_1
.end method

.method public onEnableFiltersEvent(Lbbi;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;->a:Z

    .line 1623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    .line 1625
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(F)V

    .line 1626
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->E:Lbgr;

    invoke-virtual {v0}, Lbgr;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1627
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->y()V

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 1630
    return-void
.end method

.method public onInChatSnapEvent(Lcom/snapchat/android/util/eventbus/InChatSnapEvent;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/util/eventbus/InChatSnapEvent;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 641
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->G:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 642
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->v()V

    .line 644
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mCaption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setCaptionText(Ljava/lang/String;)V

    .line 647
    :cond_0
    return-void
.end method

.method public onNoFilterEvent(Lbcl;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 535
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 708
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 710
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0}, Laim;->c()V

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Z)V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->a()Lcom/snapchat/android/ui/SnapEditorView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->R:Lcom/snapchat/android/ui/SnapEditorView$a;

    .line 723
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->c()V

    .line 724
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->g()V

    .line 726
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 727
    return-void
.end method

.method public onPostToStoriesUpdatedEvent(Lbco;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->c:Lanh;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->c:Lanh;

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v1

    invoke-virtual {v1}, Lajq;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lanh;->clear()V

    invoke-virtual {v0, v1}, Lanh;->addAll(Ljava/util/Collection;)V

    .line 1741
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->c:Lanh;

    invoke-virtual {v0}, Lanh;->notifyDataSetChanged()V

    .line 1743
    :cond_0
    return-void
.end method

.method public onQuickSnapEvent(Lcom/snapchat/android/util/eventbus/QuickSnapEvent;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/util/eventbus/QuickSnapEvent;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 651
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->H:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    .line 652
    invoke-direct {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->v()V

    .line 654
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->mCaption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setCaptionText(Ljava/lang/String;)V

    .line 657
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 692
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 694
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v0}, Laim;->b()V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Z:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->g:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-boolean v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->b(Z)V

    .line 703
    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->k:Z

    invoke-direct {p0, v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(Z)V

    .line 704
    return-void
.end method

.method public onUserLoadedEvent(Lber;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1747
    iget-object v0, p1, Lber;->user:Lajv;

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->Q:Lajv;

    .line 1748
    return-void
.end method

.method public final p()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1492
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->z:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1509
    :goto_0
    return v0

    .line 1493
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ab:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1494
    :cond_1
    iput-boolean v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ab:Z

    .line 1496
    invoke-virtual {p0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f050003

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1497
    if-eqz v2, :cond_2

    .line 1498
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->z:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1502
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1503
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1504
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->r:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1506
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->z:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 1508
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->x:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->B:I

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_PREFERRED_TIME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->B:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1509
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 1690
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1692
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;->a:Z

    .line 1694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment;->ad:Lcom/snapchat/android/preview/SnapPreviewFragment$a;

    goto :goto_0
.end method
