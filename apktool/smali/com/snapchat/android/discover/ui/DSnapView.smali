.class public Lcom/snapchat/android/discover/ui/DSnapView;
.super Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;
.source "SourceFile"

# interfaces
.implements Laeq;
.implements Lcom/snapchat/android/ui/VerticalSwipeLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/DSnapView$a;
    }
.end annotation


# instance fields
.field private final A:Lcom/snapchat/android/discover/ui/DSnapView$a;

.field private final B:I

.field private C:F

.field private D:F

.field private E:Laca;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Lcom/snapchat/android/discover/model/MediaState;

.field private K:Lcom/snapchat/android/discover/model/DSnapPage;

.field private L:I

.field private M:Laed$a;

.field public final a:Laed;

.field public b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

.field c:Landroid/widget/LinearLayout;

.field public d:Laej;

.field e:Laef;

.field public f:Labr;

.field public g:Lcom/snapchat/android/discover/model/DSnapPage;

.field public h:Lcom/snapchat/android/discover/model/ChannelPage;

.field i:Z

.field protected j:Z

.field public k:J

.field private final t:Laea;

.field private final u:Lacb;

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lady;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private final x:Laev;

.field private final y:Latx;

.field private final z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .prologue
    .line 141
    new-instance v3, Laea;

    invoke-direct {v3}, Laea;-><init>()V

    new-instance v4, Laed;

    invoke-direct {v4, p1}, Laed;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lacb;->a()Lacb;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v6

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    new-instance v9, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-direct {v9}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>()V

    new-instance v10, Laev;

    invoke-direct {v10}, Laev;-><init>()V

    new-instance v11, Laej;

    invoke-direct {v11}, Laej;-><init>()V

    new-instance v12, Latx;

    invoke-direct {v12}, Latx;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v12}, Lcom/snapchat/android/discover/ui/DSnapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Laea;Laed;Lacb;Lcom/snapchat/android/util/debug/ReleaseManager;Landroid/os/Handler;ILcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laev;Laej;Latx;)V

    .line 145
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Laby;Labq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Ladf;Lbgk;Lcom/squareup/otto/Bus;Laea;Laed;Lacb;Lcom/snapchat/android/util/debug/ReleaseManager;Landroid/os/Handler;ILaev;Laej;Latx;Lazm;)V
    .locals 12

    .prologue
    .line 175
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p18

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Laby;Labq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Ladf;Lazm;Lbgk;Lcom/squareup/otto/Bus;)V

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    .line 98
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 99
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->F:Z

    .line 101
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 103
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    .line 104
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 106
    const/4 v2, -0x1

    iput v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 108
    new-instance v2, Lcom/snapchat/android/discover/ui/DSnapView$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/ui/DSnapView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->M:Laed$a;

    .line 176
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Laea;

    .line 177
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Lacb;

    .line 178
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    .line 179
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    .line 180
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 181
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Landroid/os/Handler;

    .line 182
    new-instance v2, Lcom/snapchat/android/discover/ui/DSnapView$a;

    invoke-direct {v2, p0, p0}, Lcom/snapchat/android/discover/ui/DSnapView$a;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    .line 183
    move/from16 v0, p14

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->B:I

    .line 184
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->x:Laev;

    .line 185
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Laej;

    .line 186
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Latx;

    .line 187
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Laea;Laed;Lacb;Lcom/snapchat/android/util/debug/ReleaseManager;Landroid/os/Handler;ILcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laev;Laej;Latx;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    .line 98
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 99
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->F:Z

    .line 101
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 103
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 108
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->M:Laed$a;

    .line 154
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Laea;

    .line 155
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Lacb;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    .line 157
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    .line 158
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 159
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapView$a;

    invoke-direct {v0, p0, p0}, Lcom/snapchat/android/discover/ui/DSnapView$a;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    .line 161
    iput p8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->B:I

    .line 162
    iput-object p10, p0, Lcom/snapchat/android/discover/ui/DSnapView;->x:Laev;

    .line 163
    iput-object p11, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Laej;

    .line 164
    iput-object p12, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Latx;

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapView;)Laby;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Laby;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPanel;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 303
    if-nez p2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    .line 313
    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Lady;

    move-result-object v0

    .line 314
    if-nez v0, :cond_4

    .line 315
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p2, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v1, Laea$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-object v1, v2

    :goto_1
    if-nez v1, :cond_5

    move-object v0, v2

    :cond_2
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lady;->a(Laeq;)V

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v1

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->removeViewAt(I)V

    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lady;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->addView(Landroid/view/View;I)V

    .line 319
    :cond_4
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p1, p2}, Lady;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V

    goto :goto_0

    .line 315
    :pswitch_0
    new-instance v1, Ladu;

    invoke-direct {v1, v3}, Ladu;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_1
    new-instance v1, Laeb;

    invoke-direct {v1, v3}, Laeb;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Ladx;

    invoke-direct {v1, v3}, Ladx;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    new-instance v1, Ladv;

    invoke-direct {v1, v3}, Ladv;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    iget-object v0, p2, Lcom/snapchat/android/discover/model/DSnapPanel;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p2, Lcom/snapchat/android/discover/model/DSnapPanel;->d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->isScreenDocking()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ladw;

    invoke-direct {v0, v3, v1}, Ladw;-><init>(Landroid/content/Context;Lady;)V

    :goto_3
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->f()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_6

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v1

    if-ne v1, p2, :cond_6

    new-instance v1, Ladt;

    invoke-direct {v1, v3, v0}, Ladt;-><init>(Landroid/content/Context;Lady;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, p0, p1, p2}, Lady;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapView;FFLady;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V
    .locals 0

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p7}, Lcom/snapchat/android/discover/ui/DSnapView;->a(FFLady;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V

    return-void
.end method

.method private static a(Ljava/util/List;I)Z
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 898
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 899
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v0

    .line 902
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/DSnapView;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->I:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private e(I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 616
    const-string v0, "DSnapView"

    const-string v3, "Enter %s panel %d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v0

    if-ne v0, p1, :cond_3

    move v3, v1

    .line 621
    :goto_0
    if-eqz v3, :cond_4

    .line 622
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Labr;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Labr;->b:Ljava/util/Set;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    :goto_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Lacb;

    iget-object v0, v0, Lacb;->a:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_SEEN_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v4}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 629
    const v0, 0x7f0a01ff

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 630
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 635
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Lacb;

    iget-object v0, v0, Lacb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_SEEN_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v4}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 638
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 675
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v3, v2

    .line 618
    goto :goto_0

    .line 624
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Labr;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Labr;->a:Ljava/util/Set;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v0, v2

    .line 627
    goto :goto_2

    .line 644
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v4, :cond_7

    .line 645
    const-string v0, "DSnapView"

    const-string v3, "Cannot enter %s panel %d yet, loading state is %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 649
    :cond_7
    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v4, :cond_9

    .line 650
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdt;

    invoke-direct {v2, v1}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 656
    :goto_4
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    if-nez v0, :cond_2

    .line 657
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Lady;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_8

    .line 659
    invoke-virtual {v0}, Lady;->o_()V

    .line 661
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 662
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    new-instance v6, Lmp$a;

    invoke-direct {v6}, Lmp$a;-><init>()V

    iput-object v4, v6, Lmp$a;->mChannelName:Ljava/lang/String;

    iput-object v2, v6, Lmp$a;->mEditionName:Ljava/lang/String;

    iput v5, v6, Lmp$a;->mPosition:I

    invoke-virtual {v6}, Lmp$a;->a()Lmp;

    move-result-object v2

    iget-object v0, v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lmj;

    invoke-virtual {v0, v2}, Lmj;->a(Lml;)V

    .line 670
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 671
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 672
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    :goto_5
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->j()V

    new-instance v3, Laca;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v1, v2, v0, v4}, Laca;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->E:Laca;

    goto/16 :goto_3

    .line 653
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v4, Lbdt;

    invoke-direct {v4, v2}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_4

    .line 672
    :cond_a
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    goto :goto_5
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/DSnapView;)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    return v0
.end method

.method private f(I)V
    .locals 18
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 708
    const-string v2, "DSnapView"

    const-string v3, "Leaving %s panel %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    .line 712
    invoke-virtual/range {p0 .. p1}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Lady;

    move-result-object v3

    .line 713
    if-eqz v3, :cond_2

    .line 715
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    sub-long/2addr v4, v6

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 718
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/discover/ui/DSnapView;->o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-virtual {v3, v4, v5}, Lady;->a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v8, v8, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v9}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v10, v10, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ladf;->d(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v14, v14, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ladf;->e(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3}, Lady;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v14

    sget-object v15, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    if-eq v2, v15, :cond_1

    new-instance v15, Lgu;

    invoke-direct {v15}, Lgu;-><init>()V

    invoke-static {v4, v5}, Lavf;->a(J)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lgu;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->wasFullView()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v15, Lgu;->fullView:Ljava/lang/Boolean;

    iput-object v7, v15, Lgu;->adsnapId:Ljava/lang/String;

    iput-object v8, v15, Lgu;->editionId:Ljava/lang/String;

    iput-object v9, v15, Lgu;->publisherId:Ljava/lang/String;

    invoke-static {v14}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v2

    iput-object v2, v15, Lgu;->mediaType:Lhy;

    if-gez v11, :cond_3

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    add-int/lit8 v2, v10, 0x1

    int-to-long v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v15, Lgu;->snapIndexPos:Ljava/lang/Long;

    int-to-long v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v15, Lgu;->snapIndexCount:Ljava/lang/Long;

    int-to-long v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v15, Lgu;->adIndexPos:Ljava/lang/Long;

    int-to-long v10, v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v15, Lgu;->adIndexCount:Ljava/lang/Long;

    :cond_0
    invoke-static {v15}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    new-instance v2, Lmp$a;

    invoke-direct {v2}, Lmp$a;-><init>()V

    iput-object v9, v2, Lmp$a;->mChannelName:Ljava/lang/String;

    iput-object v8, v2, Lmp$a;->mEditionName:Ljava/lang/String;

    iput v12, v2, Lmp$a;->mPosition:I

    invoke-virtual {v2}, Lmp$a;->a()Lmp;

    move-result-object v2

    iget-object v6, v6, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lmj;

    invoke-virtual {v6, v2, v4, v5}, Lmj;->a(Lml;J)V

    .line 760
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lady;->p_()V

    .line 761
    invoke-direct/range {p0 .. p0}, Lcom/snapchat/android/discover/ui/DSnapView;->j()V

    .line 764
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/snapchat/android/discover/ui/DSnapView;->h()V

    .line 767
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 768
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 769
    return-void

    .line 718
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 729
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Labr;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v7, v2, Labr;->c:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v2, v2, Labr;->c:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lld;

    .line 733
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Labr;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    sget-object v8, Lld;->DISCOVER:Lld;

    invoke-virtual {v6, v7, v8}, Labr;->a(Ljava/lang/String;Lld;)V

    .line 735
    sget-object v6, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v6

    move/from16 v0, p1

    if-ne v6, v0, :cond_8

    .line 736
    invoke-virtual {v3, v4, v5}, Lady;->a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v8, v8, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v9}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v10, v10, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ladf;->d(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3}, Lady;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v12

    sget-object v13, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    if-eq v6, v13, :cond_1

    new-instance v13, Lhh;

    invoke-direct {v13}, Lhh;-><init>()V

    invoke-static {v4, v5}, Lavf;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v13, Lhh;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->wasFullView()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v13, Lhh;->fullView:Ljava/lang/Boolean;

    iput-object v7, v13, Lhh;->dsnapId:Ljava/lang/String;

    iput-object v8, v13, Lhh;->editionId:Ljava/lang/String;

    iput-object v9, v13, Lhh;->publisherId:Ljava/lang/String;

    iput-object v2, v13, Lhh;->source:Lld;

    invoke-static {v12}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v2

    iput-object v2, v13, Lhh;->mediaType:Lhy;

    if-gez v11, :cond_7

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_5

    add-int/lit8 v2, v10, 0x1

    int-to-long v4, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v13, Lhh;->snapIndexCount:Ljava/lang/Long;

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v13, Lhh;->snapIndexPos:Ljava/lang/Long;

    :cond_5
    invoke-static {v13}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_1

    .line 729
    :cond_6
    sget-object v2, Lld;->DISCOVER:Lld;

    goto/16 :goto_2

    .line 736
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 745
    :cond_8
    sget-object v6, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v6

    move/from16 v0, p1

    if-ne v6, v0, :cond_1

    .line 746
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lady;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v10, v10, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ladf;->d(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Lha;

    invoke-direct {v12}, Lha;-><init>()V

    invoke-static {v4, v5}, Lavf;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v12, Lha;->timeViewed:Ljava/lang/Double;

    iput-object v6, v12, Lha;->dsnapId:Ljava/lang/String;

    iput-object v7, v12, Lha;->editionId:Ljava/lang/String;

    iput-object v8, v12, Lha;->publisherId:Ljava/lang/String;

    invoke-static {v9}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v4

    iput-object v4, v12, Lha;->longformType:Lhy;

    iput-object v2, v12, Lha;->source:Lld;

    if-gez v11, :cond_a

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_9

    add-int/lit8 v2, v10, 0x1

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v12, Lha;->snapIndexPos:Ljava/lang/Long;

    int-to-long v4, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v12, Lha;->snapIndexCount:Ljava/lang/Long;

    :cond_9
    invoke-static {v12}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private h()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    .line 609
    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 988
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->E:Laca;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->E:Laca;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lanv;->c:J

    .line 991
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 574
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->h()V

    .line 581
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    .line 582
    const-string v1, "DSnapView"

    const-string v2, "Exit page %s with current panel %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->f(I)V

    .line 587
    iput-boolean v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 589
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcd;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getInAppNotificationSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbcd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(FFLady;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V
    .locals 10
    .param p3    # Lady;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 973
    invoke-virtual {p3}, Lady;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 974
    :goto_0
    iget-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laef;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapView$4;

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/discover/ui/DSnapView$4;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Lady;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V

    invoke-virtual {v8}, Laef;->a()V

    iget-object v2, v8, Laef;->d:Landroid/view/View;

    if-nez v2, :cond_1

    const-string v0, "DSnapPreviewToolPresenter"

    const-string v1, "Inflation failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    :goto_1
    return-void

    .line 973
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 974
    :cond_1
    iget-object v2, v8, Laef;->e:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Laef;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v8, Laef;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Laef;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Laef;->c:Landroid/view/View;

    const v3, 0x7f0a01e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget v0, v8, Laef;->a:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, v8, Laef;->b:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3f8ccccd    # 1.1f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    iget-object v2, v8, Laef;->e:Landroid/view/View;

    sub-float v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget-object v2, v8, Laef;->e:Landroid/view/View;

    sub-float v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    iget-object v2, v8, Laef;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v3, v0

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v8, Laef;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v8, Laef;->e:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laef;->e:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laef;->e:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laef;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laef;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laef;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laef;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    iget v9, v8, Laef;->a:I

    int-to-float v9, v9

    mul-float/2addr v7, v9

    sub-float v7, p1, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laef;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    iget v9, v8, Laef;->b:I

    int-to-float v9, v9

    mul-float/2addr v7, v9

    sub-float v7, p2, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laef$1;

    invoke-direct {v3, v8, v1}, Laef$1;-><init>(Laef;Lavj;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(I)V
    .locals 14
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V

    .line 565
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laef;

    invoke-virtual {v0}, Laef;->b()V

    .line 553
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Laej;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iget-object v0, v1, Laej;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v1, Laej;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, v1, Laej;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v3, v1, Laej;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, v1, Laej;->a:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput-object v0, v1, Laej;->a:Landroid/view/View;

    .line 554
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 555
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Laby;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0, v1, v2}, Laby;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 556
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Ladf;->b(Ljava/lang/String;J)V

    iget-object v4, v2, Ladf;->b:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v0, v2, Ladf;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladf$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v0, Ladf$c;->f:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ladf;->a(Ljava/util/Set;)Z

    move-result v0

    :goto_1
    invoke-virtual {v2, v3, v0}, Ladf;->a(Ljava/lang/String;Z)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v0

    if-nez v0, :cond_6

    .line 559
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Labr;

    iget-object v1, v0, Labr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-boolean v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->F:Z

    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    iget-object v4, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    if-eqz v0, :cond_4

    sget-object v4, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->NOT_STARTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    if-ne v0, v4, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Labq;

    iget-object v4, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iget-object v7, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v8, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    iget v11, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->e:I

    const-string v12, "DISCOVER_DSNAP_WAIT_TIME"

    invoke-static {v12}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v12

    const-string v13, "session_id"

    invoke-virtual {v12, v13, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v12, "publisher_name"

    invoke-virtual {v5, v12, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "edition_id"

    invoke-virtual {v5, v6, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "dsnap_id"

    invoke-virtual {v5, v6, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "has_ad"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "hash"

    invoke-virtual {v3, v5, v9}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "snap_index_pos"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "snap_index_count"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "DISCOVER_DSNAP_WAIT_TIME"

    invoke-virtual {v0, v5, v4, v3}, Labq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    iget-object v3, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    sget-object v4, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->TIMING:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->b:Ljava/util/Set;

    iget-object v1, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ladf;->a(Ljava/lang/String;I)V

    .line 564
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V

    goto/16 :goto_0

    .line 556
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 557
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ladf;->d(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iget-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    iget-object v9, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ladf;->e(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v5, v5, 0x1

    int-to-long v10, v5

    new-instance v5, Lgt;

    invoke-direct {v5}, Lgt;-><init>()V

    iput-object v2, v5, Lgt;->adsnapId:Ljava/lang/String;

    iput-object v3, v5, Lgt;->editionId:Ljava/lang/String;

    iput-object v4, v5, Lgt;->publisherId:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgt;->snapIndexPos:Ljava/lang/Long;

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgt;->snapIndexCount:Ljava/lang/Long;

    int-to-long v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgt;->adIndexPos:Ljava/lang/Long;

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgt;->adIndexCount:Ljava/lang/Long;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    sget-object v0, Lfq;->FAILED:Lfq;

    :goto_4
    iput-object v0, v5, Lgt;->additionalInfo:Lfq;

    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    new-instance v0, Lmp$a;

    invoke-direct {v0}, Lmp$a;-><init>()V

    iput-object v4, v0, Lmp$a;->mChannelName:Ljava/lang/String;

    iput-object v3, v0, Lmp$a;->mEditionName:Ljava/lang/String;

    iput v7, v0, Lmp$a;->mPosition:I

    invoke-virtual {v0}, Lmp$a;->a()Lmp;

    move-result-object v0

    iget-object v1, v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lmj;

    invoke-virtual {v1, v0}, Lmj;->b(Lml;)V

    goto/16 :goto_2

    :cond_8
    sget-object v2, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->b:[I

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lfq;->FAILED:Lfq;

    goto :goto_4

    :pswitch_0
    sget-object v0, Lfq;->SERVER_INTERNAL_ERROR:Lfq;

    goto :goto_4

    :pswitch_1
    sget-object v0, Lfq;->SERVER_INVALID_REQUEST_ERROR:Lfq;

    goto :goto_4

    :pswitch_2
    sget-object v0, Lfq;->SERVER_NETWORK_ERROR:Lfq;

    goto :goto_4

    :pswitch_3
    sget-object v0, Lfq;->SERVER_NO_FILL_ERROR:Lfq;

    goto :goto_4

    :pswitch_4
    sget-object v0, Lfq;->SERVER_OTHER_ERROR:Lfq;

    goto :goto_4

    :pswitch_5
    sget-object v0, Lfq;->CONTENT_NO_FILL:Lfq;

    goto :goto_4

    :pswitch_6
    sget-object v0, Lfq;->TIMEOUT:Lfq;

    goto :goto_4

    :pswitch_7
    sget-object v0, Lfq;->CLIENT_ERROR:Lfq;

    goto :goto_4

    .line 559
    :cond_9
    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Labq;

    iget-object v4, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iget-object v7, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v8, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    iget v11, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->e:I

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v12

    iget-object v13, v0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13, v4}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "DISCOVER_DSNAP_WAIT_TIME"

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v13, "session_id"

    invoke-virtual {v4, v13, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "publisher_name"

    invoke-virtual {v4, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "edition_id"

    invoke-virtual {v4, v5, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "dsnap_id"

    invoke-virtual {v4, v5, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "has_ad"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "hash"

    invoke-virtual {v3, v4, v9}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v12}, Lcom/snapchat/android/discover/model/MediaState;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "snap_index_pos"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "snap_index_count"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v0, v0, Labq;->a:Lale;

    invoke-virtual {v0}, Lale;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    :cond_a
    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    iget-object v1, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    sget-object v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->REPORTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_b
    move v0, v1

    goto/16 :goto_1

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(III)V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-nez v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    if-eq p2, p3, :cond_2

    .line 520
    invoke-direct {p0, p2}, Lcom/snapchat/android/discover/ui/DSnapView;->f(I)V

    .line 521
    iput p3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 522
    invoke-direct {p0, p3}, Lcom/snapchat/android/discover/ui/DSnapView;->e(I)V

    goto :goto_0

    .line 523
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 525
    invoke-virtual {p0, p2}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Lady;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Lady;->f()V

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 495
    :cond_0
    if-eqz p2, :cond_1

    .line 496
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 881
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-eqz v0, :cond_0

    .line 882
    const-string v0, "DSnapView"

    const-string v1, "Error playing DSnap %s (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DISCOVER_DSNAP_MEDIA_PLAYBACK_ERROR"

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "publisher_name"

    invoke-virtual {v4, v5, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v4, "dsnap_id"

    invoke-virtual {v0, v4, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v2, "edition_id"

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 892
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v1}, Laed;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    .line 893
    iput-boolean v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->I:Z

    .line 895
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;ILcom/snapchat/android/discover/model/DSnapPage;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            "I",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 253
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 254
    invoke-static {p1, p3}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Ljava/util/List;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->F:Z

    .line 255
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget v4, v0, Laed;->j:I

    if-eq v3, v4, :cond_0

    iput v3, v0, Laed;->j:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Laed;->e:Z

    iget-object v3, v0, Laed;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v3}, Laed;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    .line 258
    :cond_0
    invoke-static {p1, p3}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    move-object v3, v0

    .line 259
    :goto_0
    const-string v0, "DSnapView"

    const-string v4, "currentLoadingState: %s, adjusted: %s for %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v4, :cond_3

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v3, v0, :cond_3

    move v0, v1

    .line 268
    :goto_1
    iput-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    .line 271
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-direct {p0, v2, v1, v3}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V

    .line 275
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-direct {p0, v2, v1, v3}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V

    .line 278
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v2}, Laed;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    .line 281
    if-eqz v0, :cond_1

    .line 284
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-eqz v0, :cond_1

    .line 285
    iget v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_1
    monitor-exit p0

    return-void

    .line 258
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 263
    goto :goto_1

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)Lady;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lady;

    return-object v0
.end method

.method public final b()V
    .locals 12

    .prologue
    const/16 v11, 0x12c

    const/high16 v10, 0x43960000    # 300.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 869
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    const-string v1, "DSnapLoadingStatePresenter"

    const-string v2, "LOADING-STATE %s: Hiding loading state quickly."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Laed;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Laed;->d:Laec;

    iget-boolean v2, v1, Laec;->e:Z

    if-nez v2, :cond_0

    iput-boolean v9, v1, Laec;->e:Z

    iget-object v2, v1, Laec;->f:Landroid/animation/Animator;

    if-eqz v2, :cond_3

    iget-object v2, v1, Laec;->f:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    iget-object v2, v1, Laec;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    mul-float v3, v10, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-long v4, v3

    const-string v3, "DSnapLoadingErrorViewHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LOADING-STATE: Cancel slow and hide fast with duration: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v5, v2, v8}, Laec;->a(JFZ)V

    :cond_0
    :goto_0
    iget-object v0, v0, Laed;->c:Laee;

    iget-boolean v1, v0, Laee;->f:Z

    if-nez v1, :cond_1

    iput-boolean v9, v0, Laee;->f:Z

    iget-object v1, v0, Laee;->g:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    iget-object v1, v0, Laee;->g:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    iget-object v1, v0, Laee;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float v2, v10, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-long v2, v2

    const-string v4, "DSnapLoadingViewHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LOADING-STATE: Cancel slow and hide fast with duration: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3, v1, v8}, Laee;->a(JFZ)V

    .line 874
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v9}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    .line 875
    iput-boolean v9, p0, Lcom/snapchat/android/discover/ui/DSnapView;->I:Z

    .line 877
    :cond_2
    return-void

    .line 870
    :cond_3
    const-string v2, "DSnapLoadingErrorViewHolder"

    const-string v3, "LOADING-STATE: Hiding fast"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Laec;->a(I)V

    goto :goto_0

    :cond_4
    const-string v1, "DSnapLoadingViewHolder"

    const-string v2, "LOADING-STATE: Hiding fast"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Laee;->a(I)V

    goto :goto_1
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 537
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->canScrollVertically(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0
.end method

.method final d(I)V
    .locals 1

    .prologue
    .line 594
    if-ltz p1, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(IZ)V

    .line 599
    :cond_0
    iput p1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 600
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->e(I)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->e(I)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->i()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 483
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v1

    sget-object v2, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 484
    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(IZ)V

    .line 487
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 802
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    :cond_0
    :goto_0
    return v0

    .line 807
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Lady;

    move-result-object v1

    .line 808
    if-eqz v1, :cond_0

    .line 809
    invoke-virtual {v1}, Lady;->h()Z

    move-result v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 817
    sget-object v2, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 818
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v2

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v2, v3, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 817
    goto :goto_0

    :cond_1
    move v0, v1

    .line 818
    goto :goto_1
.end method

.method public getCurrentPanel()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getCurrentPanel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDSnapPage()Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    return-object v0
.end method

.method public getInAppNotificationSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherPrimaryColor()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public getPublisherSecondaryColor()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getSelectedPanel()I
    .locals 1

    .prologue
    .line 1011
    iget v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Lady;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lady;->a(I)V

    .line 244
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->onFinishInflate()V

    .line 192
    const v0, 0x7f0a01fb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->M:Laed$a;

    iput-object v1, v0, Laed;->k:Laed$a;

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setOnScrolledListener(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V

    .line 195
    new-instance v0, Laef;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Laef;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laef;

    .line 196
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 414
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    :goto_0
    return v1

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v3

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 419
    :goto_1
    iget-boolean v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;->a()V

    .line 423
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v3, :cond_2

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    move v1, v2

    .line 455
    goto :goto_0

    :cond_3
    move v0, v2

    .line 418
    goto :goto_1

    .line 426
    :pswitch_0
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    if-nez v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laef;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {v0}, Laef;->a()V

    .line 428
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v3, v0, Lcom/snapchat/android/discover/ui/DSnapView$a;->b:F

    iput v4, v0, Lcom/snapchat/android/discover/ui/DSnapView$a;->c:F

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->C:F

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->D:F

    .line 432
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    goto :goto_2

    .line 438
    :pswitch_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    if-eqz v0, :cond_2

    .line 447
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->h()V

    goto :goto_2

    .line 444
    :pswitch_2
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    if-eqz v0, :cond_2

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->D:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->B:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->C:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->B:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    goto :goto_3

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 460
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/discover/ui/DSnapView$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/ui/DSnapView$3;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 478
    :cond_0
    :goto_0
    return v0

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Lady;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {v0}, Lady;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 478
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 681
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->q_()V

    .line 682
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    iget-object v1, v0, Laed;->c:Laee;

    if-eqz v1, :cond_0

    iget-object v1, v0, Laed;->c:Laee;

    invoke-virtual {v1}, Laee;->b()V

    invoke-virtual {v1}, Laee;->a()V

    :cond_0
    iput-object v3, v0, Laed;->i:Ljava/lang/String;

    iput v2, v0, Laed;->j:I

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v1, v0, Laed;->g:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v1, v0, Laed;->h:Lcom/snapchat/android/discover/model/MediaState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laed;->e:Z

    iput-boolean v2, v0, Laed;->f:Z

    .line 683
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lady;

    .line 684
    invoke-virtual {v0}, Lady;->c()V

    goto :goto_0

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 687
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->removeAllViews()V

    .line 688
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d()V

    .line 689
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    .line 690
    iput-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 691
    iput-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 692
    iput-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->E:Laca;

    .line 693
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->F:Z

    .line 694
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    .line 695
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    .line 696
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 697
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 698
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    .line 699
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 700
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 701
    return-void
.end method

.method public final r_()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->b:Ljava/lang/String;

    const-string v1, "auto_advancing"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;->a()V

    .line 865
    :cond_0
    return-void
.end method

.method setDSnapItemViewAdapterMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lady;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 995
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 996
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 997
    return-void
.end method

.method setDSnapPreviewToolPresenter(Laef;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laef;

    .line 1002
    return-void
.end method

.method public setOnboardingEnabled(Z)V
    .locals 0

    .prologue
    .line 849
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    .line 850
    return-void
.end method
