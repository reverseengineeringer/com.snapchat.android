.class public Lcom/snapchat/android/fragments/chat/ChatFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lagr$a;
.implements Lagu$a;
.implements Lalz;
.implements Larg;
.implements Lbr;
.implements Lcom/snapchat/android/ui/CashSwiperView$b;
.implements Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;
.implements Lcom/snapchat/android/ui/here/StreamView$a;
.implements Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;
.implements Lyz$a;
.implements Lzq;


# annotations
.annotation build Lawj;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/chat/ChatFragment$22;,
        Lcom/snapchat/android/fragments/chat/ChatFragment$a;,
        Lcom/snapchat/android/fragments/chat/ChatFragment$c;,
        Lcom/snapchat/android/fragments/chat/ChatFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Lagr$a;",
        "Lagu$a;",
        "Lalz;",
        "Larg;",
        "Lbr;",
        "Lcom/snapchat/android/ui/CashSwiperView$b;",
        "Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c",
        "<",
        "Lcom/snapchat/android/model/chat/ChatFeedItem;",
        ">;",
        "Lcom/snapchat/android/ui/here/StreamView$a;",
        "Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;",
        "Lyz$a;",
        "Lzq;"
    }
.end annotation


# static fields
.field public static a:Landroid/app/PendingIntent;

.field private static aB:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static l:I

.field private static final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/notification/AndroidNotificationManager$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Lcom/snapchat/android/ui/CursorCallbackEditText;

.field private E:F

.field private F:F

.field private G:Lcom/snapchat/android/ui/ChatCameraButton;

.field private H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/LockingAboveTheFoldListView",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lagr;

.field private J:Z

.field private K:Z

.field private L:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

.field private M:Z

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private O:I

.field private P:Z

.field private Q:Landroid/view/View;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:J

.field private U:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Lcom/snapchat/android/ui/CashSwiperView;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;",
            ">;"
        }
    .end annotation
.end field

.field private W:Z

.field private X:Z

.field private Y:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Lcom/snapchat/android/ui/CashReceiverView;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Z

.field private aA:Z

.field private aC:Lcom/snapchat/android/ui/here/HereTooltip;

.field private aD:Lcom/snapchat/android/ui/cash/CashTooltip;

.field private aE:Lcom/snapchat/android/model/chat/CashFeedItem;

.field private aF:Z

.field private aG:Lagw;

.field private aH:Lagv;

.field private aI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lagv;",
            ">;"
        }
    .end annotation
.end field

.field private aJ:Z

.field private aa:Landroid/os/Handler;

.field private ab:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private ac:Layd;

.field private ad:Lzf;

.field private ae:Lakx;

.field private af:Lzh;

.field private ag:Landroid/os/Handler;

.field private ah:Lyz;

.field private ai:Lark;

.field private aj:Landroid/view/ViewStub;

.field private ak:Z

.field private al:Z

.field private am:Lze;

.field private an:Landroid/view/View;

.field private ao:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:Landroid/animation/AnimatorSet;

.field private au:I

.field private av:Z

.field private aw:F

.field private ax:Landroid/support/v4/view/GestureDetectorCompat;

.field private final ay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final az:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/snapchat/android/ui/SnapView;

.field e:Lcom/snapchat/android/model/chat/ChatConversation;

.field protected f:Lcom/snapchat/android/model/Friend;

.field protected g:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Lcom/snapchat/android/ui/here/StreamView;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lyq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Lyw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Lyt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Z

.field private o:Ljava/lang/String;

.field private final p:Lzm;

.field private final q:Laph;

.field private final r:Loa;

.field private final s:Lbbb;

.field private final t:Ltt;

.field private final u:Lamu;

.field private final v:Lael;

.field private final w:Lama;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x14

    sput v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->l:I

    .line 253
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ADDFRIEND:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-static {v0}, Ldr;->a(Ljava/lang/Object;)Ldr;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->m:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    .line 377
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v1

    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v2

    new-instance v3, Lagw;

    invoke-direct {v3}, Lagw;-><init>()V

    new-instance v4, Lzf;

    invoke-direct {v4}, Lzf;-><init>()V

    new-instance v5, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

    invoke-direct {v5}, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;-><init>()V

    invoke-static {}, Laph;->a()Laph;

    move-result-object v6

    invoke-static {}, Lama;->a()Lama;

    move-result-object v7

    invoke-static {}, Loa;->a()Loa;

    move-result-object v8

    invoke-static {}, Lbbb;->b()Lbbb;

    move-result-object v9

    invoke-static {}, Ltt;->a()Ltt;

    move-result-object v10

    invoke-static {}, Lamu;->a()Lamu;

    move-result-object v11

    new-instance v12, Lzh;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-direct {v12, v0}, Lzh;-><init>(Landroid/content/Context;)V

    new-instance v13, Lael;

    invoke-direct {v13}, Lael;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/snapchat/android/fragments/chat/ChatFragment;-><init>(Lakx;Lzm;Lagw;Lzf;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;Laph;Lama;Loa;Lbbb;Ltt;Lamu;Lzh;Lael;)V

    .line 383
    return-void
.end method

.method private constructor <init>(Lakx;Lzm;Lagw;Lzf;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;Laph;Lama;Loa;Lbbb;Ltt;Lamu;Lzh;Lael;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    .line 302
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:J

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Z

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Z

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Z

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Z

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:F

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Ljava/util/HashMap;

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Ljava/util/HashMap;

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Z

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aJ:Z

    .line 399
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 400
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ae:Lakx;

    .line 401
    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Lzm;

    .line 402
    iput-object p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Lagw;

    .line 403
    iput-object p4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lzf;

    .line 404
    iput-object p5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

    .line 405
    iput-object p6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Laph;

    .line 406
    iput-object p7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Lama;

    .line 407
    iput-object p8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Loa;

    .line 408
    iput-object p9, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->s:Lbbb;

    .line 409
    iput-object p10, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->t:Ltt;

    .line 410
    iput-object p11, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lamu;

    .line 411
    iput-object p12, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:Lzh;

    .line 412
    iput-object p13, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lael;

    .line 413
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Lagw;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lael;

    iget-object v0, v0, Lagw;->a:Lagw$a;

    iput-object v1, v0, Lagw$a;->a:Lael;

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aI:Ljava/util/Map;

    .line 415
    return-void
.end method

.method static synthetic A()Ljava/util/Set;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->m:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic A(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q()V

    return-void
.end method

.method static synthetic B(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Ljava/util/HashMap;

    return-object v0
.end method

.method private B()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 883
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->H()Ljava/lang/String;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 887
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()Z

    move-result v0

    if-nez v0, :cond_4

    .line 892
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 889
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 894
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 895
    if-nez v0, :cond_5

    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 897
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 901
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    .line 902
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {v3, v2, v0, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 903
    array-length v4, v0

    :goto_3
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 904
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 899
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v1, v0

    goto :goto_2
.end method

.method private C()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-static {}, Laoq;->a()Laoq;

    move-result-object v0

    .line 912
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic C(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Z

    return v0
.end method

.method private D()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->b()V

    .line 923
    :cond_0
    return-void
.end method

.method static synthetic D(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    return v0
.end method

.method private E()V
    .locals 4

    .prologue
    .line 933
    iget-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(J)V

    .line 935
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:J

    .line 937
    :cond_0
    return-void
.end method

.method static synthetic E(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Z:Z

    return v0
.end method

.method private F()Z
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lyq;->a(Landroid/text/Editable;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic F(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Z:Z

    return v0
.end method

.method static synthetic G(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbhr;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lbhr;

    return-object v0
.end method

.method private G()V
    .locals 5

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;

    if-nez v0, :cond_0

    invoke-static {}, Latt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0114

    const v3, 0x7f0a0122

    new-instance v4, Lcom/snapchat/android/fragments/chat/ChatFragment$8;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$8;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lbhr;-><init>(Landroid/view/View;IILbhr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/ui/here/StreamView;->a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$a;)V

    .line 1428
    return-void
.end method

.method static synthetic H(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Landroid/os/Handler;

    return-object v0
.end method

.method private H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1543
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic I(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:Z

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Z:Z

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashReceiverView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$19;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$19;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic J(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:Z

    return v0
.end method

.method static synthetic K(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:Z

    return v0
.end method

.method static synthetic L(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lzf;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lzf;

    return-object v0
.end method

.method private L()V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1696
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    if-nez v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->g(Landroid/content/Context;)V

    .line 1699
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    .line 1702
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$11;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1711
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Z

    .line 1712
    return-void
.end method

.method private M()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2494
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    .line 2495
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Z

    .line 2496
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbeg;

    invoke-direct {v1, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2497
    return-void
.end method

.method static synthetic M(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(F)V

    return-void
.end method

.method static synthetic N(Lcom/snapchat/android/fragments/chat/ChatFragment;)Layd;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Layd;

    return-object v0
.end method

.method private N()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2500
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    .line 2501
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Z

    .line 2502
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbeg;

    invoke-direct {v1, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2503
    return-void
.end method

.method private O()V
    .locals 5
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2682
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    if-lez v0, :cond_0

    .line 2683
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aJ:Z

    if-nez v0, :cond_1

    .line 2684
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v2, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    invoke-direct {p0, v0, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(IJ)V

    .line 2689
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iput v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    .line 2691
    :cond_0
    return-void

    .line 2687
    :cond_1
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aJ:Z

    goto :goto_0
.end method

.method static synthetic O(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, v0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(ZZ)V

    return-void
.end method

.method static synthetic P(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method private P()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3010
    invoke-direct {p0, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    .line 3012
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    iget v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:I

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    iget v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3033
    :goto_0
    return-void

    .line 3019
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 3020
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3023
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    .line 3024
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 3026
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:I

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3028
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3030
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3032
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method static synthetic Q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    return-object v0
.end method

.method private Q()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3039
    invoke-direct {p0, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    .line 3041
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    .line 3059
    :goto_0
    return-void

    .line 3048
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 3049
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3052
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    .line 3053
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v7

    aput v5, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 3055
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v7

    aput v5, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3056
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v7

    aput v5, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3057
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v7

    aput v5, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3058
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method static synthetic R(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    return-object v0
.end method

.method private static R()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3350
    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v1

    const-string v2, "ADDLIVE_PRESENCE"

    const-string v3, "ENABLED"

    invoke-virtual {v1, v2, v3, v0}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic S(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    return-object v0
.end method

.method static synthetic T(Lcom/snapchat/android/fragments/chat/ChatFragment;)F
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:F

    return v0
.end method

.method static synthetic U(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:F

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lcom/snapchat/android/model/chat/CashFeedItem;

    return-object p1
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2279
    instance-of v0, p0, Lake;

    if-eqz v0, :cond_1

    .line 2280
    check-cast p0, Lake;

    iget-object v0, p0, Lake;->mClientId:Ljava/lang/String;

    .line 2284
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2296
    :cond_0
    :goto_0
    return-object v0

    .line 2285
    :cond_1
    instance-of v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 2290
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 2291
    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mSendingClientId:Ljava/lang/String;

    .line 2292
    if-nez v0, :cond_0

    .line 2296
    :cond_2
    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(F)V
    .locals 3

    .prologue
    .line 2364
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2366
    if-eqz v0, :cond_0

    .line 2367
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2368
    instance-of v2, v0, Lagr$c;

    if-eqz v2, :cond_0

    .line 2369
    check-cast v0, Lagr$c;

    invoke-virtual {v0, p1}, Lagr$c;->a(F)V

    .line 2364
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2372
    :cond_1
    return-void
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/fragments/chat/ChatFragment$18;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;IJ)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashReceiverView;->post(Ljava/lang/Runnable;)Z

    .line 2716
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1631
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-eqz v0, :cond_2

    move v1, v2

    .line 1632
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->getPresence()Z

    move-result v4

    .line 1633
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbjc;

    if-eqz v0, :cond_3

    move v0, v2

    .line 1634
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    move v5, v2

    .line 1636
    :goto_2
    if-eqz v5, :cond_0

    .line 1637
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()V

    .line 1638
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/here/StreamView;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 1639
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    sget-object v6, Lcom/snapchat/android/ui/here/DisconnectReason;->REMOTE_PEER_LEFT:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {v0, v2, v6}, Lcom/snapchat/android/ui/here/StreamView;->setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 1644
    :cond_0
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->ADDLIVE:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    if-ne p1, v0, :cond_1

    invoke-static {}, Latt;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientSupportsHere:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 1651
    :cond_1
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    if-eqz v1, :cond_5

    const-string v0, "blue"

    :goto_3
    invoke-virtual {v4, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1652
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setPresent(Z)V

    .line 1654
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashtagDetected()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b:Z

    if-nez v0, :cond_6

    .line 1656
    :goto_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/ui/here/HereTooltip;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v3, v2}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 1658
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$10;

    invoke-direct {v2, p0, v5, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment$10;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;ZZ)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ChatCameraButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1678
    return-void

    :cond_2
    move v1, v3

    .line 1631
    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 1633
    goto :goto_1

    :cond_4
    move v5, v3

    .line 1634
    goto :goto_2

    .line 1651
    :cond_5
    const-string v0, "yellow"

    goto :goto_3

    :cond_6
    move v2, v3

    .line 1654
    goto :goto_4
.end method

.method private a(Lcom/snapchat/android/model/Friend;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    .line 1771
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1772
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1773
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setSelection(I)V

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1779
    if-eqz v0, :cond_3

    .line 1781
    invoke-static {}, Lakr;->ap()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1783
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1784
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lyq;->a(Landroid/widget/EditText;I)V

    goto :goto_1

    .line 1774
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1787
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    :cond_3
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;Z)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1809
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Z

    if-nez v0, :cond_0

    .line 1878
    :goto_0
    return-void

    .line 1815
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHAT-LOG: ChatFragment setFriend "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1817
    if-eqz v0, :cond_2

    .line 1818
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Layd;

    invoke-virtual {v0}, Layd;->a()V

    .line 1821
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1822
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashReceiverView;->a()V

    .line 1823
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/CashReceiverView;->setAlpha(F)V

    .line 1825
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 1826
    invoke-direct {p0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 1829
    :cond_2
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    .line 1830
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    .line 1832
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ae:Lakx;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lakx;->a(Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 1834
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_3

    .line 1838
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->NO_USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    .line 1839
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Laph;

    invoke-virtual {v0}, Laph;->e()I

    .line 1841
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1842
    invoke-static {v0}, Latq;->a(Landroid/app/Activity;)V

    .line 1843
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 1846
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Loa;

    invoke-virtual {v1}, Loa;->b()Z

    move-result v1

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mEnteredConversationFromRecentStoryReply:Z

    .line 1848
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;)V

    .line 1849
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1850
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Lama;

    invoke-virtual {v0}, Lama;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/net/NetworkInfo;)V

    .line 1853
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1855
    invoke-static {}, Lakr;->ap()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1856
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->j:Lyt;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->D()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyt;->a(Ljava/util/List;)V

    .line 1859
    :cond_5
    if-eqz p2, :cond_6

    .line 1860
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Z)Z

    .line 1862
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()V

    .line 1865
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(ZZ)V

    .line 1868
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setIsActive(Z)V

    .line 1869
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setSelection(I)V

    .line 1871
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1872
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->ADDLIVE:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;)V

    .line 1877
    :goto_1
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    sget-object v3, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-direct {v1, v2, v3}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1874
    :cond_7
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->CHAT_GATEWAY:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;)V

    goto :goto_1
.end method

.method private a(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 7
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const v6, 0x7f0c01a2

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2541
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 2542
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderBankStatementMessage:Ljava/lang/String;

    .line 2544
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mRecipientBankStatementMessage:Ljava/lang/String;

    .line 2546
    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 2507
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2510
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->M()V

    .line 2511
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 2512
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lyw;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$15;

    invoke-direct {v1, p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$15;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lyw$b;)V

    .line 2538
    return-void
.end method

.method private a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2559
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    if-eqz v0, :cond_1

    .line 2594
    :cond_0
    :goto_0
    return-void

    .line 2561
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(I)V

    .line 2563
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    .line 2564
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    .line 2565
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Z

    .line 2566
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aD:Lcom/snapchat/android/ui/cash/CashTooltip;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CashTooltip;->a()V

    .line 2568
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 2569
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->M()V

    .line 2570
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lyw;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$16;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$16;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    invoke-virtual {v1, v0, v2}, Lyw;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$a;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2223
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    .line 2226
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2227
    return-void
.end method

.method private a(ZZ)V
    .locals 12
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1965
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1966
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1967
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->o:Ljava/lang/String;

    .line 1968
    const/4 v1, -0x1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    .line 1970
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1971
    if-nez v1, :cond_0

    .line 1972
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    new-instance v1, Lakz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lakz;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1973
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    .line 1974
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    .line 2126
    :goto_0
    return-void

    .line 1978
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Layd;

    iput v1, v2, Layd;->mMessageCount:I

    .line 1979
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v2}, Lagr;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v2

    sget v3, Lcom/snapchat/android/fragments/chat/ChatFragment;->l:I

    if-ge v2, v3, :cond_1

    .line 1982
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Layd;

    iget v4, v4, Layd;->mRenderSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1984
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Layd;

    iget v3, v2, Layd;->mRenderSize:I

    iget v4, v2, Layd;->mMessageCount:I

    if-ge v3, v4, :cond_1

    iget v3, v2, Layd;->mRenderSize:I

    add-int/lit8 v3, v3, 0x1e

    iput v3, v2, Layd;->mRenderSize:I

    .line 1987
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Layd;

    iget v2, v2, Layd;->mRenderSize:I

    .line 1988
    if-ge v2, v1, :cond_22

    .line 1990
    sub-int v3, v1, v2

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 1994
    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1997
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v5

    .line 1999
    if-eqz p2, :cond_5

    .line 2000
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2001
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2002
    invoke-direct {p0, v0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2003
    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    .line 2009
    :cond_2
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 2010
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    new-instance v1, Lakz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lakz;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2011
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    .line 2012
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2000
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2014
    :cond_4
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    if-lez v0, :cond_5

    .line 2015
    const/4 v0, 0x0

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    invoke-interface {v3, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2016
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    .line 2020
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2021
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 2022
    const/4 v0, 0x0

    move v4, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_17

    .line 2023
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2024
    if-lez v4, :cond_6

    add-int/lit8 v1, v4, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-object v2, v1

    .line 2025
    :goto_4
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2024
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 2026
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v8

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Latz;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_8
    const/4 v1, 0x1

    .line 2027
    :goto_5
    if-eqz v1, :cond_9

    .line 2028
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v6}, Latz;->a(Ljava/util/Calendar;)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v8, Lakz;

    invoke-direct {v8, v0}, Lakz;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    iget-object v9, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    invoke-direct {p0, v9, v8, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;Z)V

    .line 2031
    :cond_9
    instance-of v8, v0, Lalb;

    if-nez v8, :cond_13

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_b

    .line 2032
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lale;

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_a
    :goto_7
    new-instance v2, Lala;

    invoke-direct {v2, v1, v0}, Lala;-><init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2034
    :cond_b
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    invoke-direct {p0, v1, v0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;Z)V

    .line 2035
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->aj()Ljava/lang/String;

    move-result-object v1

    .line 2036
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v9, v9, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v9, v2, v8

    const/4 v8, 0x2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    :goto_8
    aput-object v1, v2, v8

    const/4 v8, 0x3

    instance-of v1, v0, Lakw;

    if-eqz v1, :cond_16

    check-cast v0, Lakw;

    invoke-virtual {v0}, Lakw;->t()J

    move-result-wide v0

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v8

    .line 2022
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    .line 2026
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 2031
    :cond_d
    instance-of v1, v2, Lalb;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_6

    :cond_e
    instance-of v1, v2, Lcom/snapchat/android/model/Snap;

    if-eqz v1, :cond_f

    move-object v1, v2

    check-cast v1, Lcom/snapchat/android/model/Snap;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap;->ao()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_6

    :cond_f
    instance-of v1, v0, Lale;

    if-eqz v1, :cond_10

    instance-of v1, v2, Lale;

    if-eqz v1, :cond_11

    :cond_10
    instance-of v1, v2, Lale;

    if-eqz v1, :cond_12

    instance-of v1, v0, Lale;

    if-nez v1, :cond_12

    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_12
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 2032
    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, ""

    goto/16 :goto_7

    .line 2036
    :cond_15
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_16
    const-wide/16 v0, -0x1

    goto :goto_9

    .line 2047
    :cond_17
    if-nez v5, :cond_19

    .line 2048
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 2049
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    .line 2051
    :cond_18
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    new-instance v1, Lakz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lakz;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2054
    :cond_19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2056
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    if-nez v0, :cond_1a

    .line 2057
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    .line 2062
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$13;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2073
    :cond_1a
    if-eqz p1, :cond_1b

    .line 2074
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    .line 2077
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 2078
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q()V

    .line 2079
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v0}, Lze;->a()V

    goto/16 :goto_0

    .line 2082
    :cond_1b
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v4

    .line 2084
    const/4 v1, 0x0

    move v2, v4

    move v3, v4

    .line 2090
    :goto_a
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v2, v0, :cond_1c

    .line 2091
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0, v2}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 2092
    if-eqz v0, :cond_21

    .line 2095
    instance-of v1, v0, Lala;

    if-eqz v1, :cond_1d

    move v1, v2

    .line 2096
    :goto_b
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_a

    :cond_1c
    move-object v0, v1

    move v2, v3

    .line 2101
    :cond_1d
    if-eqz v0, :cond_20

    .line 2102
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    .line 2103
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sub-int v1, v2, v4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2104
    if-nez v0, :cond_1e

    const/4 v0, 0x0

    move v1, v0

    .line 2106
    :goto_c
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    .line 2110
    const/4 v0, 0x0

    .line 2111
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2112
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2113
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 2116
    goto :goto_d

    .line 2104
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    move v1, v0

    goto :goto_c

    .line 2119
    :cond_1f
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 2121
    :cond_20
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_21
    move-object v0, v1

    move v1, v3

    goto :goto_b

    :cond_22
    move-object v3, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aD:Lcom/snapchat/android/ui/cash/CashTooltip;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CashTooltip;->a(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashtagDetected(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashSwipeDetected(Z)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_7

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-static {v1}, Lyq;->a(Landroid/widget/EditText;)I

    move-result v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lyq;->a(Landroid/text/Editable;)I

    move-result v1

    if-ne v1, v8, :cond_2

    move v1, v2

    :cond_2
    if-eq v4, v8, :cond_3

    add-int/2addr v1, v4

    const v4, 0xf4240

    if-lt v1, v4, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "^\\${3,}$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aD:Lcom/snapchat/android/ui/cash/CashTooltip;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/cash/CashTooltip;->a(Z)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashtagDetected(Z)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v1, v4}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashSwipeDetected(Z)V

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    if-nez v0, :cond_5

    if-eqz v4, :cond_c

    :cond_5
    const-string v1, "green"

    :goto_2
    invoke-virtual {v5, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_6

    if-eqz v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lyq;->b(Landroid/text/Editable;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Lyq;->a(Ljava/lang/String;I)Lyq$a;

    move-result-object v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v6

    invoke-static {v1, v6}, Lyq;->b(Ljava/lang/String;I)Lyq$a;

    move-result-object v1

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_a

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget v6, v0, Lyq$a;->a:I

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-gt v6, v7, :cond_9

    iget v6, v0, Lyq$a;->b:I

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-lt v6, v5, :cond_9

    move v0, v2

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto :goto_3

    :cond_b
    move v0, v3

    goto/16 :goto_1

    :cond_c
    const-string v1, "yellow"

    goto :goto_2
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Z

    return p1
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2134
    instance-of v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;

    if-eqz v0, :cond_0

    .line 2135
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->am()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->o:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2144
    :goto_0
    return v0

    .line 2138
    :cond_0
    instance-of v0, p1, Laka;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Laka;

    invoke-virtual {v0}, Laka;->A()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2139
    goto :goto_0

    .line 2144
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 426
    :goto_0
    sput-object p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    .line 427
    return v0

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:F

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbhr;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    return-object v0
.end method

.method private b(F)V
    .locals 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 2957
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2958
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2962
    :cond_0
    cmpl-float v0, p1, v6

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    .line 2964
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 2965
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 2966
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 2967
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 2969
    cmpl-float v4, p1, v5

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v4}, Lze;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-static {v4}, Lbgd;->b(Landroid/widget/ListView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2971
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->P()V

    .line 3004
    :cond_1
    :goto_1
    return-void

    .line 2962
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2975
    :cond_3
    cmpl-float v4, p1, v5

    if-nez v4, :cond_4

    cmpl-float v4, v0, v5

    if-nez v4, :cond_4

    cmpl-float v4, v1, v5

    if-nez v4, :cond_4

    cmpl-float v4, v2, v5

    if-nez v4, :cond_4

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_1

    .line 2980
    :cond_4
    cmpl-float v4, p1, v6

    if-nez v4, :cond_5

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:I

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    .line 2987
    :cond_5
    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    neg-float v4, v4

    float-to-int v4, v4

    .line 2988
    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    .line 2989
    iget v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    iget v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, p1

    neg-float v6, v6

    float-to-int v6, v6

    .line 2990
    iget v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    iget v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    .line 2992
    int-to-float v8, v4

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_6

    .line 2993
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2995
    :cond_6
    int-to-float v0, v5

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 2996
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    int-to-float v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2998
    :cond_7
    int-to-float v0, v6

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    .line 2999
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    int-to-float v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3001
    :cond_8
    int-to-float v0, v7

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 3002
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1885
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    if-nez v0, :cond_1

    .line 1915
    :cond_0
    return-void

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v5

    .line 1890
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v6

    .line 1891
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    move v4, v5

    .line 1892
    :goto_0
    if-gt v4, v6, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sub-int v1, v4, v5

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1894
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagr$c;

    .line 1895
    if-eqz v0, :cond_5

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 1896
    iget-object v1, v0, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1897
    invoke-interface {v7, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1900
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1903
    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->aj()Ljava/lang/String;

    move-result-object v0

    .line 1904
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v6, v6, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v6, 0x2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    aput-object v0, v5, v6

    instance-of v0, v1, Lakw;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lakw;

    invoke-virtual {v0}, Lakw;->t()J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v10

    .line 1909
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-interface {v0, v4, v8, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1910
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    move v1, v3

    move v3, v4

    :goto_3
    if-lt v3, v5, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sub-int v4, v3, v5

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagr$c;

    if-eqz v0, :cond_6

    iget-object v7, v0, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v1, :cond_2

    instance-of v8, v0, Lakz;

    if-eqz v8, :cond_0

    :cond_2
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    instance-of v8, v7, Lala;

    if-eqz v8, :cond_6

    invoke-interface {v7}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-interface {v0, v3, v4, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    if-nez v1, :cond_0

    move v0, v2

    :goto_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_3

    .line 1904
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 1892
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lyz;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:Lyz;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatFragment;F)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:F

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->M()V

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lyq;->a(Landroid/text/Editable;)I

    move-result v3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lcom/snapchat/android/model/chat/CashFeedItem;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x1

    invoke-static {v3}, Lcom/snapchat/android/util/CashUtils;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v8}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v4

    iget-object v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lyw;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/chat/ChatFragment$9;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;ILcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Landroid/text/Editable;)V

    invoke-virtual {v7, v4, v0}, Lyw;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v0, v0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput v3, v0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0, v2, v0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Lzm;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Lald$a;

    iget-object v5, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    iget-object v6, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lald$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v4, Lald$a;->text:Ljava/lang/String;

    invoke-virtual {v4}, Lald$a;->a()Lald;

    move-result-object v4

    invoke-virtual {v4}, Lakw;->U()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lakw;->c(J)V

    invoke-virtual {v2, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    new-instance v0, Lbjj;

    invoke-direct {v0}, Lbjj;-><init>()V

    sget-object v5, Lbjj$a;->TEXT:Lbjj$a;

    invoke-virtual {v5}, Lbjj$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lbjj;->a(Ljava/lang/String;)Lbjj;

    move-result-object v0

    invoke-virtual {v4}, Lakw;->aj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lbjj;->b(Ljava/lang/String;)Lbjj;

    move-result-object v5

    sget-object v0, Lbji$a;->CHAT_MESSAGE:Lbji$a;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Ljava/util/List;

    move-result-object v6

    iget-object v7, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    invoke-static {v0, v3, v6, v7}, Laty;->a(Lbji$a;Ljava/lang/String;Ljava/util/List;Lbjy;)Lbil;

    move-result-object v0

    check-cast v0, Lbif;

    invoke-virtual {v4}, Lakw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbif;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lbif;->a(Lbjj;)V

    invoke-virtual {v4}, Lakw;->U()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbif;->b(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lbif;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lakw;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lakw;->a(Lbif;)V

    invoke-virtual {v1, v2, v4}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;)V

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v8}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    return-object v0
.end method

.method private g(Z)V
    .locals 9

    .prologue
    const v8, 0x7f0900a1

    const v7, 0x7f090003

    const v6, 0x7f090002

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2768
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setShouldSubtractStatusBarHeightFromFooter(Z)V

    .line 2769
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2770
    if-eqz p1, :cond_3

    .line 2771
    instance-of v3, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v3, :cond_0

    .line 2772
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    iput-boolean v1, v0, Lms;->d:Z

    iget-object v3, v0, Lms;->f:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    iget-object v3, v0, Lms;->e:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lms;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2775
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 2783
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2787
    :goto_2
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lamu;

    if-nez p1, :cond_6

    :goto_3
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aj:Landroid/view/ViewStub;

    invoke-static {}, Lbhp;->a()V

    invoke-virtual {v3, v5}, Lamu;->a(Landroid/view/ViewStub;)V

    iget-object v5, v3, Lamu;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/InAppPromptFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v1, :cond_7

    iget-object v0, v3, Lamu;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    const v1, 0x7f0a025b

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 2793
    :goto_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2795
    if-nez v0, :cond_8

    .line 2826
    :cond_1
    :goto_5
    return-void

    :cond_2
    move v0, v2

    .line 2768
    goto :goto_0

    .line 2777
    :cond_3
    instance-of v3, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v3, :cond_4

    .line 2778
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    iput-boolean v2, v0, Lms;->d:Z

    .line 2781
    :cond_4
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    goto :goto_1

    .line 2783
    :cond_5
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_2

    :cond_6
    move v1, v2

    .line 2787
    goto :goto_3

    :cond_7
    iget-object v0, v3, Lamu;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    const v1, 0x7f0a025b

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 2799
    :cond_8
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2802
    if-eqz p1, :cond_a

    .line 2803
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    move v1, v2

    .line 2811
    :goto_6
    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    if-eq v4, v3, :cond_9

    .line 2812
    iget v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2813
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2815
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2817
    if-eqz v0, :cond_9

    .line 2818
    iget v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    iput v3, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2819
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2823
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 2824
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    .line 2807
    :cond_a
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    .line 2808
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_6
.end method

.method private h(Z)V
    .locals 3

    .prologue
    .line 2833
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Z

    if-eq v0, p1, :cond_0

    .line 2834
    if-eqz p1, :cond_1

    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 2836
    :goto_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbfk;

    invoke-direct {v2, v0}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2837
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Z

    .line 2839
    :cond_0
    return-void

    .line 2834
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    goto :goto_0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/chat/ChatFragment;)F
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:F

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/chat/ChatFragment;)F
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:F

    return v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/here/HereTooltip;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/ui/here/HereTooltip;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    return-void
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 940
    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    return v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lze;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    return-object v0
.end method

.method public static n()Z
    .locals 1

    .prologue
    .line 944
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 948
    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    .line 949
    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    .line 950
    return-void
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->M()V

    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/cash/CashTooltip;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aD:Lcom/snapchat/android/ui/cash/CashTooltip;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->N()V

    return-void
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Z

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Z

    const-string v0, ""

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->H()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->SNAP_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbfe;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    invoke-direct {v2, v0, v3}, Lbfe;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic s(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Z

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Z

    const-string v0, ""

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->H()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbff;

    invoke-direct {v2, v0}, Lbff;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lagr;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2431
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ltt;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->t:Ltt;

    return-object v0
.end method

.method static synthetic w(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lzm;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Lzm;

    return-object v0
.end method

.method static synthetic x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string v0, "ChatFragment"

    return-object v0
.end method

.method static synthetic x(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lzh;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:Lzh;

    return-object v0
.end method

.method static synthetic y(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Landroid/support/v4/view/GestureDetectorCompat;

    return-object v0
.end method

.method static synthetic y()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    return v0
.end method

.method static synthetic z()I
    .locals 1

    .prologue
    .line 225
    sget v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->l:I

    return v0
.end method

.method static synthetic z(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2376
    if-nez p1, :cond_0

    move v0, v1

    .line 2382
    :goto_0
    return v0

    .line 2377
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2378
    instance-of v2, v0, Lagr$c;

    if-eqz v2, :cond_1

    .line 2379
    check-cast v0, Lagr$c;

    .line 2380
    iget-object v0, v0, Lagr$c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2382
    goto :goto_0
.end method

.method final a(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 3

    .prologue
    .line 2417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2419
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->pointToPosition(II)I

    move-result v0

    .line 2422
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v1}, Lagr;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 2423
    const/4 v0, 0x0

    .line 2425
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-static {p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 2550
    sget-object v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->HOLD:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    .line 2551
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 2895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Z

    .line 2896
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:F

    .line 2897
    return-void
.end method

.method public final a(IZZ)V
    .locals 21

    .prologue
    .line 2843
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-nez v2, :cond_1

    .line 2888
    :cond_0
    :goto_0
    return-void

    .line 2846
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 2847
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    .line 2852
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Z

    .line 2854
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-static {v2}, Lbgd;->b(Landroid/widget/ListView;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Z

    if-eqz v2, :cond_0

    .line 2857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v6

    .line 2858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v7

    .line 2859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2, v6}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2860
    if-eq v6, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-object v4, v2

    .line 2862
    :goto_1
    invoke-static {v3, v4}, Lze;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v2}, Lze;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2866
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 2887
    :cond_3
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->au:I

    goto :goto_0

    .line 2860
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 2869
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeight()I

    move-result v5

    iput v5, v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    .line 2870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2871
    if-eq v6, v7, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sub-int v6, v7, v6

    invoke-virtual {v2, v6}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2874
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->au:I

    sub-int v2, p1, v2

    if-lez v2, :cond_c

    .line 2876
    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;

    sget-object v7, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;->UP:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/view/View;Landroid/view/View;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;)V

    .line 2883
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

    iget-object v12, v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v13, v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->b:Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v14, v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->c:Landroid/view/View;

    iget-object v15, v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->d:Landroid/view/View;

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    move v10, v3

    :goto_5
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_6
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    int-to-float v0, v10

    move/from16 v16, v0

    iget v0, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    iget v0, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3e000000    # 0.125f

    mul-float v17, v17, v18

    div-float v16, v16, v17

    iget v0, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3e000000    # 0.125f

    mul-float v18, v18, v19

    div-float v17, v17, v18

    iget-object v2, v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;->e:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;

    sget-object v18, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;->UP:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_11

    if-eqz v12, :cond_6

    invoke-interface {v12}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ak()Z

    move-result v2

    if-eqz v2, :cond_6

    int-to-float v2, v10

    iget v10, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    int-to-float v10, v10

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v10, v12

    iget v12, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    int-to-float v12, v12

    const/high16 v18, 0x3e000000    # 0.125f

    mul-float v12, v12, v18

    add-float/2addr v10, v12

    cmpg-float v2, v2, v10

    if-gtz v2, :cond_6

    const/4 v9, 0x1

    :cond_6
    if-eqz v13, :cond_7

    invoke-interface {v13}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ak()Z

    move-result v2

    if-eqz v2, :cond_7

    int-to-float v2, v3

    iget v3, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    int-to-float v3, v3

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v3, v10

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7

    const/4 v8, 0x1

    :cond_7
    if-eqz v9, :cond_f

    if-nez v8, :cond_f

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagr$c;

    move v5, v3

    move-object v3, v2

    move-object v2, v4

    move v4, v6

    :goto_7
    new-instance v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;

    invoke-direct {v6, v3, v2, v5, v4}, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;-><init>(Lagr$c;Lagr$c;FF)V

    .line 2885
    iget-object v5, v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->a:Lagr$c;

    iget-object v7, v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->b:Lagr$c;

    iget v8, v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->c:F

    iget v6, v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->d:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    iget-object v2, v9, Lze;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v2, v9, Lze;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v10

    move v3, v4

    :goto_8
    if-gt v3, v10, :cond_18

    iget-object v2, v9, Lze;->a:Landroid/widget/ListView;

    sub-int v11, v3, v4

    invoke-virtual {v2, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagr$c;

    if-eqz v2, :cond_16

    if-eq v3, v4, :cond_8

    if-ne v3, v10, :cond_15

    :cond_8
    iget-object v2, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ak()Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x0

    :goto_9
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v8, v3

    if-eqz v3, :cond_19

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->P()V

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_9

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v2, v5, v8}, Lze;->a(Lagr$c;F)V

    :cond_9
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_a

    if-eqz v7, :cond_a

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v2, v7, v6}, Lze;->a(Lagr$c;F)V

    :cond_a
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/ui/here/HereTooltip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    goto/16 :goto_2

    .line 2871
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 2880
    :cond_c
    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;

    sget-object v7, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;->DOWN:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/view/View;Landroid/view/View;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;)V

    goto/16 :goto_4

    .line 2883
    :cond_d
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_5

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_f
    if-nez v9, :cond_10

    if-eqz v8, :cond_10

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagr$c;

    move v4, v3

    move-object v3, v5

    move v5, v7

    goto/16 :goto_7

    :cond_10
    if-eqz v9, :cond_1f

    if-eqz v8, :cond_1f

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagr$c;

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lagr$c;

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_7

    :cond_11
    if-eqz v12, :cond_12

    invoke-interface {v12}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ak()Z

    move-result v2

    if-eqz v2, :cond_12

    int-to-float v2, v10

    iget v10, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    int-to-float v10, v10

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v10, v12

    cmpl-float v2, v2, v10

    if-ltz v2, :cond_12

    const/4 v2, 0x1

    move v9, v2

    :cond_12
    if-eqz v13, :cond_20

    invoke-interface {v13}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ak()Z

    move-result v2

    if-eqz v2, :cond_20

    int-to-float v2, v3

    iget v3, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    int-to-float v3, v3

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v3, v10

    iget v10, v11, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    int-to-float v10, v10

    const/high16 v11, 0x3e000000    # 0.125f

    mul-float/2addr v10, v11

    sub-float/2addr v3, v10

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_20

    const/4 v2, 0x1

    :goto_c
    if-eqz v9, :cond_13

    if-nez v2, :cond_13

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagr$c;

    move v5, v3

    move-object v3, v2

    move-object v2, v4

    move v4, v6

    goto/16 :goto_7

    :cond_13
    if-nez v9, :cond_14

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagr$c;

    move v4, v3

    move-object v3, v5

    move v5, v7

    goto/16 :goto_7

    :cond_14
    if-eqz v9, :cond_1f

    if-eqz v2, :cond_1f

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagr$c;

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lagr$c;

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_7

    .line 2885
    :cond_15
    iget-object v2, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v2, v2, Lala;

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_17
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_8

    :cond_18
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_19
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v8, v3

    if-eqz v3, :cond_1c

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v3}, Lze;->b()Z

    move-result v3

    if-nez v3, :cond_1a

    if-eqz v2, :cond_1b

    :cond_1a
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v2, v5, v8}, Lze;->a(Lagr$c;F)V

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    goto :goto_d

    :cond_1c
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_a

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v3}, Lze;->b()Z

    move-result v3

    if-nez v3, :cond_1d

    if-eqz v2, :cond_1e

    :cond_1d
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    goto/16 :goto_a

    :cond_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    goto/16 :goto_a

    :cond_1f
    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_7

    :cond_20
    move v2, v8

    goto/16 :goto_c
.end method

.method public final a(Lajk;)V
    .locals 0
    .param p1    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 3328
    return-void
.end method

.method public final a(Laka;Lajk;)V
    .locals 0
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 3310
    return-void
.end method

.method public final a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 3320
    instance-of v0, p1, Lakl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->V:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    iget-object v0, v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3323
    :cond_0
    return-void
.end method

.method public final a(Lalc;)V
    .locals 3
    .param p1    # Lalc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-static {p1}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lalc;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lalc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2756
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:Lzh;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lzh;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lalj;Ljava/lang/String;)V

    .line 2758
    :cond_1
    return-void

    .line 2754
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 2

    .prologue
    .line 865
    const-string v0, "\u2753"

    .line 866
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 867
    :cond_0
    const-string v0, "\ud83d\udeab"

    .line 879
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    return-void

    .line 869
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 871
    :pswitch_0
    const-string v0, "\ud83d\udcf6"

    goto :goto_0

    .line 874
    :pswitch_1
    const-string v0, "\u2705"

    goto :goto_0

    .line 869
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/view/View;IZ)V
    .locals 0

    .prologue
    .line 2400
    return-void
.end method

.method public final a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1516
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1517
    if-nez v0, :cond_0

    .line 1539
    :goto_0
    return-void

    .line 1519
    :cond_0
    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment$22;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1521
    :pswitch_0
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1522
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1524
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1525
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1528
    :pswitch_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1529
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1535
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1536
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1537
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 5
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 489
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    .line 490
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_0

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 501
    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 502
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2321
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 2337
    :cond_0
    :goto_0
    return v0

    .line 2323
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Landroid/view/View;)I

    move-result v1

    .line 2325
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/view/View;)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    .line 2331
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/view/View;)F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 2332
    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(F)V

    goto :goto_0

    .line 2336
    :cond_3
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(F)V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 2389
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2390
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2392
    :goto_0
    return v0

    .line 2391
    :cond_0
    const/high16 v1, 0x424c0000    # 51.0f

    invoke-static {v1, v0}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    .line 2392
    float-to-int v0, v0

    goto :goto_0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    if-eqz v0, :cond_0

    .line 1721
    if-eqz p1, :cond_1

    .line 1722
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    invoke-interface {v0}, Lagv;->b()V

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b:Z

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    invoke-interface {v0}, Lagv;->a()V

    goto :goto_0
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2249
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagr$c;

    .line 2251
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    invoke-interface {v1}, Lagv;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2253
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aI:Ljava/util/Map;

    iget-object v2, v0, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lagv;

    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    .line 2256
    :cond_1
    iget-object v1, v0, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v1, v1, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v1, :cond_2

    .line 2258
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->P()V

    .line 2259
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lze;->a(Lagr$c;F)V

    .line 2262
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    if-eqz v0, :cond_4

    .line 2263
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    instance-of v0, v0, Lagu;

    if-eqz v0, :cond_3

    .line 2264
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    check-cast v0, Lagu;

    invoke-virtual {v0, p0}, Lagu;->a(Lagu$a;)V

    .line 2266
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    invoke-interface {v0}, Lagv;->a()V

    .line 2268
    :cond_4
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1737
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1738
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setVisibility(I)V

    .line 1739
    return-void

    :cond_0
    move v0, v2

    .line 1737
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1738
    goto :goto_1
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 2744
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    .line 2745
    return-void
.end method

.method public final d(Laka;)V
    .locals 0
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 3315
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 18
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 3069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-eqz v2, :cond_d

    .line 3070
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagr$c;

    .line 3071
    const/4 v4, 0x0

    .line 3072
    const/4 v5, 0x0

    .line 3073
    const-wide/16 v6, 0x0

    .line 3074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3075
    iget-object v3, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v3, Lakw;

    if-eqz v3, :cond_3

    .line 3076
    iget-object v3, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v3, Lakw;

    .line 3077
    iget-object v10, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v11, v11, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 3078
    invoke-virtual {v3}, Lakw;->t()J

    move-result-wide v10

    .line 3079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v12, v12, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    cmp-long v12, v10, v12

    if-lez v12, :cond_2

    .line 3080
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v5, v10, v11}, Lzf;->c(Lcom/snapchat/android/model/chat/ChatConversation;J)Z

    move-result v5

    .line 3082
    invoke-virtual {v3}, Lakw;->B()I

    move-result v3

    int-to-long v6, v3

    move v3, v4

    move/from16 v16, v5

    move-wide v4, v6

    move/from16 v6, v16

    .line 3112
    :goto_0
    if-eqz v6, :cond_0

    .line 3113
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_9

    .line 3114
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 3116
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:Landroid/os/Handler;

    new-instance v8, Lcom/snapchat/android/fragments/chat/ChatFragment$20;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment$20;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v7, v8, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3130
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lzf;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v6, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    iget-wide v8, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    iget-wide v10, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    iget-wide v12, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    iget-wide v14, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v8, v6}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v7

    iget-object v4, v4, Lzf;->b:Lzm;

    sget-object v8, Lbju$a;->DISPLAY:Lbju$a;

    invoke-virtual {v4, v5, v6, v7, v8}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/Map;Ljava/util/Map;Lbju$a;)V

    .line 3133
    :cond_0
    if-eqz v3, :cond_1

    .line 3134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lzf;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    sget-object v5, Lbju$a;->RELEASE:Lbju$a;

    invoke-virtual {v3, v4, v5}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbju$a;)V

    .line 3135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 3138
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aI:Ljava/util/Map;

    iget-object v4, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lagv;

    .line 3139
    if-nez v3, :cond_b

    .line 3140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Lagw;

    iget-object v3, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v4, v3, Lalc;

    if-eqz v4, :cond_10

    check-cast v3, Lalc;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lagr$c;

    invoke-virtual {v3}, Lalc;->X()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v5, v5, Lagw;->a:Lagw$a;

    iget-object v3, v5, Lagw$a;->a:Lael;

    if-nez v3, :cond_a

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Discover deep link controller not initialized!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3083
    :cond_2
    invoke-virtual {v3, v8, v9}, Lakw;->g(J)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3084
    const/4 v3, 0x1

    :goto_2
    move-wide/from16 v16, v6

    move v6, v5

    move-wide/from16 v4, v16

    .line 3087
    goto/16 :goto_0

    :cond_3
    iget-object v3, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v3, Lake;

    if-eqz v3, :cond_5

    .line 3088
    iget-object v3, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v3, Lake;

    .line 3089
    invoke-virtual {v3}, Lake;->l()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3090
    invoke-virtual {v3}, Lake;->U()J

    move-result-wide v8

    .line 3091
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v10, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    cmp-long v3, v8, v10

    if-lez v3, :cond_4

    .line 3092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v3, v8, v9}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)Z

    move-result v4

    :cond_4
    move v3, v4

    move/from16 v16, v5

    move-wide v4, v6

    move/from16 v6, v16

    .line 3096
    goto/16 :goto_0

    :cond_5
    iget-object v3, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v3, Laka;

    if-eqz v3, :cond_7

    .line 3097
    iget-object v3, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v3, Laka;

    .line 3098
    invoke-virtual {v3}, Laka;->A()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3099
    invoke-virtual {v3}, Laka;->U()J

    move-result-wide v8

    .line 3100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v10, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v3, v8, v10

    if-lez v3, :cond_6

    .line 3101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v3, v8, v9}, Lzf;->b(Lcom/snapchat/android/model/chat/ChatConversation;J)Z

    move-result v4

    :cond_6
    move v3, v4

    move/from16 v16, v5

    move-wide v4, v6

    move/from16 v6, v16

    .line 3105
    goto/16 :goto_0

    :cond_7
    iget-object v3, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v3, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_8

    .line 3106
    iget-object v3, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v3, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 3107
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->i()Z

    move-result v8

    if-nez v8, :cond_8

    .line 3108
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lzf;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v8, v9, v3}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    :cond_8
    move v3, v4

    move/from16 v16, v5

    move-wide v4, v6

    move/from16 v6, v16

    goto/16 :goto_0

    .line 3128
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v3}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v3

    goto/16 :goto_1

    .line 3140
    :cond_a
    new-instance v3, Lagt;

    iget-object v5, v5, Lagw$a;->a:Lael;

    invoke-direct {v3, v4, v5}, Lagt;-><init>(Lagr$c;Lael;)V

    .line 3141
    :goto_3
    if-eqz v3, :cond_b

    .line 3142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aI:Ljava/util/Map;

    iget-object v2, v2, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3153
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-static {v2}, Lbgd;->b(Landroid/widget/ListView;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3154
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3155
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3156
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3158
    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_c
    const/4 v2, 0x1

    .line 3159
    :goto_4
    if-eqz v2, :cond_d

    .line 3160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b()Z

    .line 3164
    :cond_d
    return-void

    .line 3140
    :cond_e
    iget-object v5, v5, Lagw;->a:Lagw$a;

    iget-object v3, v5, Lagw$a;->a:Lael;

    if-nez v3, :cond_f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Discover deep link controller not initialized!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance v3, Lagu;

    iget-object v5, v5, Lagw$a;->a:Lael;

    invoke-direct {v3, v4, v5}, Lagu;-><init>(Lagr$c;Lael;)V

    goto :goto_3

    :cond_10
    const/4 v3, 0x0

    goto :goto_3

    .line 3158
    :cond_11
    const/4 v2, 0x0

    goto :goto_4

    :cond_12
    move v3, v4

    goto/16 :goto_2
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 1746
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1747
    return-void

    .line 1746
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final e()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 509
    invoke-static {}, Lnw;->d()V

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfk;

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v4}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->a(Lzq;)V

    .line 515
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Lama;

    invoke-virtual {v0}, Lama;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/net/NetworkInfo;)V

    .line 518
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Lama;

    invoke-virtual {v0, p0}, Lama;->a(Lalz;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Lzm;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lzm;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 525
    :cond_1
    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Z)V

    .line 526
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 528
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 529
    invoke-direct {p0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    .line 530
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Z

    .line 531
    invoke-direct {p0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    .line 533
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v4, Lbbl;

    invoke-direct {v4, v2}, Lbbl;-><init>(Z)V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 534
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 535
    instance-of v0, v1, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_2

    .line 536
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Loa;

    invoke-virtual {v0}, Loa;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Loa;

    iget-object v4, v0, Loa;->mRecentStoryReplyEvent:Lbdu;

    if-nez v4, :cond_5

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_3
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v4, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v5, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->HIGH:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v4, v5}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 549
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    iget-object v0, v0, Lagr;->c:Lahb;

    iput-boolean v2, v0, Lahb;->a:Z

    .line 551
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_6

    .line 610
    :cond_4
    :goto_1
    return-void

    .line 538
    :cond_5
    iget-object v4, v0, Loa;->mRecentStoryReplyEvent:Lbdu;

    iget-object v4, v4, Lbdu;->friendUsername:Ljava/lang/String;

    iget-object v0, v0, Loa;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    invoke-static {v4, v0}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    goto :goto_0

    .line 557
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 559
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    .line 560
    iget-wide v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:J

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j()V

    .line 561
    :cond_7
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C()V

    .line 562
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Z)V

    .line 563
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 564
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()V

    .line 565
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/here/StreamView;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 569
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setLockingEnabled(Z)V

    .line 571
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aJ:Z

    .line 572
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->O()V

    .line 576
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v0}, Lze;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 577
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lzf;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v4, v3}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 582
    :cond_8
    invoke-direct {p0, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(ZZ)V

    .line 583
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v5, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/database/table/NotificationTable;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Ljava/lang/String;

    .line 587
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->r()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v0, v5, :cond_c

    move v0, v2

    :goto_3
    if-nez v0, :cond_9

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    new-instance v0, Lrc;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lrc;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;

    new-instance v3, Lcom/snapchat/android/fragments/chat/ChatFragment$1;

    invoke-direct {v3, p0, v4}, Lcom/snapchat/android/fragments/chat/ChatFragment$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v2, v3}, Lrc;->registerCallback(Ljava/lang/Class;Lui$b;)V

    invoke-virtual {v0}, Lrc;->execute()V

    .line 588
    :cond_9
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->L()V

    .line 591
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lamu;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lamu;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lamu;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_a

    const-string v2, "chatOrCashFromServerNotification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 595
    const-string v2, "chatOrCashFromServerNotification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 597
    instance-of v0, v1, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_a

    move-object v0, v1

    .line 598
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    .line 599
    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->CHAT:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)J

    move-result-wide v0

    .line 602
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_a

    .line 603
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    invoke-static {v2, v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZJ)V

    .line 609
    :cond_a
    invoke-static {}, Lnw;->e()V

    goto/16 :goto_1

    .line 567
    :cond_b
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->CHAT_GATEWAY:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;)V

    goto/16 :goto_2

    :cond_c
    move v0, v3

    .line 587
    goto :goto_3
.end method

.method public final e(Z)V
    .locals 1

    .prologue
    .line 2437
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    if-eqz v0, :cond_1

    .line 2439
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    invoke-interface {v0}, Lagv;->b()V

    .line 2441
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    if-eqz v0, :cond_2

    .line 2442
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    .line 2445
    :cond_2
    return-void
.end method

.method public final e_()V
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    .line 657
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e_()V

    .line 658
    return-void
.end method

.method protected final f()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 662
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 664
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->b(Lzq;)V

    .line 666
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->a()V

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/CashSwiperView;->setEnabled(Z)V

    iget-object v1, v0, Lcom/snapchat/android/ui/CashSwiperView;->b:Lcom/snapchat/android/ui/CashSwiperView$b;

    invoke-interface {v1}, Lcom/snapchat/android/ui/CashSwiperView$b;->v()V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->c()V

    .line 669
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 670
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 671
    const-string v1, "RESUMING_FROM_SWIPE_MESSAGE"

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c028c

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v5, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v6

    invoke-static {v5, v6}, Lauk;->e(Ljava/lang/String;Lakp;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 675
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    .line 682
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Z

    if-eqz v0, :cond_2

    .line 683
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbl;

    invoke-direct {v1, v7}, Lbbl;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    invoke-interface {v0}, Lagv;->c()V

    .line 688
    iput-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    .line 691
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagv;

    .line 692
    invoke-interface {v0}, Lagv;->c()V

    goto :goto_0

    .line 694
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 696
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->L2S_SWIPE_OUT:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/StreamView;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 700
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_7

    .line 701
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Z)V

    .line 702
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 703
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->ADDLIVE:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;)V

    .line 707
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    .line 710
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {v0}, Lze;->a()V

    .line 712
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    if-eqz v0, :cond_d

    .line 715
    :cond_6
    new-array v0, v9, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v1, v0, v7

    .line 731
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lzf;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1, v9}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 734
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    iget-object v0, v0, Lagr;->c:Lahb;

    iput-boolean v7, v0, Lahb;->a:Z

    .line 735
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdd;

    const-string v2, "ChatFragment"

    invoke-direct {v1, v2}, Lbdd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 737
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()V

    .line 738
    invoke-static {}, Laoq;->a()Laoq;

    move-result-object v0

    invoke-virtual {v0}, Laoq;->b()V

    .line 739
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setLockingEnabled(Z)V

    .line 740
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->a()V

    .line 741
    iput-boolean v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Z

    .line 743
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    if-nez v0, :cond_8

    .line 744
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()V

    .line 749
    :cond_8
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    if-nez v0, :cond_a

    .line 751
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_9

    .line 754
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ae:Lakx;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lakx;->b(Ljava/lang/String;Z)V

    .line 757
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 758
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 760
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbn;

    invoke-direct {v1}, Lbbn;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setIsActive(Z)V

    iput-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    iput-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-boolean v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    .line 764
    :cond_a
    invoke-static {v7}, Lapx;->a(Z)V

    .line 765
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Layd;

    invoke-virtual {v0}, Layd;->a()V

    .line 766
    sput-object v8, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lael;

    iget-object v1, v0, Lael;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lael;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Lael;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Lael;->c:Laem;

    iget-object v3, v2, Laem;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v2, Laem;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    iget-object v2, v2, Laem;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v0, Lael;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lael;->n:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 769
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 770
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Lama;

    invoke-virtual {v0, p0}, Lama;->b(Lalz;)V

    .line 772
    :cond_b
    return-void

    .line 705
    :cond_c
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->CHAT_GATEWAY:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;)V

    goto/16 :goto_1

    .line 719
    :cond_d
    new-array v0, v9, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v1, v0, v7

    .line 720
    invoke-static {}, Lavr;->b()V

    .line 724
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lzf;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    sget-object v2, Lbju$a;->DELETE:Lbju$a;

    invoke-virtual {v0, v1, v2}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbju$a;)V

    .line 726
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->s()V

    .line 727
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-boolean v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    .line 728
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->o()V

    goto/16 :goto_2

    .line 768
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->b()V

    .line 849
    const/4 v0, 0x1

    .line 851
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()Lalv;
    .locals 4

    .prologue
    .line 436
    new-instance v0, Lalv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CHAT"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lalv;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 2748
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    .line 2749
    return-void
.end method

.method public final k()Lamt;
    .locals 1

    .prologue
    .line 3283
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$21;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$21;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    return-object v0
.end method

.method public onCancelInChatSnapEvent(Lbbs;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Z

    .line 1607
    iget-boolean v0, p1, Lbbs;->mShouldDisplayHereTooltip:Z

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/ui/here/HereTooltip;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/ui/here/HereTooltip;->setCancelInChatSnapTime(J)V

    .line 1610
    :cond_0
    return-void
.end method

.method public onCancelQuickSnapEvent(Lbbt;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Z

    .line 1615
    return-void
.end method

.method public onCashRainEvent(Lbbv;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2672
    iget-object v0, p1, Lbbv;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2678
    :goto_0
    return-void

    .line 2676
    :cond_0
    iget-wide v0, p1, Lbbv;->mCount:J

    long-to-int v0, v0

    iget-wide v2, p1, Lbbv;->mCreatedAt:J

    invoke-direct {p0, v0, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(IJ)V

    .line 2677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aJ:Z

    goto :goto_0
.end method

.method public onChatLinkClickedEvent(Lbby;)V
    .locals 7
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2449
    iget-object v1, p1, Lbby;->snapchatUrlSpan:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    .line 2450
    iget-object v2, v1, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->mMessage:Lalj;

    .line 2452
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2453
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-object v0, v1, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->mType:Lcom/snapchat/android/util/chat/UrlType;

    sget-object v6, Lcom/snapchat/android/util/chat/UrlType;->TEL:Lcom/snapchat/android/util/chat/UrlType;

    if-ne v0, v6, :cond_0

    const v0, 0x7f0c0086

    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-interface {v2}, Lalj;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0089

    :goto_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const v5, 0x7f0c0058

    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 2460
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment$14;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/util/chat/SnapchatUrlSpan;Lalj;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2484
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2485
    return-void

    .line 2453
    :cond_0
    const v0, 0x7f0c0087

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0088

    goto :goto_1
.end method

.method public onChatSwipeStartedEvent(Lbbz;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1763
    iget-object v0, p1, Lbbz;->friend:Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1765
    :cond_0
    iget-object v0, p1, Lbbz;->friend:Lcom/snapchat/android/model/Friend;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 1766
    return-void
.end method

.method public onChatUpdatedEvent(Lbca;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2301
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_1

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2303
    :cond_1
    iget-object v0, p1, Lbca;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2304
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->O()V

    .line 2306
    iget-object v0, p1, Lbca;->mMessageId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2307
    iget-object v0, p1, Lbca;->mMessageId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Ljava/lang/String;)V

    .line 2309
    iget-boolean v0, p1, Lbca;->mScrollToBottom:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b:Z

    if-nez v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 2311
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q()V

    goto :goto_0

    .line 2314
    :cond_2
    iget-boolean v0, p1, Lbca;->mScrollToBottom:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(ZZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onClearChatTextEvent(Lbcb;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1755
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1758
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 964
    invoke-static {}, Lnw;->d()V

    .line 965
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 966
    const v0, 0x7f040029

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    .line 968
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 969
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    .line 970
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    .line 971
    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:I

    .line 972
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:I

    .line 973
    const v0, 0x7f0a011a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/HereTooltip;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/ui/here/HereTooltip;

    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CashTooltip;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aD:Lcom/snapchat/android/ui/cash/CashTooltip;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Landroid/os/Handler;

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a011c

    const v3, 0x7f0a011f

    invoke-direct {v0, v1, v2, v3}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lbhr;

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a011d

    const v3, 0x7f0a0120

    new-instance v4, Lcom/snapchat/android/fragments/chat/ChatFragment$12;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$12;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lbhr;-><init>(Landroid/view/View;IILbhr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$a;

    invoke-direct {v2, p0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment$a;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;B)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v0, Lyz;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lyz;-><init>(Landroid/content/Context;Lyz$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:Lyz;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v1, 0x7f0a010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SpyRelativeLayout;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$23;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$23;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    iget-object v0, v0, Lcom/snapchat/android/ui/SpyRelativeLayout;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0110

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$24;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$24;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0115

    const v3, 0x7f0a0121

    invoke-direct {v0, v1, v2, v3}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    const v0, 0x7f0a0116

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/view/View;

    const v0, 0x7f0a0119

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Landroid/widget/TextView;

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->C:Landroid/widget/TextView;

    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CursorCallbackEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    iput v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:F

    iput v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:F

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const v1, 0xc001

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setInputType(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setMaxLines(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$25;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$25;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$26;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$26;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$27;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$27;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$28;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$28;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    iget-object v2, v0, Lcom/snapchat/android/ui/CursorCallbackEditText;->a:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/snapchat/android/ui/CursorCallbackEditText;->a:Ljava/util/List;

    :cond_0
    iget-object v0, v0, Lcom/snapchat/android/ui/CursorCallbackEditText;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$29;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$29;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a0118

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ChatCameraButton;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$2;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$3;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Layd;

    invoke-direct {v0}, Layd;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Layd;

    const v0, 0x7f0a010f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setInterface(Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setTranscriptMode(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$4;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setLockingEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setScrollViewCallbacks(Lbr;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setMinimumFooterHeight(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setShouldSubtractStatusBarHeightFromFooter(Z)V

    new-instance v0, Lze;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-direct {v0, v1}, Lze;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04002d

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Landroid/view/View;

    invoke-virtual {v1, v2, v6, v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v1, 0x7f04002f

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$5;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    const v1, 0x7f0a0123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    const v1, 0x7f0a0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    new-instance v1, Lakz;

    invoke-direct {v1, v6}, Lakz;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    new-instance v0, Lagr;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0, p0}, Lagr;-><init>(Landroid/content/Context;Ljava/util/List;Lagr$a;Larg;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aI:Ljava/util/Map;

    iput-object v1, v0, Lagr;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$6;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$7;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$7;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;

    invoke-direct {v0, p0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment$b;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;B)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;

    invoke-direct {v0, p0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment$c;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;B)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lari;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->s:Lbbb;

    const-string v3, "Chat"

    invoke-direct {v0, v2, v3}, Lari;-><init>(Lbbb;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lark;

    invoke-direct {v0, v1}, Lark;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ai:Lark;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ai:Lark;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0248

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aj:Landroid/view/ViewStub;

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a011e

    const v3, 0x7f0a01e6

    invoke-direct {v0, v1, v2, v3}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->V:Lbhr;

    .line 974
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lash;

    invoke-interface {v0}, Lash;->l()Lcom/snapchat/android/ui/SnapView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/SnapView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    if-eqz p3, :cond_2

    .line 977
    const-string v0, "friend_username"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 978
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 979
    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    .line 982
    :cond_1
    const-string v0, "message_drafts"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 984
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 986
    const-string v0, "cashtag_positions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 988
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 991
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 992
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 993
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 994
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 995
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lze;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Lze;->b:I

    .line 997
    iput-boolean v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Z

    .line 998
    invoke-virtual {p0, v7}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Z)V

    .line 1000
    invoke-static {}, Lnw;->e()V

    .line 1001
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 974
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement SnapViewProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1006
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 1007
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lcom/snapchat/android/ui/ChatCameraButton;

    iget-object v1, v0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1008
    :cond_0
    return-void
.end method

.method public onEndpointsRefreshedEvent(Lbgr$a;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2490
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->D()V

    .line 2491
    return-void
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    .line 2356
    return-void
.end method

.method public onFeedTimerChangeEvent(Lbcl;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2342
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    iget-object v1, p1, Lbcl;->mFriendUsername:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2346
    :goto_0
    return-void

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onLoadConversationPageTaskEvent(Lbde;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1512
    iget-object v0, p1, Lbde;->mTaskStatus:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    .line 1513
    return-void
.end method

.method public onLoadSnapMediaEvent(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    .line 2361
    return-void
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 776
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 777
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    .line 778
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    .line 779
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v0, v3

    .line 780
    :goto_0
    if-eqz v0, :cond_6

    .line 781
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goToFragmentNum"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setIntent(Landroid/content/Intent;)V

    .line 786
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->D()V

    .line 788
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->clearFocus()V

    .line 789
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()V

    .line 790
    invoke-static {}, Laoq;->a()Laoq;

    move-result-object v0

    invoke-virtual {v0}, Laoq;->b()V

    .line 791
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()V

    .line 792
    return-void

    .line 779
    :cond_2
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_2
    if-lez v4, :cond_7

    add-int/lit8 v0, v4, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    instance-of v1, v0, Lalj;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lalj;

    invoke-interface {v1}, Lalj;->g()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_3
    instance-of v0, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;

    if-eqz v0, :cond_4

    move v0, v3

    :goto_3
    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_0

    .line 783
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    iget-object v0, v0, Lagr;->c:Lahb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lahb;->a(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getLatestSeenItemTimestamp - latestItemTimestamp "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lahb;->c:Lahb$a;

    iget-wide v4, v4, Lahb$a;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " lastNotifiedTimestamp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lahb;->c:Lahb$a;

    iget-wide v4, v4, Lahb$a;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lahb;->c:Lahb$a;

    iget-wide v4, v0, Lahb$a;->a:J

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Laph;

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v6, v6, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v7, "op_code"

    const/16 v8, 0x3e9

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "conversationId"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "latestSeenItemTimestamp"

    invoke-virtual {v2, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/32 v4, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method public onPresenceUpdatedEvent(Lbdp;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1619
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbdp;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p1, Lbdp;->presenceSource:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;)V

    .line 1621
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    iget-boolean v1, p1, Lbdp;->videoReceived:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/StreamView;->c(Z)V

    .line 1625
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-static {}, Lnw;->d()V

    .line 452
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 453
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    .line 457
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    .line 460
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->k:Z

    if-eqz v0, :cond_0

    .line 461
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->k:Z

    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Z)V

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 467
    :cond_0
    invoke-static {}, Lnw;->e()V

    .line 470
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    .line 471
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()V

    .line 473
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/StreamView;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 476
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 441
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 442
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 443
    const-string v0, "friend_username"

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_0
    const-string v0, "message_drafts"

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 446
    const-string v0, "cashtag_positions"

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 447
    return-void
.end method

.method public onSecureChatSessionConnectedEvent(Lbee;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Z)V

    .line 862
    :cond_0
    return-void
.end method

.method public onSnapSelectedForReplayEvent(Lbep;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Lagr;

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    .line 2351
    return-void
.end method

.method public onSnapViewingEvent(Lbem;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1592
    iget-boolean v0, p1, Lbem;->mBeingViewed:Z

    if-eqz v0, :cond_1

    .line 1593
    invoke-static {}, Laoq;->a()Laoq;

    move-result-object v0

    invoke-virtual {v0}, Laoq;->b()V

    .line 1602
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 1598
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C()V

    .line 1599
    invoke-direct {p0, v1, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(ZZ)V

    goto :goto_0
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1686
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    .line 1687
    return-void
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 2236
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:I

    return v0
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    if-eqz v0, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Lagv;

    invoke-interface {v0}, Lagv;->b()V

    .line 2276
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 10

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    if-eqz v0, :cond_0

    .line 2646
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Lzm;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getFirstSwipeMillis()J

    move-result-wide v6

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lbji$a;->CASH_RAIN:Lbji$a;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Ljava/util/List;

    move-result-object v8

    iget-object v9, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    invoke-static {v3, v0, v8, v9}, Laty;->a(Lbji$a;Ljava/lang/String;Ljava/util/List;Lbjy;)Lbil;

    move-result-object v0

    check-cast v0, Lbia;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbia;->b(Ljava/lang/Long;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbia;->a(Ljava/lang/Long;)V

    invoke-virtual {v1, v2, v0}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    .line 2649
    :cond_0
    return-void
.end method

.method public final u_()Z
    .locals 1

    .prologue
    .line 2555
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    return v0
.end method

.method public final v()V
    .locals 1

    .prologue
    .line 2653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    .line 2654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    .line 2657
    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Z

    if-nez v0, :cond_0

    .line 2658
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->L()V

    .line 2660
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v0

    if-nez v0, :cond_1

    .line 2661
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->N()V

    .line 2663
    :cond_1
    return-void
.end method

.method public final w()V
    .locals 3

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_1

    .line 2668
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    sget-object v1, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->DOLLARS:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->M()V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$17;

    invoke-direct {v2, p0, v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$17;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
