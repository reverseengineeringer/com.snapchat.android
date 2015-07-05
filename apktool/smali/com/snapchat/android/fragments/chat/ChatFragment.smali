.class public Lcom/snapchat/android/fragments/chat/ChatFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lafr$a;
.implements Lafu$a;
.implements Lald;
.implements Laqi;
.implements Lbr;
.implements Lcom/snapchat/android/ui/CashSwiperView$b;
.implements Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;
.implements Lcom/snapchat/android/ui/here/StreamView$a;
.implements Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;
.implements Lyd$a;
.implements Lyu;


# annotations
.annotation build Lavl;
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
        "Lafr$a;",
        "Lafu$a;",
        "Lald;",
        "Laqi;",
        "Lbr;",
        "Lcom/snapchat/android/ui/CashSwiperView$b;",
        "Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c",
        "<",
        "Lcom/snapchat/android/model/chat/ChatFeedItem;",
        ">;",
        "Lcom/snapchat/android/ui/here/StreamView$a;",
        "Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;",
        "Lyd$a;",
        "Lyu;"
    }
.end annotation


# static fields
.field public static a:Landroid/app/PendingIntent;

.field private static az:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/notification/AndroidNotificationManager$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/snapchat/android/ui/CursorCallbackEditText;

.field private C:F

.field private D:F

.field private E:Lcom/snapchat/android/ui/ChatCameraButton;

.field private F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/LockingAboveTheFoldListView",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lafr;

.field private H:Z

.field private I:Z

.field private J:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

.field private K:Z

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private M:I

.field private N:Z

.field private O:Landroid/view/View;

.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:J

.field private S:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Lcom/snapchat/android/ui/CashSwiperView;",
            ">;"
        }
    .end annotation
.end field

.field private T:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;",
            ">;"
        }
    .end annotation
.end field

.field private U:Z

.field private V:Z

.field private W:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Lcom/snapchat/android/ui/CashReceiverView;",
            ">;"
        }
    .end annotation
.end field

.field private X:Z

.field private Y:Landroid/os/Handler;

.field private Z:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private aA:Lcom/snapchat/android/ui/here/HereTooltip;

.field private aB:Lcom/snapchat/android/ui/cash/CashTooltip;

.field private aC:Lcom/snapchat/android/model/chat/CashFeedItem;

.field private aD:Z

.field private aE:Lafw;

.field private aF:Lafv;

.field private aG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lafv;",
            ">;"
        }
    .end annotation
.end field

.field private aH:Z

.field private aa:Laxf;

.field private ab:Lyj;

.field private ac:Lakc;

.field private ad:Lyl;

.field private ae:Landroid/os/Handler;

.field private af:Lyd;

.field private ag:Laqn;

.field private ah:Landroid/view/ViewStub;

.field private ai:Z

.field private aj:Z

.field private ak:Lyi;

.field private al:Landroid/view/View;

.field private am:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:Landroid/animation/AnimatorSet;

.field private as:I

.field private at:Z

.field private au:F

.field private av:Landroid/support/v4/view/GestureDetectorCompat;

.field private final aw:Ljava/util/HashMap;
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

.field private final ax:Ljava/util/HashMap;
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

.field private ay:Z

.field protected d:Lcom/snapchat/android/ui/SnapView;

.field e:Lcom/snapchat/android/model/chat/ChatConversation;

.field protected f:Lcom/snapchat/android/model/Friend;

.field protected g:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Lcom/snapchat/android/ui/here/StreamView;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lxu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Lya;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Lxx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Z

.field private final n:Lyq;

.field private final o:Laol;

.field private final p:Lnj;

.field private final q:Lbaa;

.field private final r:Ltd;

.field private final s:Lalx;

.field private final t:Ladl;

.field private final u:Lale;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ADDFRIEND:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-static {v0}, Ldi;->a(Ljava/lang/Object;)Ldi;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->l:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    .line 373
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v1

    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v2

    new-instance v3, Lafw;

    invoke-direct {v3}, Lafw;-><init>()V

    new-instance v4, Lyj;

    invoke-direct {v4}, Lyj;-><init>()V

    new-instance v5, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

    invoke-direct {v5}, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;-><init>()V

    invoke-static {}, Laol;->a()Laol;

    move-result-object v6

    invoke-static {}, Lale;->a()Lale;

    move-result-object v7

    invoke-static {}, Lnj;->a()Lnj;

    move-result-object v8

    invoke-static {}, Lbaa;->a()Lbaa;

    move-result-object v9

    invoke-static {}, Ltd;->a()Ltd;

    move-result-object v10

    invoke-static {}, Lalx;->a()Lalx;

    move-result-object v11

    new-instance v12, Lyl;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-direct {v12, v0}, Lyl;-><init>(Landroid/content/Context;)V

    new-instance v13, Ladl;

    invoke-direct {v13}, Ladl;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/snapchat/android/fragments/chat/ChatFragment;-><init>(Lakc;Lyq;Lafw;Lyj;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;Laol;Lale;Lnj;Lbaa;Ltd;Lalx;Lyl;Ladl;)V

    .line 379
    return-void
.end method

.method private constructor <init>(Lakc;Lyq;Lafw;Lyj;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;Laol;Lale;Lnj;Lbaa;Ltd;Lalx;Lyl;Ladl;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Z

    .line 298
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:J

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Z

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ai:Z

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aj:Z

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Z

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->au:F

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Ljava/util/HashMap;

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Ljava/util/HashMap;

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aD:Z

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Z

    .line 395
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 396
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Lakc;

    .line 397
    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Lyq;

    .line 398
    iput-object p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lafw;

    .line 399
    iput-object p4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lyj;

    .line 400
    iput-object p5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

    .line 401
    iput-object p6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->o:Laol;

    .line 402
    iput-object p7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lale;

    .line 403
    iput-object p8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Lnj;

    .line 404
    iput-object p9, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Lbaa;

    .line 405
    iput-object p10, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Ltd;

    .line 406
    iput-object p11, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->s:Lalx;

    .line 407
    iput-object p12, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lyl;

    .line 408
    iput-object p13, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->t:Ladl;

    .line 409
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lafw;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->t:Ladl;

    iget-object v0, v0, Lafw;->a:Lafw$a;

    iput-object v1, v0, Lafw$a;->a:Ladl;

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Ljava/util/Map;

    .line 411
    return-void
.end method

.method private A()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 861
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()Ljava/lang/String;

    move-result-object v0

    .line 864
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()Z

    move-result v0

    if-nez v0, :cond_4

    .line 870
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 867
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 872
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 873
    if-nez v0, :cond_5

    .line 874
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 875
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 879
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    .line 880
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {v3, v2, v0, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 881
    array-length v4, v0

    :goto_3
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 882
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 877
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v1, v0

    goto :goto_2
.end method

.method static synthetic A(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->O()V

    return-void
.end method

.method static synthetic B(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Ljava/util/HashMap;

    return-object v0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    invoke-static {}, Lant;->a()Lant;

    move-result-object v0

    .line 890
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lant;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private C()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->b()V

    .line 901
    :cond_0
    return-void
.end method

.method static synthetic C(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Z

    return v0
.end method

.method private D()V
    .locals 4

    .prologue
    .line 911
    iget-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 912
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(J)V

    .line 913
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:J

    .line 915
    :cond_0
    return-void
.end method

.method static synthetic D(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Z

    return v0
.end method

.method private E()Z
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lxu;->a(Landroid/text/Editable;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic E(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Z

    return v0
.end method

.method private F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1499
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic F(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Z

    return v0
.end method

.method static synthetic G(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbgr;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lbgr;

    return-object v0
.end method

.method private G()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1587
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-eqz v0, :cond_2

    move v1, v2

    .line 1588
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbic;

    if-eqz v0, :cond_3

    move v0, v2

    .line 1589
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    move v4, v2

    .line 1591
    :goto_2
    if-eqz v4, :cond_1

    .line 1592
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;

    if-nez v0, :cond_0

    invoke-static {}, Lasu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    new-instance v0, Lbgr;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v6, 0x7f0a0114

    const v7, 0x7f0a0122

    new-instance v8, Lcom/snapchat/android/fragments/chat/ChatFragment$9;

    invoke-direct {v8, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$9;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-direct {v0, v5, v6, v7, v8}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Lcom/snapchat/android/ui/here/StreamView;->a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$a;)V

    .line 1603
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/here/StreamView;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 1604
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    sget-object v5, Lcom/snapchat/android/ui/here/DisconnectReason;->REMOTE_PEER_LEFT:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {v0, v2, v5}, Lcom/snapchat/android/ui/here/StreamView;->setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 1607
    :cond_1
    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    if-eqz v1, :cond_5

    const-string v0, "blue"

    :goto_3
    invoke-virtual {v5, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1608
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setPresent(Z)V

    .line 1610
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashtagDetected()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-nez v0, :cond_6

    .line 1612
    :goto_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Lcom/snapchat/android/ui/here/HereTooltip;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v3, v2}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 1614
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$10;

    invoke-direct {v2, p0, v4, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment$10;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;ZZ)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ChatCameraButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1634
    return-void

    :cond_2
    move v1, v3

    .line 1587
    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 1588
    goto/16 :goto_1

    :cond_4
    move v4, v3

    .line 1589
    goto/16 :goto_2

    .line 1607
    :cond_5
    const-string v0, "yellow"

    goto :goto_3

    :cond_6
    move v2, v3

    .line 1610
    goto :goto_4
.end method

.method static synthetic H(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic I(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Z

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

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

.method private J()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1652
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->V:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Z

    if-nez v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lavh;->g(Landroid/content/Context;)V

    .line 1655
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    .line 1658
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$11;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1667
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->V:Z

    .line 1668
    return-void
.end method

.method static synthetic J(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    return v0
.end method

.method private K()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2396
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    .line 2397
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Z

    .line 2398
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdg;

    invoke-direct {v1, v2}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2399
    return-void
.end method

.method static synthetic K(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Z

    return v0
.end method

.method static synthetic L(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lyj;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lyj;

    return-object v0
.end method

.method private L()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2402
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    .line 2403
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Z

    .line 2404
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdg;

    invoke-direct {v1, v2}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2405
    return-void
.end method

.method private M()V
    .locals 5
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2584
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    if-lez v0, :cond_0

    .line 2585
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Z

    if-nez v0, :cond_1

    .line 2586
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v2, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    invoke-direct {p0, v0, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(IJ)V

    .line 2591
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iput v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    .line 2593
    :cond_0
    return-void

    .line 2589
    :cond_1
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Z

    goto :goto_0
.end method

.method static synthetic M(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(F)V

    return-void
.end method

.method static synthetic N(Lcom/snapchat/android/fragments/chat/ChatFragment;)Laxf;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Laxf;

    return-object v0
.end method

.method private N()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2912
    invoke-direct {p0, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Z)V

    .line 2914
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    iget v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    iget v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2935
    :goto_0
    return-void

    .line 2921
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2922
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2925
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    .line 2926
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 2928
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2930
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2932
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2934
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private O()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2941
    invoke-direct {p0, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Z)V

    .line 2943
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

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

    .line 2961
    :goto_0
    return-void

    .line 2950
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2951
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2954
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    .line 2955
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v7

    aput v5, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 2957
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v7

    aput v5, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2958
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

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2959
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

    .line 2960
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method static synthetic O(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    return-void
.end method

.method static synthetic P(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic Q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic R(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic S(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic T(Lcom/snapchat/android/fragments/chat/ChatFragment;)F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->au:F

    return v0
.end method

.method static synthetic U(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F
    .locals 0

    .prologue
    .line 223
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->C:F

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/model/chat/CashFeedItem;

    return-object p1
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2181
    instance-of v0, p0, Laji;

    if-eqz v0, :cond_1

    .line 2182
    check-cast p0, Laji;

    iget-object v0, p0, Laji;->mClientId:Ljava/lang/String;

    .line 2186
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2198
    :cond_0
    :goto_0
    return-object v0

    .line 2187
    :cond_1
    instance-of v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 2192
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 2193
    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mSendingClientId:Ljava/lang/String;

    .line 2194
    if-nez v0, :cond_0

    .line 2198
    :cond_2
    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(F)V
    .locals 3

    .prologue
    .line 2266
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 2267
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2268
    if-eqz v0, :cond_0

    .line 2269
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2270
    instance-of v2, v0, Lafr$c;

    if-eqz v2, :cond_0

    .line 2271
    check-cast v0, Lafr$c;

    invoke-virtual {v0, p1}, Lafr$c;->a(F)V

    .line 2266
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2274
    :cond_1
    return-void
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/fragments/chat/ChatFragment$18;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;IJ)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashReceiverView;->post(Ljava/lang/Runnable;)Z

    .line 2618
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    .line 1727
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1728
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1729
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setSelection(I)V

    .line 1730
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1732
    if-eqz v0, :cond_2

    .line 1734
    invoke-static {}, Lajx;->aq()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->s()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1736
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1737
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lxu;->a(Landroid/widget/EditText;I)V

    goto :goto_1

    .line 1729
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    :cond_2
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;Z)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1762
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aD:Z

    if-nez v0, :cond_0

    .line 1763
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment setFriend won\'t update the friend because the ChatFragment is not created yet."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1827
    :goto_0
    return-void

    .line 1768
    :cond_0
    const-string v0, "ChatFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT-LOG: ChatFragment setFriend "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1770
    if-eqz v0, :cond_2

    .line 1771
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment setFriend changed. Resetting some state."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1773
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Laxf;

    invoke-virtual {v0}, Laxf;->a()V

    .line 1774
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1775
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashReceiverView;->a()V

    .line 1776
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/CashReceiverView;->setAlpha(F)V

    .line 1778
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 1779
    invoke-direct {p0, v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 1782
    :cond_2
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    .line 1783
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Z

    .line 1785
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Lakc;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lakc;->a(Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 1787
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_3

    .line 1791
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->NO_USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    .line 1792
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->o:Laol;

    invoke-virtual {v0}, Laol;->e()I

    .line 1794
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1795
    invoke-static {v0}, Lasr;->a(Landroid/app/Activity;)V

    .line 1796
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 1799
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Lnj;

    invoke-virtual {v1}, Lnj;->b()Z

    move-result v1

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mEnteredConversationFromRecentStoryReply:Z

    .line 1801
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;)V

    .line 1802
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1803
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lale;

    invoke-virtual {v0}, Lale;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/net/NetworkInfo;)V

    .line 1806
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1808
    invoke-static {}, Lajx;->aq()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1809
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->j:Lxx;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->E()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxx;->a(Ljava/util/List;)V

    .line 1812
    :cond_5
    if-eqz p2, :cond_6

    .line 1813
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Z)Z

    .line 1815
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Lyq;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lyq;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 1816
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->t()V

    .line 1819
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    .line 1820
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setIsActive(Z)V

    .line 1821
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->d:Landroid/widget/BaseAdapter;

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAdapter() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v1, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->e:Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;

    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setInterface() must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-boolean v1, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b(I)Z

    iget-object v1, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setSelection(I)V

    .line 1822
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setSelection(I)V

    .line 1824
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()V

    .line 1826
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbap;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    sget-object v3, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-direct {v1, v2, v3}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 7
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const v6, 0x7f0c01a2

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2443
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 2444
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderBankStatementMessage:Ljava/lang/String;

    .line 2446
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mRecipientBankStatementMessage:Ljava/lang/String;

    .line 2448
    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 2409
    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: SEND transaction id[%s] recipient[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2412
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->K()V

    .line 2413
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 2414
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lya;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$15;

    invoke-direct {v1, p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$15;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lya$b;)V

    .line 2440
    return-void
.end method

.method private a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2461
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Z

    if-eqz v0, :cond_1

    .line 2496
    :cond_0
    :goto_0
    return-void

    .line 2463
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(I)V

    .line 2465
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    .line 2466
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Z

    .line 2467
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->V:Z

    .line 2468
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Lcom/snapchat/android/ui/cash/CashTooltip;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CashTooltip;->a()V

    .line 2470
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 2471
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->K()V

    .line 2472
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lya;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$16;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$16;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    invoke-virtual {v1, v0, v2}, Lya;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lya$a;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2125
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    instance-of v0, p2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ao()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 2126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:I

    .line 2128
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2129
    return-void

    .line 2125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Laje;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Laje;

    invoke-virtual {v0}, Laje;->z()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Lcom/snapchat/android/ui/cash/CashTooltip;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CashTooltip;->a(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashtagDetected(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashSwipeDetected(Z)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_7

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-static {v1}, Lxu;->a(Landroid/widget/EditText;)I

    move-result v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lxu;->a(Landroid/text/Editable;)I

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
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "^\\${3,}$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Lcom/snapchat/android/ui/cash/CashTooltip;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/cash/CashTooltip;->a(Z)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashtagDetected(Z)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v1, v4}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashSwipeDetected(Z)V

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

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

    invoke-static {v0}, Lxu;->b(Landroid/text/Editable;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Lxu;->a(Ljava/lang/String;I)Lxu$a;

    move-result-object v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v6

    invoke-static {v1, v6}, Lxu;->b(Ljava/lang/String;I)Lxu$a;

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

    iget v6, v0, Lxu$a;->a:I

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-gt v6, v7, :cond_9

    iget v6, v0, Lxu$a;->b:I

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
    .line 223
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->V:Z

    return p1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 422
    :goto_0
    sput-object p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    .line 423
    return v0

    .line 421
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F
    .locals 0

    .prologue
    .line 223
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:F

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbgr;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    return-object v0
.end method

.method private b(F)V
    .locals 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 2859
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2860
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2864
    :cond_0
    cmpl-float v0, p1, v6

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Z)V

    .line 2866
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 2867
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 2868
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 2869
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 2871
    cmpl-float v4, p1, v5

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v4}, Lyi;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-static {v4}, Lbfd;->b(Landroid/widget/ListView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2873
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->N()V

    .line 2906
    :cond_1
    :goto_1
    return-void

    .line 2864
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2877
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

    .line 2882
    :cond_4
    cmpl-float v4, p1, v6

    if-nez v4, :cond_5

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    .line 2889
    :cond_5
    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    neg-float v4, v4

    float-to-int v4, v4

    .line 2890
    iget v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    .line 2891
    iget v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    iget v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, p1

    neg-float v6, v6

    float-to-int v6, v6

    .line 2892
    iget v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    iget v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    .line 2894
    int-to-float v8, v4

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_6

    .line 2895
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2897
    :cond_6
    int-to-float v0, v5

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 2898
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    int-to-float v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2900
    :cond_7
    int-to-float v0, v6

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    .line 2901
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    int-to-float v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2903
    :cond_8
    int-to-float v0, v7

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 2904
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1834
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Z

    if-nez v0, :cond_1

    .line 1864
    :cond_0
    return-void

    .line 1838
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v5

    .line 1839
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v6

    .line 1840
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    move v4, v5

    .line 1841
    :goto_0
    if-gt v4, v6, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sub-int v1, v4, v5

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1843
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr$c;

    .line 1844
    if-eqz v0, :cond_5

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 1845
    iget-object v1, v0, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1846
    invoke-interface {v7, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1849
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

    .line 1852
    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->al()Ljava/lang/String;

    move-result-object v0

    .line 1853
    const-string v5, "ChatFragment"

    const-string v6, "CHAT-LOG: Refreshing Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    iget-object v9, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v9, v9, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v9, v7, v2

    const/4 v9, 0x2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_1
    aput-object v0, v7, v9

    instance-of v0, v1, Lakb;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lakb;

    invoke-virtual {v0}, Lakb;->s()J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v11

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1858
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-interface {v0, v4, v8, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1859
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    move v1, v3

    move v3, v4

    :goto_3
    if-lt v3, v5, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sub-int v4, v3, v5

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr$c;

    if-eqz v0, :cond_6

    iget-object v7, v0, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v1, :cond_2

    instance-of v8, v0, Lake;

    if-eqz v8, :cond_0

    :cond_2
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    instance-of v8, v7, Lakf;

    if-eqz v8, :cond_6

    invoke-interface {v7}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-interface {v0, v3, v4, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    if-nez v1, :cond_0

    move v0, v2

    :goto_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_3

    .line 1853
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 1841
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lyd;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:Lyd;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatFragment;F)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F
    .locals 0

    .prologue
    .line 223
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->au:F

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->K()V

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lxu;->a(Landroid/text/Editable;)I

    move-result v3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/model/chat/CashFeedItem;

    if-nez v0, :cond_1

    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: Confirmed CashFeedItem is null--RECONFIRMING recipient[%s] amount[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v7, v4, v9

    const/4 v7, 0x1

    invoke-static {v3}, Lcom/snapchat/android/util/CashUtils;->a(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2, v3, v9}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v4

    iget-object v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lya;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/chat/ChatFragment$8;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;ILcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Landroid/text/Editable;)V

    invoke-virtual {v7, v4, v0}, Lya;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lya$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v0, v0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput v3, v0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0, v2, v0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Lyq;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Laki$a;

    iget-object v5, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    iget-object v6, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Laki$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v4, Laki$a;->text:Ljava/lang/String;

    invoke-virtual {v4}, Laki$a;->a()Laki;

    move-result-object v4

    invoke-virtual {v4}, Lakb;->W()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lakb;->c(J)V

    invoke-virtual {v2, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    new-instance v0, Lbij;

    invoke-direct {v0}, Lbij;-><init>()V

    sget-object v5, Lbij$a;->TEXT:Lbij$a;

    invoke-virtual {v5}, Lbij$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lbij;->a(Ljava/lang/String;)Lbij;

    move-result-object v0

    invoke-virtual {v4}, Lakb;->al()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lbij;->b(Ljava/lang/String;)Lbij;

    move-result-object v5

    sget-object v0, Lbii$a;->CHAT_MESSAGE:Lbii$a;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->y()Ljava/util/List;

    move-result-object v6

    iget-object v7, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    invoke-static {v0, v3, v6, v7}, Lasz;->a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;

    move-result-object v0

    check-cast v0, Lbhf;

    invoke-virtual {v4}, Lakb;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbhf;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lbhf;->a(Lbij;)V

    invoke-virtual {v4}, Lakb;->W()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbhf;->b(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lbhf;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lakb;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lakb;->a(Lbhf;)V

    invoke-virtual {v1, v2, v4}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;)V

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v9}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    return-object v0
.end method

.method private g(Z)V
    .locals 14
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1910
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1911
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1912
    const/4 v1, -0x1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:I

    .line 1914
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1915
    if-nez v1, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    new-instance v1, Lake;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lake;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 2034
    :goto_0
    return-void

    .line 1920
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Laxf;

    iput v1, v2, Laxf;->mMessageCount:I

    .line 1921
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v2}, Lafr;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 1924
    const-string v2, "ChatFragment"

    const-string v3, "CHAT-LOG: Incrementing paginator render size (old size: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Laxf;

    iget v6, v6, Laxf;->mRenderSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1926
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Laxf;

    iget v3, v2, Laxf;->mRenderSize:I

    iget v4, v2, Laxf;->mMessageCount:I

    if-ge v3, v4, :cond_1

    iget v3, v2, Laxf;->mRenderSize:I

    add-int/lit8 v3, v3, 0x1e

    iput v3, v2, Laxf;->mRenderSize:I

    .line 1929
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Laxf;

    iget v2, v2, Laxf;->mRenderSize:I

    .line 1930
    if-ge v2, v1, :cond_1e

    .line 1932
    sub-int v3, v1, v2

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 1936
    :goto_1
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatMessagePaginator has render size of %d messages"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1938
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1939
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1940
    const/4 v1, 0x0

    .line 1941
    const/4 v0, 0x0

    move v4, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_14

    .line 1942
    if-lez v4, :cond_2

    add-int/lit8 v0, v4, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-object v2, v0

    .line 1943
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1944
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1942
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 1945
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v8

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lata;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_1d

    .line 1946
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v6}, Lata;->a(Ljava/util/Calendar;)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Lake;

    invoke-direct {v5, v0}, Lake;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    iget-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-direct {p0, v8, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_1d

    .line 1947
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v5, v1

    .line 1950
    :goto_6
    instance-of v1, v0, Lakg;

    if-nez v1, :cond_10

    instance-of v1, v2, Lakg;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_6

    .line 1951
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lakj;

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_8
    new-instance v2, Lakf;

    invoke-direct {v2, v1, v0}, Lakf;-><init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1953
    :cond_6
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1954
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->al()Ljava/lang/String;

    move-result-object v1

    .line 1955
    const-string v2, "ChatFragment"

    const-string v8, "CHAT-LOG: Populating Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v11, v11, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    :goto_9
    aput-object v1, v9, v10

    const/4 v10, 0x3

    instance-of v1, v0, Lakb;

    if-eqz v1, :cond_13

    check-cast v0, Lakb;

    invoke-virtual {v0}, Lakb;->s()J

    move-result-wide v0

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v2, v8, v9}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1941
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v1, v5

    goto/16 :goto_2

    .line 1945
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1946
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 1950
    :cond_9
    instance-of v1, v2, Lcom/snapchat/android/model/Snap;

    if-eqz v1, :cond_a

    move-object v1, v2

    check-cast v1, Lcom/snapchat/android/model/Snap;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap;->aq()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    if-eqz v2, :cond_b

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v8

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lata;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_c
    instance-of v1, v0, Lakj;

    if-eqz v1, :cond_d

    instance-of v1, v2, Lakj;

    if-eqz v1, :cond_e

    :cond_d
    instance-of v1, v2, Lakj;

    if-eqz v1, :cond_f

    instance-of v1, v0, Lakj;

    if-nez v1, :cond_f

    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_f
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 1951
    :cond_11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, ""

    goto/16 :goto_8

    .line 1955
    :cond_12
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_13
    const-wide/16 v0, -0x1

    goto :goto_a

    .line 1965
    :cond_14
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1966
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    new-instance v1, Lake;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lake;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1969
    :cond_15
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: Repopulated chat messages should have %d items"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1971
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Z

    if-nez v0, :cond_16

    .line 1972
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged message view hasn\'t been loaded yet"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1976
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0}, Lafr;->notifyDataSetChanged()V

    .line 1977
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$13;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1988
    :cond_16
    if-eqz p1, :cond_17

    .line 1989
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged and scrolling to bottom"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1991
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0}, Lafr;->notifyDataSetChanged()V

    .line 1992
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 1993
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->O()V

    .line 1994
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v0}, Lyi;->a()V

    goto/16 :goto_0

    .line 1997
    :cond_17
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1999
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    .line 2003
    :goto_b
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_1c

    .line 2004
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v2, v0}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v2

    .line 2005
    if-eqz v2, :cond_18

    instance-of v3, v2, Lakf;

    if-nez v3, :cond_18

    .line 2010
    :goto_c
    if-eqz v2, :cond_1b

    .line 2011
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    .line 2012
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2013
    if-nez v0, :cond_19

    const/4 v0, 0x0

    move v1, v0

    .line 2015
    :goto_d
    const-string v0, "ChatFragment"

    const-string v2, "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged while maintaining scroll position"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2017
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0}, Lafr;->notifyDataSetChanged()V

    .line 2019
    const/4 v0, 0x0

    .line 2020
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2021
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2022
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 2025
    goto :goto_e

    .line 2003
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2013
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    move v1, v0

    goto :goto_d

    .line 2027
    :cond_1a
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 2029
    :cond_1b
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged while maintaining scroll position but no saved item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2031
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0}, Lafr;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_1c
    move v0, v1

    goto :goto_c

    :cond_1d
    move v5, v1

    goto/16 :goto_6

    :cond_1e
    move-object v3, v0

    goto/16 :goto_1
.end method

.method private h(Z)V
    .locals 9

    .prologue
    const v8, 0x7f0900a0

    const v7, 0x7f090003

    const v6, 0x7f090002

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2670
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setShouldSubtractStatusBarHeightFromFooter(Z)V

    .line 2671
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2672
    if-eqz p1, :cond_3

    .line 2673
    instance-of v3, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v3, :cond_0

    .line 2674
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    iput-boolean v1, v0, Lma;->d:Z

    iget-object v3, v0, Lma;->f:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    iget-object v3, v0, Lma;->e:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lma;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2677
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 2685
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2689
    :goto_2
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->s:Lalx;

    if-nez p1, :cond_6

    :goto_3
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:Landroid/view/ViewStub;

    invoke-static {}, Lbgp;->a()V

    invoke-virtual {v3, v5}, Lalx;->a(Landroid/view/ViewStub;)V

    iget-object v5, v3, Lalx;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/InAppPromptFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v1, :cond_7

    iget-object v0, v3, Lalx;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    const v1, 0x7f0a025d

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 2695
    :goto_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2697
    if-nez v0, :cond_8

    .line 2728
    :cond_1
    :goto_5
    return-void

    :cond_2
    move v0, v2

    .line 2670
    goto :goto_0

    .line 2679
    :cond_3
    instance-of v3, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v3, :cond_4

    .line 2680
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    iput-boolean v2, v0, Lma;->d:Z

    .line 2683
    :cond_4
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    goto :goto_1

    .line 2685
    :cond_5
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_2

    :cond_6
    move v1, v2

    .line 2689
    goto :goto_3

    :cond_7
    iget-object v0, v3, Lalx;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    const v1, 0x7f0a025d

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 2701
    :cond_8
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2704
    if-eqz p1, :cond_a

    .line 2705
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    move v1, v2

    .line 2713
    :goto_6
    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    if-eq v4, v3, :cond_9

    .line 2714
    iget v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2715
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2717
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2719
    if-eqz v0, :cond_9

    .line 2720
    iget v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    iput v3, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2721
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2725
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 2726
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    .line 2709
    :cond_a
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    .line 2710
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_6
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    return-object v0
.end method

.method private i(Z)V
    .locals 3

    .prologue
    .line 2735
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aj:Z

    if-eq v0, p1, :cond_0

    .line 2736
    if-eqz p1, :cond_1

    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 2738
    :goto_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbel;

    invoke-direct {v2, v0}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2739
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aj:Z

    .line 2741
    :cond_0
    return-void

    .line 2736
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    goto :goto_0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/chat/ChatFragment;)F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->C:F

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/chat/ChatFragment;)F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:F

    return v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/here/HereTooltip;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Lcom/snapchat/android/ui/here/HereTooltip;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    return-void
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 918
    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    return v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lyi;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    return-object v0
.end method

.method public static n()Z
    .locals 1

    .prologue
    .line 922
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

    .line 926
    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    .line 927
    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    .line 928
    return-void
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->K()V

    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/cash/CashTooltip;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Lcom/snapchat/android/ui/cash/CashTooltip;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->L()V

    return-void
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Z

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Z

    const-string v0, ""

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->SNAP_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbef;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    invoke-direct {v2, v0, v3}, Lbef;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

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

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Z

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Z

    const-string v0, ""

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbeg;

    invoke-direct {v2, v0}, Lbeg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lafr;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2333
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ltd;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Ltd;

    return-object v0
.end method

.method static synthetic w(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lyq;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Lyq;

    return-object v0
.end method

.method static synthetic x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "ChatFragment"

    return-object v0
.end method

.method static synthetic x(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lyl;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lyl;

    return-object v0
.end method

.method static synthetic y(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Landroid/support/v4/view/GestureDetectorCompat;

    return-object v0
.end method

.method static synthetic y()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    return v0
.end method

.method static synthetic z()Ljava/util/Set;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->l:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic z(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2278
    if-nez p1, :cond_0

    move v0, v1

    .line 2284
    :goto_0
    return v0

    .line 2279
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2280
    instance-of v2, v0, Lafr$c;

    if-eqz v2, :cond_1

    .line 2281
    check-cast v0, Lafr$c;

    .line 2282
    iget-object v0, v0, Lafr$c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2284
    goto :goto_0
.end method

.method final a(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 3

    .prologue
    .line 2319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2321
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->pointToPosition(II)I

    move-result v0

    .line 2324
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v1}, Lafr;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 2325
    const/4 v0, 0x0

    .line 2327
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-static {p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 2452
    sget-object v0, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->HOLD:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    .line 2453
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 2797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Z

    .line 2798
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->au:F

    .line 2799
    return-void
.end method

.method public final a(IZZ)V
    .locals 21

    .prologue
    .line 2745
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-nez v2, :cond_1

    .line 2790
    :cond_0
    :goto_0
    return-void

    .line 2748
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 2749
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    .line 2754
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ai:Z

    .line 2756
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-static {v2}, Lbfd;->b(Landroid/widget/ListView;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ai:Z

    if-eqz v2, :cond_0

    .line 2759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v6

    .line 2760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v7

    .line 2761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2, v6}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2762
    if-eq v6, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-object v4, v2

    .line 2764
    :goto_1
    invoke-static {v3, v4}, Lyi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v2}, Lyi;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2768
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 2789
    :cond_3
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:I

    goto :goto_0

    .line 2762
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 2771
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeight()I

    move-result v5

    iput v5, v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;->a:I

    .line 2772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2773
    if-eq v6, v7, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sub-int v6, v7, v6

    invoke-virtual {v2, v6}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2776
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:I

    sub-int v2, p1, v2

    if-lez v2, :cond_c

    .line 2778
    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;

    sget-object v7, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;->UP:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/view/View;Landroid/view/View;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;)V

    .line 2785
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

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

    invoke-interface {v12}, Lcom/snapchat/android/model/chat/ChatFeedItem;->am()Z

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

    invoke-interface {v13}, Lcom/snapchat/android/model/chat/ChatFeedItem;->am()Z

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

    check-cast v2, Lafr$c;

    move v5, v3

    move-object v3, v2

    move-object v2, v4

    move v4, v6

    :goto_7
    new-instance v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;

    invoke-direct {v6, v3, v2, v5, v4}, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;-><init>(Lafr$c;Lafr$c;FF)V

    .line 2787
    iget-object v5, v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->a:Lafr$c;

    iget-object v7, v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->b:Lafr$c;

    iget v8, v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->c:F

    iget v6, v6, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->d:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    iget-object v2, v9, Lyi;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v2, v9, Lyi;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v10

    move v3, v4

    :goto_8
    if-gt v3, v10, :cond_18

    iget-object v2, v9, Lyi;->a:Landroid/widget/ListView;

    sub-int v11, v3, v4

    invoke-virtual {v2, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lafr$c;

    if-eqz v2, :cond_16

    if-eq v3, v4, :cond_8

    if-ne v3, v10, :cond_15

    :cond_8
    iget-object v2, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->am()Z

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

    invoke-direct/range {p0 .. p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->N()V

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_9

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v2, v5, v8}, Lyi;->a(Lafr$c;F)V

    :cond_9
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_a

    if-eqz v7, :cond_a

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v2, v7, v6}, Lyi;->a(Lafr$c;F)V

    :cond_a
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Lcom/snapchat/android/ui/here/HereTooltip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    goto/16 :goto_2

    .line 2773
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 2782
    :cond_c
    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;

    sget-object v7, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;->DOWN:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$a;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/view/View;Landroid/view/View;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection;)V

    goto/16 :goto_4

    .line 2785
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

    check-cast v2, Lafr$c;

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

    check-cast v2, Lafr$c;

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafr$c;

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_7

    :cond_11
    if-eqz v12, :cond_12

    invoke-interface {v12}, Lcom/snapchat/android/model/chat/ChatFeedItem;->am()Z

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

    invoke-interface {v13}, Lcom/snapchat/android/model/chat/ChatFeedItem;->am()Z

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

    check-cast v2, Lafr$c;

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

    check-cast v2, Lafr$c;

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

    check-cast v2, Lafr$c;

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafr$c;

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_7

    .line 2787
    :cond_15
    iget-object v2, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v2, v2, Lakf;

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

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v3}, Lyi;->b()Z

    move-result v3

    if-nez v3, :cond_1a

    if-eqz v2, :cond_1b

    :cond_1a
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v2, v5, v8}, Lyi;->a(Lafr$c;F)V

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

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v3}, Lyi;->b()Z

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

.method public final a(Laio;)V
    .locals 0
    .param p1    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 3228
    return-void
.end method

.method public final a(Laje;)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 3215
    return-void
.end method

.method public final a(Laje;Laio;)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 3210
    return-void
.end method

.method public final a(Laje;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 1
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 3220
    instance-of v0, p1, Lajr;

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 3221
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    iget-object v0, v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3223
    :cond_0
    return-void
.end method

.method public final a(Lakh;)V
    .locals 3
    .param p1    # Lakh;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-static {p1}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lakh;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lakh;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2658
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lyl;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lyl;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lako;Ljava/lang/String;)V

    .line 2660
    :cond_1
    return-void

    .line 2656
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 2

    .prologue
    .line 843
    const-string v0, "\u2753"

    .line 844
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 845
    :cond_0
    const-string v0, "\ud83d\udeab"

    .line 857
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    return-void

    .line 847
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 849
    :pswitch_0
    const-string v0, "\ud83d\udcf6"

    goto :goto_0

    .line 852
    :pswitch_1
    const-string v0, "\u2705"

    goto :goto_0

    .line 847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/view/View;IZ)V
    .locals 0

    .prologue
    .line 2302
    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 2298
    return-void
.end method

.method public final a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1472
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1473
    if-nez v0, :cond_0

    .line 1495
    :goto_0
    return-void

    .line 1475
    :cond_0
    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment$22;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1477
    :pswitch_0
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1478
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1479
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1480
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1484
    :pswitch_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1485
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1486
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1487
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1488
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1491
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1492
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 6
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 482
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment updateFriendIfNecessary %b"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_0

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    :cond_2
    const-string v1, "ChatFragment"

    const-string v2, "CHAT-LOG: ChatFragment updateFriendIfNecessary no displayed friend or username or displayed friend is different, setting to %s"

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Latm;->b(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 495
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;FFF)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2223
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 2239
    :cond_0
    :goto_0
    return v0

    .line 2225
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Landroid/view/View;)I

    move-result v1

    .line 2227
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

    .line 2233
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

    .line 2234
    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(F)V

    goto :goto_0

    .line 2238
    :cond_3
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(F)V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2292
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2294
    :goto_0
    return v0

    .line 2293
    :cond_0
    const/high16 v1, 0x424c0000    # 51.0f

    invoke-static {v1, v0}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    .line 2294
    float-to-int v0, v0

    goto :goto_0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    if-eqz v0, :cond_0

    .line 1677
    if-eqz p1, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    invoke-interface {v0}, Lafv;->b()V

    .line 1685
    :cond_0
    :goto_0
    return-void

    .line 1680
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    invoke-interface {v0}, Lafv;->a()V

    goto :goto_0
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2151
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment onLocked"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2152
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr$c;

    .line 2153
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    invoke-interface {v1}, Lafv;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2155
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Ljava/util/Map;

    iget-object v2, v0, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafv;

    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    .line 2158
    :cond_1
    iget-object v1, v0, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v1, v1, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v1, :cond_2

    .line 2160
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->N()V

    .line 2161
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lyi;->a(Lafr$c;F)V

    .line 2164
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    if-eqz v0, :cond_4

    .line 2165
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    instance-of v0, v0, Lafu;

    if-eqz v0, :cond_3

    .line 2166
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    check-cast v0, Lafu;

    invoke-virtual {v0, p0}, Lafu;->a(Lafu$a;)V

    .line 2168
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    invoke-interface {v0}, Lafv;->a()V

    .line 2170
    :cond_4
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1693
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setVisibility(I)V

    .line 1695
    return-void

    :cond_0
    move v0, v2

    .line 1693
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1694
    goto :goto_1
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 2646
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    .line 2647
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 18
    .param p1    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 2971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-eqz v2, :cond_d

    .line 2972
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lafr$c;

    .line 2973
    const/4 v4, 0x0

    .line 2974
    const/4 v5, 0x0

    .line 2975
    const-wide/16 v6, 0x0

    .line 2976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2977
    iget-object v3, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v3, Lakb;

    if-eqz v3, :cond_3

    .line 2978
    iget-object v3, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v3, Lakb;

    .line 2979
    iget-object v10, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v11, v11, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2980
    invoke-virtual {v3}, Lakb;->s()J

    move-result-wide v10

    .line 2981
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v12, v12, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    cmp-long v12, v10, v12

    if-lez v12, :cond_2

    .line 2982
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v5, v10, v11}, Lyj;->c(Lcom/snapchat/android/model/chat/ChatConversation;J)Z

    move-result v5

    .line 2984
    invoke-virtual {v3}, Lakb;->A()I

    move-result v3

    int-to-long v6, v3

    move v3, v4

    move/from16 v16, v5

    move-wide v4, v6

    move/from16 v6, v16

    .line 3014
    :goto_0
    if-eqz v6, :cond_0

    .line 3015
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_9

    .line 3016
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 3018
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ae:Landroid/os/Handler;

    new-instance v8, Lcom/snapchat/android/fragments/chat/ChatFragment$20;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment$20;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v7, v8, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3031
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lyj;

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

    invoke-static {v5, v8, v6}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v7

    iget-object v4, v4, Lyj;->b:Lyq;

    sget-object v8, Lbit$a;->DISPLAY:Lbit$a;

    invoke-virtual {v4, v5, v6, v7, v8}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/Map;Ljava/util/Map;Lbit$a;)V

    .line 3034
    :cond_0
    if-eqz v3, :cond_1

    .line 3035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lyj;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    sget-object v5, Lbit$a;->RELEASE:Lbit$a;

    invoke-virtual {v3, v4, v5}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbit$a;)V

    .line 3038
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Ljava/util/Map;

    iget-object v4, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafv;

    .line 3039
    if-nez v3, :cond_b

    .line 3040
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aE:Lafw;

    iget-object v3, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v4, v3, Lakh;

    if-eqz v4, :cond_10

    check-cast v3, Lakh;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lafr$c;

    invoke-virtual {v3}, Lakh;->V()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v5, v5, Lafw;->a:Lafw$a;

    iget-object v3, v5, Lafw$a;->a:Ladl;

    if-nez v3, :cond_a

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Discover deep link controller not initialized!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2985
    :cond_2
    invoke-virtual {v3, v8, v9}, Lakb;->g(J)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2986
    const/4 v3, 0x1

    :goto_2
    move-wide/from16 v16, v6

    move v6, v5

    move-wide/from16 v4, v16

    .line 2989
    goto/16 :goto_0

    :cond_3
    iget-object v3, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v3, Laji;

    if-eqz v3, :cond_5

    .line 2990
    iget-object v3, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v3, Laji;

    .line 2991
    invoke-virtual {v3}, Laji;->i()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2992
    invoke-virtual {v3}, Laji;->W()J

    move-result-wide v8

    .line 2993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v10, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    cmp-long v3, v8, v10

    if-lez v3, :cond_4

    .line 2994
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v3, v8, v9}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)Z

    move-result v4

    :cond_4
    move v3, v4

    move/from16 v16, v5

    move-wide v4, v6

    move/from16 v6, v16

    .line 2998
    goto/16 :goto_0

    :cond_5
    iget-object v3, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v3, Laje;

    if-eqz v3, :cond_7

    .line 2999
    iget-object v3, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v3, Laje;

    .line 3000
    invoke-virtual {v3}, Laje;->z()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3001
    invoke-virtual {v3}, Laje;->W()J

    move-result-wide v8

    .line 3002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v10, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v3, v8, v10

    if-lez v3, :cond_6

    .line 3003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v3, v8, v9}, Lyj;->b(Lcom/snapchat/android/model/chat/ChatConversation;J)Z

    move-result v4

    :cond_6
    move v3, v4

    move/from16 v16, v5

    move-wide v4, v6

    move/from16 v6, v16

    .line 3007
    goto/16 :goto_0

    :cond_7
    iget-object v3, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v3, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_8

    .line 3008
    iget-object v3, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v3, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 3009
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v8

    if-nez v8, :cond_8

    .line 3010
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lyj;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v8, v9, v3}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    :cond_8
    move v3, v4

    move/from16 v16, v5

    move-wide v4, v6

    move/from16 v6, v16

    goto/16 :goto_0

    .line 3029
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v3}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v3

    goto/16 :goto_1

    .line 3040
    :cond_a
    new-instance v3, Laft;

    iget-object v5, v5, Lafw$a;->a:Ladl;

    invoke-direct {v3, v4, v5}, Laft;-><init>(Lafr$c;Ladl;)V

    .line 3041
    :goto_3
    if-eqz v3, :cond_b

    .line 3042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Ljava/util/Map;

    iget-object v2, v2, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-static {v2}, Lbfd;->b(Landroid/widget/ListView;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3054
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3055
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3056
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3057
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3058
    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_c
    const/4 v2, 0x1

    .line 3059
    :goto_4
    if-eqz v2, :cond_d

    .line 3060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->b()Z

    .line 3064
    :cond_d
    return-void

    .line 3040
    :cond_e
    iget-object v5, v5, Lafw;->a:Lafw$a;

    iget-object v3, v5, Lafw$a;->a:Ladl;

    if-nez v3, :cond_f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Discover deep link controller not initialized!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance v3, Lafu;

    iget-object v5, v5, Lafw$a;->a:Ladl;

    invoke-direct {v3, v4, v5}, Lafu;-><init>(Lafr$c;Ladl;)V

    goto :goto_3

    :cond_10
    const/4 v3, 0x0

    goto :goto_3

    .line 3058
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
    .line 1702
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1703
    return-void

    .line 1702
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final e()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 502
    invoke-static {}, Lnf;->d()V

    .line 503
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Z:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbel;

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v4}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->a(Lyu;)V

    .line 508
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment onVisible"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lale;

    invoke-virtual {v0}, Lale;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/net/NetworkInfo;)V

    .line 511
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lale;

    invoke-virtual {v0, p0}, Lale;->a(Lald;)V

    .line 514
    :cond_0
    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Z)V

    .line 515
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 517
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 518
    invoke-direct {p0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    .line 519
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aj:Z

    .line 520
    invoke-direct {p0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Z)V

    .line 522
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v4, Lbal;

    invoke-direct {v4, v2}, Lbal;-><init>(Z)V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 523
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 524
    instance-of v0, v1, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_1

    .line 525
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Lnj;

    invoke-virtual {v0}, Lnj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Lnj;

    iget-object v4, v0, Lnj;->mRecentStoryReplyEvent:Lbcu;

    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_2
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v4, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v5, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->HIGH:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v4, v5}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    iget-object v0, v0, Lafr;->c:Lagb;

    iput-boolean v2, v0, Lagb;->a:Z

    .line 540
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_5

    .line 594
    :cond_3
    :goto_1
    return-void

    .line 527
    :cond_4
    iget-object v4, v0, Lnj;->mRecentStoryReplyEvent:Lbcu;

    iget-object v4, v4, Lbcu;->friendUsername:Ljava/lang/String;

    iget-object v0, v0, Lnj;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    invoke-static {v4, v0}, Latm;->b(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    goto :goto_0

    .line 546
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    const-string v0, "ChatFragment"

    const-string v4, "CHAT-LOG: ENTERED CHAT with %s"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v6, v6, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    .line 549
    iget-wide v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:J

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j()V

    .line 550
    :cond_6
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()V

    .line 551
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Z)V

    .line 552
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()V

    .line 553
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setLockingEnabled(Z)V

    .line 555
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Z

    .line 556
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->M()V

    .line 560
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v0}, Lyi;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 561
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lyj;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v4, v3}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 566
    :cond_7
    invoke-direct {p0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    .line 567
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v5, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/database/table/NotificationTable;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->m:Ljava/lang/String;

    .line 571
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->s()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v0, v5, :cond_a

    move v0, v2

    :goto_2
    if-nez v0, :cond_8

    const-string v0, "ChatFragment"

    const-string v5, "CASH-LOG: Refreshing CASH ELIGIBILITY for %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v0, v5, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lqm;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lqm;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;

    new-instance v3, Lcom/snapchat/android/fragments/chat/ChatFragment$1;

    invoke-direct {v3, p0, v4}, Lcom/snapchat/android/fragments/chat/ChatFragment$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v2, v3}, Lqm;->a(Ljava/lang/Class;Lts$b;)V

    invoke-virtual {v0}, Lqm;->f()V

    .line 572
    :cond_8
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->J()V

    .line 575
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->s:Lalx;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lalx;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lalx;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_9

    const-string v2, "chatOrCashFromServerNotification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 579
    const-string v2, "chatOrCashFromServerNotification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 581
    instance-of v0, v1, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 582
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    .line 583
    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->CHAT:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)J

    move-result-wide v0

    .line 586
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    .line 587
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    invoke-static {v2, v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZJ)V

    .line 593
    :cond_9
    invoke-static {}, Lnf;->e()V

    goto/16 :goto_1

    :cond_a
    move v0, v3

    .line 571
    goto :goto_2
.end method

.method public final e(Z)V
    .locals 1

    .prologue
    .line 2339
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    if-eqz v0, :cond_1

    .line 2341
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    invoke-interface {v0}, Lafv;->b()V

    .line 2343
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    if-eqz v0, :cond_2

    .line 2344
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    .line 2347
    :cond_2
    return-void
.end method

.method protected final f()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 644
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 646
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->b(Lyu;)V

    .line 648
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->a()V

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/CashSwiperView;->setEnabled(Z)V

    iget-object v1, v0, Lcom/snapchat/android/ui/CashSwiperView;->b:Lcom/snapchat/android/ui/CashSwiperView$b;

    invoke-interface {v1}, Lcom/snapchat/android/ui/CashSwiperView$b;->v()V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->c()V

    .line 651
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 652
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 653
    const-string v1, "RESUMING_FROM_SWIPE_MESSAGE"

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c028c

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v5, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v6

    invoke-static {v5, v6}, Latm;->e(Ljava/lang/String;Lajv;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    .line 664
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Z

    if-eqz v0, :cond_2

    .line 665
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbal;

    invoke-direct {v1, v7}, Lbal;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    if-eqz v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    invoke-interface {v0}, Lafv;->c()V

    .line 670
    iput-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Ljava/util/Map;

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

    check-cast v0, Lafv;

    .line 674
    invoke-interface {v0}, Lafv;->c()V

    goto :goto_0

    .line 676
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 678
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 679
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->L2S_SWIPE_OUT:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/StreamView;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 682
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_7

    .line 683
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Z)V

    .line 684
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()V

    .line 685
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    .line 688
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 689
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {v0}, Lyi;->a()V

    .line 690
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    if-eqz v0, :cond_c

    .line 693
    :cond_6
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: LEFT CHAT with %s due to app pause when ChatFragment visible or entering in-chat camera or quick snap"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lyj;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1, v9}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 712
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    iget-object v0, v0, Lafr;->c:Lagb;

    iput-boolean v7, v0, Lagb;->a:Z

    .line 713
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcd;

    const-string v2, "ChatFragment"

    invoke-direct {v1, v2}, Lbcd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 715
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->A()V

    .line 716
    invoke-static {}, Lant;->a()Lant;

    move-result-object v0

    invoke-virtual {v0}, Lant;->b()V

    .line 717
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setLockingEnabled(Z)V

    .line 718
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->a()V

    .line 719
    iput-boolean v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ai:Z

    .line 721
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    if-nez v0, :cond_8

    .line 722
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->D()V

    .line 727
    :cond_8
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    if-nez v0, :cond_a

    .line 729
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_9

    .line 732
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Lakc;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lakc;->b(Ljava/lang/String;Z)V

    .line 735
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 738
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbam;

    invoke-direct {v1, v7}, Lbam;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 739
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setIsActive(Z)V

    iput-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    iput-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aC:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-boolean v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Z

    .line 742
    :cond_a
    invoke-static {v7}, Lapb;->a(Z)V

    .line 743
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Laxf;

    invoke-virtual {v0}, Laxf;->a()V

    .line 744
    sput-object v8, Lcom/snapchat/android/fragments/chat/ChatFragment;->m:Ljava/lang/String;

    .line 746
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->t:Ladl;

    iget-object v1, v0, Ladl;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Ladl;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Ladl;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Ladl;->c:Ladm;

    iget-object v3, v2, Ladm;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v2, Ladm;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    iget-object v2, v2, Ladm;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v0, Ladl;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Ladl;->n:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 747
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 748
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lale;

    invoke-virtual {v0, p0}, Lale;->b(Lald;)V

    .line 750
    :cond_b
    return-void

    .line 697
    :cond_c
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: SWIPED OUT OF CHAT with %s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    invoke-static {}, Laut;->b()V

    .line 702
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lyj;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    sget-object v2, Lbit$a;->DELETE:Lbit$a;

    invoke-virtual {v0, v1, v2}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbit$a;)V

    .line 704
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 705
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-boolean v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    .line 706
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->o()V

    goto/16 :goto_1

    .line 746
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

.method public final f_()V
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Z

    .line 639
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f_()V

    .line 640
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Z

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->b()V

    .line 827
    const/4 v0, 0x1

    .line 829
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()Lala;
    .locals 4

    .prologue
    .line 432
    new-instance v0, Lala;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CHAT"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lala;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 2650
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    .line 2651
    return-void
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 3183
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$21;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$21;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    return-object v0
.end method

.method public onCancelInChatSnapEvent(Lbar;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Z

    .line 1563
    iget-boolean v0, p1, Lbar;->mShouldDisplayHereTooltip:Z

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Lcom/snapchat/android/ui/here/HereTooltip;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/ui/here/HereTooltip;->setCancelInChatSnapTime(J)V

    .line 1566
    :cond_0
    return-void
.end method

.method public onCancelQuickSnapEvent(Lbas;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ay:Z

    .line 1571
    return-void
.end method

.method public onCashRainEvent(Lbau;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2574
    iget-object v0, p1, Lbau;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2580
    :goto_0
    return-void

    .line 2578
    :cond_0
    iget-wide v0, p1, Lbau;->mCount:J

    long-to-int v0, v0

    iget-wide v2, p1, Lbau;->mCreatedAt:J

    invoke-direct {p0, v0, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(IJ)V

    .line 2579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aH:Z

    goto :goto_0
.end method

.method public onChatLinkClickedEvent(Lbax;)V
    .locals 7
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2351
    iget-object v1, p1, Lbax;->snapchatUrlSpan:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    .line 2352
    iget-object v2, v1, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->mMessage:Lako;

    .line 2354
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2355
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

    invoke-interface {v2}, Lako;->g()Z

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

    .line 2362
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment$14;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/util/chat/SnapchatUrlSpan;Lako;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2386
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2387
    return-void

    .line 2355
    :cond_0
    const v0, 0x7f0c0087

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0088

    goto :goto_1
.end method

.method public onChatSwipeStartedEvent(Lbay;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1719
    iget-object v0, p1, Lbay;->friend:Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1721
    :cond_0
    iget-object v0, p1, Lbay;->friend:Lcom/snapchat/android/model/Friend;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 1722
    return-void
.end method

.method public onChatUpdatedEvent(Lbaz;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_1

    .line 2219
    :cond_0
    :goto_0
    return-void

    .line 2205
    :cond_1
    iget-object v0, p1, Lbaz;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->M()V

    .line 2208
    iget-object v0, p1, Lbaz;->mMessageId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2209
    iget-object v0, p1, Lbaz;->mMessageId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Ljava/lang/String;)V

    .line 2211
    iget-boolean v0, p1, Lbaz;->mScrollToBottom:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-nez v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 2213
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->O()V

    goto :goto_0

    .line 2216
    :cond_2
    iget-boolean v0, p1, Lbaz;->mScrollToBottom:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClearChatTextEvent(Lbba;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1711
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 942
    invoke-static {}, Lnf;->d()V

    .line 943
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Z:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 944
    const v0, 0x7f040028

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    .line 946
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 947
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:I

    .line 948
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    .line 949
    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:I

    .line 950
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:I

    .line 951
    const v0, 0x7f0a011a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/HereTooltip;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aA:Lcom/snapchat/android/ui/here/HereTooltip;

    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CashTooltip;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aB:Lcom/snapchat/android/ui/cash/CashTooltip;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ae:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Landroid/os/Handler;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a011c

    const v3, 0x7f0a011f

    invoke-direct {v0, v1, v2, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lbgr;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a011d

    const v3, 0x7f0a0120

    new-instance v4, Lcom/snapchat/android/fragments/chat/ChatFragment$12;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$12;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$a;

    invoke-direct {v2, p0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment$a;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;B)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v0, Lyd;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lyd;-><init>(Landroid/content/Context;Lyd$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:Lyd;

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

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0115

    const v3, 0x7f0a0121

    invoke-direct {v0, v1, v2, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Landroid/view/View;

    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->w:Landroid/view/View;

    const v0, 0x7f0a0116

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    const v0, 0x7f0a0119

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->z:Landroid/widget/TextView;

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->A:Landroid/widget/TextView;

    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CursorCallbackEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    iput v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->C:F

    iput v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:F

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const v1, 0xc001

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setInputType(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setMaxLines(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$25;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$25;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$26;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$26;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$27;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$27;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

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

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$29;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$29;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a0118

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ChatCameraButton;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$2;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$3;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Laxf;

    invoke-direct {v0}, Laxf;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Laxf;

    const v0, 0x7f0a010f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setInterface(Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setTranscriptMode(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$4;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setLockingEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setScrollViewCallbacks(Lbr;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setMinimumFooterHeight(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setShouldSubtractStatusBarHeightFromFooter(Z)V

    new-instance v0, Lyi;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-direct {v0, v1}, Lyi;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04002c

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Landroid/view/View;

    invoke-virtual {v1, v2, v7, v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v1, 0x7f04002e

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$5;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    const v1, 0x7f0a0123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    const v1, 0x7f0a0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v1, v7, v5}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v0, Lafr;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0, p0}, Lafr;-><init>(Landroid/content/Context;Ljava/util/List;Lafr$a;Laqi;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aG:Ljava/util/Map;

    iput-object v1, v0, Lafr;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$6;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$7;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$7;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

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

    new-instance v0, Laql;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Lbaa;

    const-string v3, "Chat"

    invoke-direct {v0, v2, v3}, Laql;-><init>(Lbaa;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laqn;

    invoke-direct {v0, v1}, Laqn;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:Laqn;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:Laqn;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:Landroid/view/ViewStub;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a011e

    const v3, 0x7f0a01e8

    invoke-direct {v0, v1, v2, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:Lbgr;

    .line 952
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lari;

    invoke-interface {v0}, Lari;->l()Lcom/snapchat/android/ui/SnapView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/SnapView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    if-eqz p3, :cond_2

    .line 955
    const-string v0, "friend_username"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 956
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 957
    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    .line 960
    :cond_1
    const-string v0, "message_drafts"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 962
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 964
    const-string v0, "cashtag_positions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 966
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 969
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 970
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 971
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 972
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 973
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Lyi;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Lyi;->b:I

    .line 975
    iput-boolean v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aD:Z

    .line 976
    invoke-virtual {p0, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Z)V

    .line 978
    invoke-static {}, Lnf;->e()V

    .line 979
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 952
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
    .line 984
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 985
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/ChatCameraButton;

    iget-object v1, v0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 986
    :cond_0
    return-void
.end method

.method public onEndpointsRefreshedEvent(Lbfr$a;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2392
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C()V

    .line 2393
    return-void
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0}, Lafr;->notifyDataSetChanged()V

    .line 2258
    return-void
.end method

.method public onFeedTimerChangeEvent(Lbbl;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2244
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    iget-object v1, p1, Lbbl;->mFriendUsername:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2248
    :goto_0
    return-void

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0}, Lafr;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onLoadConversationPageTaskEvent(Lbce;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p1, Lbce;->mTaskStatus:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    .line 1469
    return-void
.end method

.method public onLoadSnapMediaEvent(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0}, Lafr;->notifyDataSetChanged()V

    .line 2263
    return-void
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 754
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 755
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    .line 756
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Z

    .line 757
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

    .line 758
    :goto_0
    if-eqz v0, :cond_6

    .line 759
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goToFragmentNum"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setIntent(Landroid/content/Intent;)V

    .line 764
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C()V

    .line 766
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->clearFocus()V

    .line 767
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->A()V

    .line 768
    invoke-static {}, Lant;->a()Lant;

    move-result-object v0

    invoke-virtual {v0}, Lant;->b()V

    .line 769
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->D()V

    .line 770
    return-void

    .line 757
    :cond_2
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lajx;->l()Ljava/lang/String;

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

    instance-of v1, v0, Lako;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lako;

    invoke-interface {v1}, Lako;->g()Z

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

    .line 761
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    iget-object v0, v0, Lafr;->c:Lagb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lagb;->a(J)V

    const-string v2, "ReleaseWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getLatestSeenItemTimestamp - latestItemTimestamp "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lagb;->c:Lagb$a;

    iget-wide v6, v5, Lagb$a;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastNotifiedTimestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lagb;->c:Lagb$a;

    iget-wide v6, v5, Lagb$a;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lagb;->c:Lagb$a;

    iget-wide v4, v0, Lagb$a;->a:J

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->o:Laol;

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v6, v6, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

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

    goto/16 :goto_3
.end method

.method public onPresenceUpdatedEvent(Lbcp;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1575
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbcp;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()V

    .line 1577
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    iget-boolean v1, p1, Lbcp;->videoReceived:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/StreamView;->b(Z)V

    .line 1581
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 447
    invoke-static {}, Lnf;->d()V

    .line 448
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 449
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment onResume"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:Z

    .line 453
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0}, Lafr;->notifyDataSetChanged()V

    .line 456
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->k:Z

    if-eqz v0, :cond_0

    .line 457
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->k:Z

    .line 458
    const-string v0, "ChatFragment"

    const-string v1, "Make this fragment visible because it was selected as the current item of the view pager before it was created"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Z)V

    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 463
    :cond_0
    invoke-static {}, Lnf;->e()V

    .line 466
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    .line 467
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()V

    .line 469
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 437
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 438
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "friend_username"

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_0
    const-string v0, "message_drafts"

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 442
    const-string v0, "cashtag_positions"

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ax:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 443
    return-void
.end method

.method public onSecureChatSessionConnectedEvent(Lbde;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 837
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->mIsVisible:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Z)V

    .line 840
    :cond_0
    return-void
.end method

.method public onSnapSelectedForReplayEvent(Lbdp;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Lafr;

    invoke-virtual {v0}, Lafr;->notifyDataSetChanged()V

    .line 2253
    return-void
.end method

.method public onSnapViewingEvent(Lbdm;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1548
    iget-boolean v0, p1, Lbdm;->mBeingViewed:Z

    if-eqz v0, :cond_1

    .line 1549
    invoke-static {}, Lant;->a()Lant;

    move-result-object v0

    invoke-virtual {v0}, Lant;->b()V

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 1554
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()V

    .line 1555
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    goto :goto_0
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1642
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    .line 1643
    return-void
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 2138
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:I

    return v0
.end method

.method public final r()V
    .locals 3

    .prologue
    .line 2174
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment onUnlocked"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2175
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aF:Lafv;

    invoke-interface {v0}, Lafv;->b()V

    .line 2178
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 10

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    if-eqz v0, :cond_0

    .line 2548
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Lyq;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getFirstSwipeMillis()J

    move-result-wide v6

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lbii$a;->CASH_RAIN:Lbii$a;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->y()Ljava/util/List;

    move-result-object v8

    iget-object v9, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    invoke-static {v3, v0, v8, v9}, Lasz;->a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;

    move-result-object v0

    check-cast v0, Lbha;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbha;->b(Ljava/lang/Long;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbha;->a(Ljava/lang/Long;)V

    invoke-virtual {v1, v2, v0}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    .line 2551
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 1

    .prologue
    .line 2555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Z

    .line 2556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    .line 2559
    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->az:Z

    if-nez v0, :cond_0

    .line 2560
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->J()V

    .line 2562
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v0

    if-nez v0, :cond_1

    .line 2563
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->L()V

    .line 2565
    :cond_1
    return-void
.end method

.method public final v_()Z
    .locals 1

    .prologue
    .line 2457
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:Z

    return v0
.end method

.method public final w()V
    .locals 3

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_1

    .line 2570
    :cond_0
    :goto_0
    return-void

    .line 2569
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    sget-object v1, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->DOLLARS:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->K()V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

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
