.class public Lcom/snapchat/android/discover/ui/DSnapView;
.super Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;
.source "SourceFile"

# interfaces
.implements Lafq;
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

.field private E:Lada;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Lcom/snapchat/android/discover/model/MediaState;

.field private K:Lcom/snapchat/android/discover/model/DSnapPage;

.field private L:I

.field private M:Lafd$a;

.field public final a:Lafd;

.field public b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

.field c:Landroid/widget/LinearLayout;

.field public d:Lafj;

.field e:Laff;

.field public f:Lacr;

.field public g:Lcom/snapchat/android/discover/model/DSnapPage;

.field public h:Lcom/snapchat/android/discover/model/ChannelPage;

.field i:Z

.field protected j:Z

.field public k:J

.field private final t:Lafa;

.field private final u:Ladb;

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Laey;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private final x:Lafv;

.field private final y:Lauv;

.field private final z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .prologue
    .line 140
    new-instance v3, Lafa;

    invoke-direct {v3}, Lafa;-><init>()V

    new-instance v4, Lafd;

    invoke-direct {v4, p1}, Lafd;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ladb;->a()Ladb;

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

    new-instance v10, Lafv;

    invoke-direct {v10}, Lafv;-><init>()V

    new-instance v11, Lafj;

    invoke-direct {v11}, Lafj;-><init>()V

    new-instance v12, Lauv;

    invoke-direct {v12}, Lauv;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v12}, Lcom/snapchat/android/discover/ui/DSnapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lafa;Lafd;Ladb;Lcom/snapchat/android/util/debug/ReleaseManager;Landroid/os/Handler;ILcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Lafv;Lafj;Lauv;)V

    .line 144
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lacy;Lacq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laef;Lbhk;Lcom/squareup/otto/Bus;Lafa;Lafd;Ladb;Lcom/snapchat/android/util/debug/ReleaseManager;Landroid/os/Handler;ILafv;Lafj;Lauv;Lbal;)V
    .locals 12

    .prologue
    .line 174
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

    invoke-direct/range {v2 .. v11}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lacy;Lacq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laef;Lbal;Lbhk;Lcom/squareup/otto/Bus;)V

    .line 96
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 98
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->F:Z

    .line 100
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 102
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    .line 103
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 105
    const/4 v2, -0x1

    iput v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 107
    new-instance v2, Lcom/snapchat/android/discover/ui/DSnapView$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/ui/DSnapView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->M:Lafd$a;

    .line 175
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Lafa;

    .line 176
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Ladb;

    .line 177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    .line 178
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    .line 179
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 180
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Landroid/os/Handler;

    .line 181
    new-instance v2, Lcom/snapchat/android/discover/ui/DSnapView$a;

    invoke-direct {v2, p0, p0}, Lcom/snapchat/android/discover/ui/DSnapView$a;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    .line 182
    move/from16 v0, p14

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->B:I

    .line 183
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->x:Lafv;

    .line 184
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lafj;

    .line 185
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lauv;

    .line 186
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lafa;Lafd;Ladb;Lcom/snapchat/android/util/debug/ReleaseManager;Landroid/os/Handler;ILcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Lafv;Lafj;Lauv;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    .line 97
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 98
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->F:Z

    .line 100
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 102
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 107
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->M:Lafd$a;

    .line 153
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Lafa;

    .line 154
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Ladb;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    .line 156
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    .line 157
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 158
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapView$a;

    invoke-direct {v0, p0, p0}, Lcom/snapchat/android/discover/ui/DSnapView$a;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    .line 160
    iput p8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->B:I

    .line 161
    iput-object p10, p0, Lcom/snapchat/android/discover/ui/DSnapView;->x:Lafv;

    .line 162
    iput-object p11, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lafj;

    .line 163
    iput-object p12, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lauv;

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapView;)Lacy;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lacy;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPanel;
        .annotation build Lchd;
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

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Laey;

    move-result-object v0

    .line 314
    if-nez v0, :cond_4

    .line 315
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p2, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v1, Lafa$1;->a:[I

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

    invoke-virtual {v0, p0}, Laey;->a(Lafq;)V

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

    invoke-virtual {v0}, Laey;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->addView(Landroid/view/View;I)V

    .line 319
    :cond_4
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p1, p2}, Laey;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V

    goto :goto_0

    .line 315
    :pswitch_0
    new-instance v1, Laeu;

    invoke-direct {v1, v3}, Laeu;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lafb;

    invoke-direct {v1, v3}, Lafb;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Laex;

    invoke-direct {v1, v3}, Laex;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    new-instance v1, Laev;

    invoke-direct {v1, v3}, Laev;-><init>(Landroid/content/Context;)V

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

    new-instance v0, Laew;

    invoke-direct {v0, v3, v1}, Laew;-><init>(Landroid/content/Context;Laey;)V

    :goto_3
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->f()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_6

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v1

    if-ne v1, p2, :cond_6

    new-instance v1, Laet;

    invoke-direct {v1, v3, v0}, Laet;-><init>(Landroid/content/Context;Laey;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, p0, p1, p2}, Laey;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

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

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapView;FFLaey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p7}, Lcom/snapchat/android/discover/ui/DSnapView;->a(FFLaey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V

    return-void
.end method

.method private static a(Ljava/util/List;I)Z
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lchc;
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
    .line 906
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 907
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v0

    .line 910
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/DSnapView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->I:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private e(I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 618
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 620
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Ladb;

    iget-object v0, v0, Ladb;->a:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_SEEN_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 622
    const v0, 0x7f0a01fd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 623
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 628
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Ladb;

    iget-object v0, v0, Ladb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_SEEN_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 677
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 620
    goto :goto_0

    .line 637
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v3, :cond_5

    .line 638
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_1

    .line 642
    :cond_5
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v0

    if-ne v0, p1, :cond_7

    move v0, v1

    .line 645
    :goto_2
    if-eqz v0, :cond_8

    .line 646
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lacr;->b:Ljava/util/Set;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 651
    :goto_3
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v3, v4, :cond_9

    .line 652
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v3, Lbet;

    invoke-direct {v3, v1}, Lbet;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 658
    :goto_4
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    if-nez v2, :cond_2

    .line 659
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Laey;

    move-result-object v2

    .line 660
    if-eqz v2, :cond_6

    .line 661
    invoke-virtual {v2}, Laey;->m_()V

    .line 663
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 664
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    new-instance v6, Lng$a;

    invoke-direct {v6}, Lng$a;-><init>()V

    iput-object v4, v6, Lng$a;->mChannelName:Ljava/lang/String;

    iput-object v3, v6, Lng$a;->mEditionName:Ljava/lang/String;

    iput v5, v6, Lng$a;->mPosition:I

    invoke-virtual {v6}, Lng$a;->a()Lng;

    move-result-object v3

    iget-object v2, v2, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lna;

    invoke-virtual {v2, v3}, Lna;->a(Lnc;)V

    .line 672
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 673
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 674
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    :goto_5
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->j()V

    new-instance v0, Lada;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    invoke-direct/range {v0 .. v5}, Lada;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;Lacr;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->E:Lada;

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 642
    goto/16 :goto_2

    .line 648
    :cond_8
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lacr;->a:Ljava/util/Set;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 655
    :cond_9
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v4, Lbet;

    invoke-direct {v4, v2}, Lbet;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_4

    .line 674
    :cond_a
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    goto :goto_5
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/DSnapView;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    return v0
.end method

.method private f(I)V
    .locals 24
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 711
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    .line 715
    invoke-virtual/range {p0 .. p1}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Laey;

    move-result-object v3

    .line 716
    if-eqz v3, :cond_4

    .line 718
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    .line 719
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    sub-long/2addr v4, v6

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 721
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/discover/ui/DSnapView;->o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-virtual {v3, v4, v5}, Laey;->a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

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

    iget-object v11, v0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v11, v12}, Laef;->d(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v14, v14, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v13, v14}, Laef;->e(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3}, Laey;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v14

    invoke-virtual {v3}, Laey;->k()J

    move-result-wide v16

    invoke-virtual {v3}, Laey;->j()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v15, v15, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v15}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v15

    sget-object v20, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_3

    new-instance v20, Lhd;

    invoke-direct/range {v20 .. v20}, Lhd;-><init>()V

    invoke-static {v4, v5}, Lawd;->a(J)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lhd;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->wasFullView()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lhd;->fullView:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    iput-object v7, v0, Lhd;->adsnapId:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v8, v0, Lhd;->editionId:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v9, v0, Lhd;->publisherId:Ljava/lang/String;

    invoke-static {v14}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lhd;->mediaType:Lih;

    move-object/from16 v0, v20

    iput-object v15, v0, Lhd;->source:Llv;

    const-wide/16 v14, 0x0

    cmp-long v2, v16, v14

    if-ltz v2, :cond_0

    invoke-static/range {v16 .. v17}, Lawd;->a(J)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lhd;->mediaDisplayTimeSec:Ljava/lang/Double;

    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v2, v18, v14

    if-ltz v2, :cond_1

    invoke-static/range {v18 .. v19}, Lawd;->a(J)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lhd;->snapTimeSec:Ljava/lang/Double;

    :cond_1
    if-gez v11, :cond_5

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    add-int/lit8 v2, v10, 0x1

    int-to-long v14, v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lhd;->snapIndexPos:Ljava/lang/Long;

    int-to-long v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lhd;->snapIndexCount:Ljava/lang/Long;

    int-to-long v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lhd;->adIndexPos:Ljava/lang/Long;

    int-to-long v10, v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lhd;->adIndexCount:Ljava/lang/Long;

    :cond_2
    invoke-static/range {v20 .. v20}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    new-instance v2, Lng$a;

    invoke-direct {v2}, Lng$a;-><init>()V

    iput-object v9, v2, Lng$a;->mChannelName:Ljava/lang/String;

    iput-object v8, v2, Lng$a;->mEditionName:Ljava/lang/String;

    iput v12, v2, Lng$a;->mPosition:I

    invoke-virtual {v2}, Lng$a;->a()Lng;

    move-result-object v2

    iget-object v6, v6, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lna;

    invoke-virtual {v6, v2, v4, v5}, Lna;->a(Lnc;J)V

    .line 762
    :cond_3
    :goto_1
    invoke-virtual {v3}, Laey;->n_()V

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/snapchat/android/discover/ui/DSnapView;->j()V

    .line 766
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/snapchat/android/discover/ui/DSnapView;->h()V

    .line 769
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 770
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 771
    return-void

    .line 721
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 735
    :cond_6
    sget-object v2, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_b

    .line 736
    invoke-virtual {v3, v4, v5}, Laey;->a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    move-result-object v2

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

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v11, v11, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laef;->d(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v11, v11, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v11}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v11

    invoke-virtual {v3}, Laey;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v12

    invoke-virtual {v3}, Laey;->k()J

    move-result-wide v14

    invoke-virtual {v3}, Laey;->j()J

    move-result-wide v16

    sget-object v13, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    if-eq v2, v13, :cond_3

    new-instance v13, Lhq;

    invoke-direct {v13}, Lhq;-><init>()V

    invoke-static {v4, v5}, Lawd;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v13, Lhq;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->wasFullView()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v13, Lhq;->fullView:Ljava/lang/Boolean;

    iput-object v6, v13, Lhq;->dsnapId:Ljava/lang/String;

    iput-object v7, v13, Lhq;->editionId:Ljava/lang/String;

    iput-object v8, v13, Lhq;->publisherId:Ljava/lang/String;

    iput-object v11, v13, Lhq;->source:Llv;

    invoke-static {v12}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v2

    iput-object v2, v13, Lhq;->mediaType:Lih;

    const-wide/16 v4, 0x0

    cmp-long v2, v14, v4

    if-ltz v2, :cond_7

    invoke-static {v14, v15}, Lawd;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v13, Lhq;->mediaDisplayTimeSec:Ljava/lang/Double;

    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v2, v16, v4

    if-ltz v2, :cond_8

    invoke-static/range {v16 .. v17}, Lawd;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v13, Lhq;->snapTimeSec:Ljava/lang/Double;

    :cond_8
    if-gez v10, :cond_a

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_9

    add-int/lit8 v2, v9, 0x1

    int-to-long v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v13, Lhq;->snapIndexCount:Ljava/lang/Long;

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v13, Lhq;->snapIndexPos:Ljava/lang/Long;

    :cond_9
    invoke-static {v13}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 747
    :cond_b
    sget-object v2, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_3

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Laey;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v11, v11, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laef;->d(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v11, v11, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v11}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v11

    new-instance v12, Lhj;

    invoke-direct {v12}, Lhj;-><init>()V

    invoke-static {v4, v5}, Lawd;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v12, Lhj;->timeViewed:Ljava/lang/Double;

    iput-object v2, v12, Lhj;->dsnapId:Ljava/lang/String;

    iput-object v6, v12, Lhj;->editionId:Ljava/lang/String;

    iput-object v7, v12, Lhj;->publisherId:Ljava/lang/String;

    invoke-static {v8}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v2

    iput-object v2, v12, Lhj;->longformType:Lih;

    iput-object v11, v12, Lhj;->source:Llv;

    if-gez v10, :cond_d

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_c

    add-int/lit8 v2, v9, 0x1

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v12, Lhj;->snapIndexPos:Ljava/lang/Long;

    int-to-long v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v12, Lhj;->snapIndexCount:Ljava/lang/Long;

    :cond_c
    invoke-static {v12}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private h()V
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    .line 611
    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 865
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
    .line 1001
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->E:Lada;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->E:Lada;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Laos;->c:J

    .line 1004
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 576
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-nez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->h()V

    .line 583
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    .line 584
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 586
    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->f(I)V

    .line 589
    iput-boolean v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 591
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdd;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getInAppNotificationSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbdd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(FFLaey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V
    .locals 10
    .param p3    # Laey;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 985
    invoke-virtual {p3}, Laey;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 986
    :goto_0
    iget-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laff;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapView$4;

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/discover/ui/DSnapView$4;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Laey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V

    invoke-virtual {v8}, Laff;->a()V

    iget-object v2, v8, Laff;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v8, Laff;->e:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Laff;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v8, Laff;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Laff;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Laff;->c:Landroid/view/View;

    const v3, 0x7f0a01e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget v0, v8, Laff;->a:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, v8, Laff;->b:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3f8ccccd    # 1.1f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    iget-object v2, v8, Laff;->e:Landroid/view/View;

    sub-float v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget-object v2, v8, Laff;->e:Landroid/view/View;

    sub-float v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    iget-object v2, v8, Laff;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v3, v0

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v8, Laff;->e:Landroid/view/View;

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

    iget-object v3, v8, Laff;->e:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laff;->e:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laff;->e:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laff;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laff;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laff;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Laff;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    iget v9, v8, Laff;->a:I

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

    iget-object v3, v8, Laff;->c:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    iget v9, v8, Laff;->b:I

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

    new-instance v3, Laff$1;

    invoke-direct {v3, v8, v1}, Laff$1;-><init>(Laff;Lawh;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 992
    :cond_0
    return-void

    .line 985
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 986
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    nop

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
    .locals 15
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual/range {p0 .. p1}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V

    .line 567
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laff;

    invoke-virtual {v0}, Laff;->b()V

    .line 554
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lafj;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iget-object v0, v1, Lafj;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lafj;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, v1, Lafj;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v3, v1, Lafj;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, v1, Lafj;->a:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput-object v0, v1, Lafj;->a:Landroid/view/View;

    .line 555
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 556
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lacy;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0, v1, v2}, Lacy;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 557
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Laef;->b(Ljava/lang/String;J)V

    iget-object v4, v2, Laef;->b:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v0, v2, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v0, Laef$c;->f:Ljava/util/Set;

    invoke-virtual {v2, v0}, Laef;->a(Ljava/util/Set;)Z

    move-result v0

    :goto_1
    invoke-virtual {v2, v3, v0}, Laef;->a(Ljava/lang/String;Z)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v0

    if-nez v0, :cond_6

    .line 560
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v1, v0, Lacr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-boolean v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->F:Z

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v4, v0, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    iget-object v5, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    if-eqz v0, :cond_4

    sget-object v5, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->NOT_STARTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    if-ne v0, v5, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Lacq;

    iget-object v5, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->d:Ljava/lang/String;

    iget-object v7, v2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iget-object v8, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v9, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget v12, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->f:I

    const-string v13, "DISCOVER_DSNAP_WAIT_TIME"

    invoke-static {v13}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v13

    const-string v14, "session_id"

    invoke-virtual {v13, v14, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v13, "publisher_name"

    invoke-virtual {v6, v13, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "edition_id"

    invoke-virtual {v6, v7, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "dsnap_id"

    invoke-virtual {v6, v7, v9}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "has_ad"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v6, "hash"

    invoke-virtual {v3, v6, v10}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v6, "snap_index_pos"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v6, "source"

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "snap_index_count"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "DISCOVER_DSNAP_WAIT_TIME"

    invoke-virtual {v0, v4, v5, v3}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    iget-object v3, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    sget-object v4, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->TIMING:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->b:Ljava/util/Set;

    iget-object v1, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Laef;->a(Ljava/lang/String;I)V

    .line 566
    invoke-virtual/range {p0 .. p1}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V

    goto/16 :goto_0

    .line 557
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 558
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

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Laef;->d(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iget-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    iget-object v9, p0, Lcom/snapchat/android/discover/ui/DSnapView;->K:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Laef;->e(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v9, v9, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v9}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    int-to-long v10, v5

    new-instance v5, Lhc;

    invoke-direct {v5}, Lhc;-><init>()V

    iput-object v2, v5, Lhc;->adsnapId:Ljava/lang/String;

    iput-object v3, v5, Lhc;->editionId:Ljava/lang/String;

    iput-object v4, v5, Lhc;->publisherId:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lhc;->snapIndexPos:Ljava/lang/Long;

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lhc;->snapIndexCount:Ljava/lang/Long;

    int-to-long v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lhc;->adIndexPos:Ljava/lang/Long;

    int-to-long v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lhc;->adIndexCount:Ljava/lang/Long;

    iput-object v9, v5, Lhc;->source:Llv;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    sget-object v0, Lfz;->FAILED:Lfz;

    :goto_4
    iput-object v0, v5, Lhc;->additionalInfo:Lfz;

    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    new-instance v0, Lng$a;

    invoke-direct {v0}, Lng$a;-><init>()V

    iput-object v4, v0, Lng$a;->mChannelName:Ljava/lang/String;

    iput-object v3, v0, Lng$a;->mEditionName:Ljava/lang/String;

    iput v7, v0, Lng$a;->mPosition:I

    invoke-virtual {v0}, Lng$a;->a()Lng;

    move-result-object v0

    iget-object v1, v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lna;

    invoke-virtual {v1, v0}, Lna;->b(Lnc;)V

    goto/16 :goto_2

    :cond_8
    sget-object v2, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->b:[I

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lfz;->FAILED:Lfz;

    goto :goto_4

    :pswitch_0
    sget-object v0, Lfz;->SERVER_INTERNAL_ERROR:Lfz;

    goto :goto_4

    :pswitch_1
    sget-object v0, Lfz;->SERVER_INVALID_REQUEST_ERROR:Lfz;

    goto :goto_4

    :pswitch_2
    sget-object v0, Lfz;->SERVER_NETWORK_ERROR:Lfz;

    goto :goto_4

    :pswitch_3
    sget-object v0, Lfz;->SERVER_NO_FILL_ERROR:Lfz;

    goto :goto_4

    :pswitch_4
    sget-object v0, Lfz;->SERVER_OTHER_ERROR:Lfz;

    goto :goto_4

    :pswitch_5
    sget-object v0, Lfz;->CONTENT_NO_FILL:Lfz;

    goto :goto_4

    :pswitch_6
    sget-object v0, Lfz;->TIMEOUT:Lfz;

    goto :goto_4

    :pswitch_7
    sget-object v0, Lfz;->CLIENT_ERROR:Lfz;

    goto :goto_4

    .line 560
    :cond_9
    iget-object v0, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Lacq;

    iget-object v5, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->d:Ljava/lang/String;

    iget-object v7, v2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iget-object v8, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v9, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget v12, v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->f:I

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v13

    iget-object v14, v0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v5}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "DISCOVER_DSNAP_WAIT_TIME"

    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v14, "session_id"

    invoke-virtual {v5, v14, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "publisher_name"

    invoke-virtual {v5, v6, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "edition_id"

    invoke-virtual {v5, v6, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "dsnap_id"

    invoke-virtual {v5, v6, v9}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "has_ad"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "hash"

    invoke-virtual {v3, v5, v10}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "type"

    invoke-virtual {v13}, Lcom/snapchat/android/discover/model/MediaState;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "snap_index_pos"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "snap_index_count"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "source"

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v0, v0, Lacq;->a:Lama;

    invoke-virtual {v0}, Lama;->f()Ljava/lang/String;

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

    .line 558
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
    .line 514
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    if-eq p2, p3, :cond_2

    .line 521
    invoke-direct {p0, p2}, Lcom/snapchat/android/discover/ui/DSnapView;->f(I)V

    .line 522
    iput p3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 523
    invoke-direct {p0, p3}, Lcom/snapchat/android/discover/ui/DSnapView;->e(I)V

    goto :goto_0

    .line 524
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 526
    invoke-virtual {p0, p2}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Laey;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Laey;->f()V

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 496
    :cond_0
    if-eqz p2, :cond_1

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    goto :goto_0

    .line 499
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

    .line 889
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    if-eqz v0, :cond_0

    .line 890
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v1, v0, v6

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 891
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

    .line 900
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v1}, Lafd;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    .line 901
    iput-boolean v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->I:Z

    .line 903
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;ILcom/snapchat/android/discover/model/DSnapPage;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchd;
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
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget v4, v0, Lafd;->j:I

    if-eq v3, v4, :cond_0

    iput v3, v0, Lafd;->j:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lafd;->e:Z

    iget-object v3, v0, Lafd;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v3}, Lafd;->a(Lcom/snapchat/android/discover/model/MediaState;)V

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
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v5, v0, v4

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
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v2}, Lafd;->a(Lcom/snapchat/android/discover/model/MediaState;)V

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

.method public final b(I)Laey;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laey;

    return-object v0
.end method

.method public final b()V
    .locals 10

    .prologue
    const/16 v9, 0x12c

    const/high16 v8, 0x43960000    # 300.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 877
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v0

    if-nez v0, :cond_2

    .line 878
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lafd;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v1, v0, Lafd;->d:Lafc;

    iget-boolean v2, v1, Lafc;->e:Z

    if-nez v2, :cond_0

    iput-boolean v6, v1, Lafc;->e:Z

    iget-object v2, v1, Lafc;->f:Landroid/animation/Animator;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lafc;->f:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    iget-object v2, v1, Lafc;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    mul-float v3, v8, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-long v4, v3

    invoke-virtual {v1, v4, v5, v2, v7}, Lafc;->a(JFZ)V

    :cond_0
    :goto_0
    iget-object v0, v0, Lafd;->c:Lafe;

    iget-boolean v1, v0, Lafe;->f:Z

    if-nez v1, :cond_1

    iput-boolean v6, v0, Lafe;->f:Z

    iget-object v1, v0, Lafe;->g:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lafe;->g:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    iget-object v1, v0, Lafe;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float v2, v8, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3, v1, v7}, Lafe;->a(JFZ)V

    .line 882
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    .line 883
    iput-boolean v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->I:Z

    .line 885
    :cond_2
    return-void

    .line 878
    :cond_3
    invoke-virtual {v1, v9}, Lafc;->a(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v9}, Lafe;->a(I)V

    goto :goto_1
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 837
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
    .line 505
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
    .line 596
    if-ltz p1, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(IZ)V

    .line 601
    :cond_0
    iput p1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 602
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->e(I)V

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->e(I)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->i()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 484
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v1

    sget-object v2, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 485
    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(IZ)V

    .line 488
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

    .line 805
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v0

    .line 810
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Laey;

    move-result-object v1

    .line 811
    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {v1}, Laey;->i()Z

    move-result v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 820
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-nez v2, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v0

    .line 824
    :cond_1
    sget-object v2, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v2, v1

    .line 825
    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v2

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 824
    goto :goto_1
.end method

.method public getCurrentPanel()I
    .locals 1

    .prologue
    .line 410
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
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    return-object v0
.end method

.method public getInAppNotificationSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
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
    .line 1024
    iget v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    return v0
.end method

.method public final o_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 683
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->o_()V

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resetting view containing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 685
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    iget-object v1, v0, Lafd;->c:Lafe;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lafd;->c:Lafe;

    invoke-virtual {v1}, Lafe;->b()V

    invoke-virtual {v1}, Lafe;->a()V

    :cond_0
    iget-object v1, v0, Lafd;->d:Lafc;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lafd;->d:Lafc;

    invoke-virtual {v1}, Lafc;->a()V

    invoke-virtual {v1}, Lafc;->b()V

    :cond_1
    iput-object v3, v0, Lafd;->i:Ljava/lang/String;

    iput v2, v0, Lafd;->j:I

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v1, v0, Lafd;->g:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v1, v0, Lafd;->h:Lcom/snapchat/android/discover/model/MediaState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lafd;->e:Z

    iput-boolean v2, v0, Lafd;->f:Z

    .line 686
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laey;

    .line 687
    invoke-virtual {v0}, Laey;->c()V

    goto :goto_0

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->removeAllViews()V

    .line 691
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d()V

    .line 692
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    .line 693
    iput-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 694
    iput-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 695
    iput-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->E:Lada;

    .line 696
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->F:Z

    .line 697
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    .line 698
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    .line 699
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Z

    .line 700
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->H:Z

    .line 701
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    .line 702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    .line 703
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->L:I

    .line 704
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Laey;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0}, Laey;->g()V

    .line 244
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->onFinishInflate()V

    .line 191
    const v0, 0x7f0a01f9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->M:Lafd$a;

    iput-object v1, v0, Lafd;->k:Lafd$a;

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f()V

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V

    .line 195
    new-instance v0, Laff;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Laff;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laff;

    .line 196
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 415
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    :goto_0
    return v1

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v3

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 420
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

    .line 421
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;->a()V

    .line 424
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->J:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v3, :cond_2

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    move v1, v2

    .line 456
    goto :goto_0

    :cond_3
    move v0, v2

    .line 419
    goto :goto_1

    .line 427
    :pswitch_0
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    if-nez v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laff;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {v0}, Laff;->a()V

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v3, v0, Lcom/snapchat/android/discover/ui/DSnapView$a;->b:F

    iput v4, v0, Lcom/snapchat/android/discover/ui/DSnapView$a;->c:F

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$a;

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->C:F

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->D:F

    .line 433
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    goto :goto_2

    .line 439
    :pswitch_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    if-eqz v0, :cond_2

    .line 448
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->h()V

    goto :goto_2

    .line 445
    :pswitch_2
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->G:Z

    if-eqz v0, :cond_2

    .line 446
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

    .line 425
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

    .line 461
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 463
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

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Laey;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {v0}, Laey;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 479
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p_()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->b:Ljava/lang/String;

    const-string v1, "auto_advancing"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;->a()V

    .line 873
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
            "Laey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1009
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1010
    return-void
.end method

.method setDSnapPreviewToolPresenter(Laff;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laff;

    .line 1015
    return-void
.end method

.method public setOnboardingEnabled(Z)V
    .locals 0

    .prologue
    .line 857
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    .line 858
    return-void
.end method
