.class public final Laga;
.super Laqb;
.source "SourceFile"

# interfaces
.implements Lbge$a;
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laga$3;,
        Laga$b;,
        Laga$a;,
        Laga$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqb",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;",
        "Lbge$a",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;"
    }
.end annotation


# instance fields
.field private final A:Laga$c;

.field private final B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

.field private final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/FriendAction;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/FriendAction;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Lcom/snapchat/android/util/FriendSectionizer$FriendSection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/snapchat/android/util/FriendSectionizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/FriendSectionizer",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/snapchat/android/model/Friend;

.field public d:Lcom/snapchat/android/model/Friend;

.field public e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lage;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field l:I

.field m:I

.field protected n:Lban;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final o:Landroid/os/Handler;

.field private final p:I

.field private final q:Landroid/content/Context;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroid/view/LayoutInflater;

.field private final t:Laga$a;

.field private u:Lagc;

.field private final v:Landroid/content/res/Resources;

.field private final w:I

.field private final x:I

.field private final y:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Lbgy;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Laga$a;Lage;Landroid/content/res/Resources;IILjavax/inject/Provider;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lbgy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/util/FriendSectionizer",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Laga$a;",
            "Lage;",
            "Landroid/content/res/Resources;",
            "II",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lcom/snapchat/android/fragments/addfriends/FriendListProperty;",
            "Lbgy;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 228
    const v0, 0x7f040003

    invoke-direct {p0, p1, v0, p2}, Laqb;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 71
    iput-object v2, p0, Laga;->c:Lcom/snapchat/android/model/Friend;

    .line 72
    iput-object v2, p0, Laga;->d:Lcom/snapchat/android/model/Friend;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laga;->e:Ljava/util/HashSet;

    .line 158
    new-instance v0, Laga$c;

    invoke-direct {v0}, Laga$c;-><init>()V

    iput-object v0, p0, Laga;->A:Laga$c;

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laga;->B:Ljava/util/Set;

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laga;->C:Ljava/util/Set;

    .line 186
    iput-boolean v1, p0, Laga;->k:Z

    .line 190
    invoke-static {}, Laga;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laga;->E:Ljava/util/Map;

    .line 192
    invoke-static {}, Laga;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laga;->F:Ljava/util/Map;

    .line 196
    iput v1, p0, Laga;->l:I

    .line 198
    iput v1, p0, Laga;->m:I

    .line 229
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Laga;)V

    .line 230
    iput-object p1, p0, Laga;->q:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Laga;->r:Ljava/util/List;

    .line 232
    iput-object p2, p0, Laga;->a:Ljava/util/List;

    .line 233
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Laga;->s:Landroid/view/LayoutInflater;

    .line 234
    iput-object p3, p0, Laga;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 235
    iput-object p4, p0, Laga;->t:Laga$a;

    .line 237
    iget-object v0, p10, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->b:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->getBackgroundResId()I

    move-result v0

    iput v0, p0, Laga;->p:I

    .line 239
    iput-object p6, p0, Laga;->v:Landroid/content/res/Resources;

    .line 240
    iput p7, p0, Laga;->w:I

    .line 241
    iput p8, p0, Laga;->x:I

    .line 243
    new-instance v0, Laga$1;

    invoke-direct {v0, p0}, Laga$1;-><init>(Laga;)V

    iput-object v0, p0, Laga;->o:Landroid/os/Handler;

    .line 265
    iput-object p5, p0, Laga;->f:Lage;

    .line 266
    iput-object p9, p0, Laga;->y:Ljavax/inject/Provider;

    .line 267
    iput-object p10, p0, Laga;->D:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    .line 268
    iput-object p11, p0, Laga;->z:Lbgy;

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Laga$a;Lage;Ljavax/inject/Provider;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lbgy;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/util/FriendSectionizer",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Laga$a;",
            "Lage;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lcom/snapchat/android/fragments/addfriends/FriendListProperty;",
            "Lbgy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Laga;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Laga$a;Lage;Landroid/content/res/Resources;IILjavax/inject/Provider;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lbgy;)V

    .line 220
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Laga;->b:Lcom/snapchat/android/util/FriendSectionizer;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/FriendSectionizer;->a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    .line 384
    iput-object v0, p1, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 385
    iget-object v1, p0, Laga;->q:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/snapchat/android/util/FriendSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Laga;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Laga;->B:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Laga;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Laga;->C:Ljava/util/Set;

    return-object v0
.end method

.method private static f()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/FriendAction;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 272
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 273
    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lcom/snapchat/android/model/FriendAction;->IGNORE:Lcom/snapchat/android/model/FriendAction;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v1, Lcom/snapchat/android/model/FriendAction;->INVITE:Lcom/snapchat/android/model/FriendAction;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/FriendAction;Z)I
    .locals 2

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Laga;->F:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 313
    if-eqz p2, :cond_1

    iget-object v1, p0, Laga;->F:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 314
    iget-object v0, p0, Laga;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    if-nez p2, :cond_0

    iget-object v1, p0, Laga;->E:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v0, p0, Laga;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Z)I
    .locals 1

    .prologue
    .line 332
    if-eqz p1, :cond_0

    iget v0, p0, Laga;->m:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Laga;->l:I

    goto :goto_0
.end method

.method public final a()Landroid/support/v4/util/SimpleArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Lcom/snapchat/android/util/FriendSectionizer$FriendSection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Laga;->G:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_1

    .line 345
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Laga;->G:Landroid/support/v4/util/SimpleArrayMap;

    .line 346
    iget-object v0, p0, Laga;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Laga;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 348
    iget-object v2, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 349
    iget-object v0, p0, Laga;->G:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 350
    :goto_1
    iget-object v3, p0, Laga;->G:Landroid/support/v4/util/SimpleArrayMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Laga;->G:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 354
    :cond_1
    iget-object v0, p0, Laga;->G:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p0}, Laga;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 516
    invoke-virtual {p0, p1}, Laga;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 517
    if-eqz v0, :cond_0

    .line 518
    iget-object v1, p0, Laga;->A:Laga$c;

    invoke-virtual {v1, v0}, Laga$c;->b(Lcom/snapchat/android/model/Friend;)V

    .line 519
    invoke-virtual {p0}, Laga;->notifyDataSetChanged()V

    .line 522
    :cond_0
    return-void
.end method

.method public final a(Lagf;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction$BlockReason;Lqg$a;Lil;)V
    .locals 13

    .prologue
    .line 528
    new-instance v1, Laga$2;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p2, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    move-object v2, p0

    move-object/from16 v3, p3

    move-object v4, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p3

    move-object v11, p2

    move-object v12, p1

    invoke-direct/range {v1 .. v12}, Laga$2;-><init>(Laga;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/model/FriendAction$BlockReason;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Lagf;)V

    invoke-virtual {p0}, Laga;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    iput-object v2, v1, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iput-object v2, v1, Lqg;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    move-object/from16 v0, p5

    iput-object v0, v1, Lqg;->mFriendActionCompleteCallback:Lqg$a;

    invoke-virtual {v1}, Lqg;->a()Lqg;

    move-result-object v1

    move-object/from16 v0, p6

    iput-object v0, v1, Lqg;->mActionMethod:Lil;

    invoke-virtual {v1}, Lqg;->execute()V

    .line 598
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 606
    iget-object v0, p0, Laga;->A:Laga$c;

    invoke-virtual {v0, p1}, Laga$c;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Laga;->A:Laga$c;

    invoke-virtual {v0, p1}, Laga$c;->b(Lcom/snapchat/android/model/Friend;)V

    .line 609
    :cond_0
    invoke-virtual {p0}, Laga;->notifyDataSetChanged()V

    .line 610
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    iget-object v0, p0, Laga;->r:Ljava/util/List;

    iput-object v0, p0, Laga;->a:Ljava/util/List;

    .line 475
    :goto_0
    invoke-virtual {p0}, Laga;->notifyDataSetChanged()V

    .line 476
    return-void

    .line 473
    :cond_0
    iput-object p1, p0, Laga;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public final b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Laga;->t:Laga$a;

    invoke-interface {v0}, Laga$a;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/snapchat/android/model/FriendAction;Z)V
    .locals 2

    .prologue
    .line 323
    if-eqz p2, :cond_0

    iget-object v0, p0, Laga;->F:Ljava/util/Map;

    move-object v1, v0

    .line 324
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :goto_1
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Laga;->E:Ljava/util/Map;

    move-object v1, v0

    goto :goto_0

    .line 327
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Laga;->t:Laga$a;

    invoke-interface {v0}, Laga$a;->d()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Laga;->u:Lagc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laga;->u:Lagc;

    iget-object v0, v0, Lagc;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Laga;->t:Laga$a;

    invoke-interface {v0}, Laga$a;->q_()Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Laga;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 447
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laga;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Laga;->u:Lagc;

    if-nez v0, :cond_0

    new-instance v0, Lagc;

    iget-object v1, p0, Laga;->r:Ljava/util/List;

    iget-object v2, p0, Laga;->n:Lban;

    invoke-direct {v0, v1, v2, p0}, Lagc;-><init>(Ljava/util/List;Lban;Lbge$a;)V

    iput-object v0, p0, Laga;->u:Lagc;

    .line 461
    :cond_0
    iget-object v0, p0, Laga;->u:Lagc;

    iget-boolean v1, p0, Laga;->g:Z

    iput-boolean v1, v0, Lagc;->b:Z

    .line 462
    iget-object v0, p0, Laga;->u:Lagc;

    iget-boolean v1, p0, Laga;->h:Z

    iput-boolean v1, v0, Lagc;->c:Z

    .line 463
    iget-object v0, p0, Laga;->u:Lagc;

    iget-boolean v1, p0, Laga;->i:Z

    iput-boolean v1, v0, Lagc;->e:Z

    .line 464
    iget-object v0, p0, Laga;->u:Lagc;

    iget-boolean v1, p0, Laga;->j:Z

    iput-boolean v1, v0, Lagc;->d:Z

    .line 465
    iget-object v0, p0, Laga;->u:Lagc;

    return-object v0
.end method

.method public final getHeaderId(I)J
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Laga;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 396
    instance-of v1, v0, Lagl;

    if-eqz v1, :cond_0

    .line 397
    const-string v0, "shared story"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 399
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, v0, p1}, Laga;->a(Lcom/snapchat/android/model/Friend;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    if-nez p2, :cond_1

    .line 361
    new-instance v1, Laga$b;

    invoke-direct {v1, p0}, Laga$b;-><init>(Laga;)V

    .line 362
    iget-object v0, p0, Laga;->s:Landroid/view/LayoutInflater;

    const v2, 0x7f04008d

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 363
    const v0, 0x7f0a007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laga$b;->a:Landroid/widget/TextView;

    .line 364
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 369
    :goto_0
    iget-object v0, p0, Laga;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 370
    invoke-direct {p0, v0, p1}, Laga;->a(Lcom/snapchat/android/model/Friend;I)Ljava/lang/String;

    move-result-object v2

    .line 372
    instance-of v0, v0, Lagl;

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    :cond_0
    iget-object v0, v1, Laga$b;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    :goto_1
    return-object p2

    .line 366
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laga$b;

    move-object v1, v0

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, v1, Laga$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, v1, Laga$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 412
    iget-object v0, p0, Laga;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/snapchat/android/model/Friend;

    .line 413
    if-nez v11, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object p2

    .line 416
    :cond_1
    if-nez p2, :cond_8

    .line 417
    iget-object v0, p0, Laga;->s:Landroid/view/LayoutInflater;

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 418
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to inflate add_friends_item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_2
    new-instance v0, Lagf;

    iget-object v3, p0, Laga;->B:Ljava/util/Set;

    iget-object v4, p0, Laga;->C:Ljava/util/Set;

    iget-object v5, p0, Laga;->D:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v6, p0, Laga;->f:Lage;

    iget-object v7, p0, Laga;->A:Laga$c;

    iget-object v8, p0, Laga;->y:Ljavax/inject/Provider;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lagf;-><init>(Laga;Landroid/view/View;Ljava/util/Set;Ljava/util/Set;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lage;Laga$c;Ljavax/inject/Provider;)V

    .line 422
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v2

    .line 427
    :goto_1
    iput p1, v0, Lagf;->G:I

    .line 429
    instance-of v1, v11, Lagl;

    if-eqz v1, :cond_9

    move-object v5, v11

    .line 430
    check-cast v5, Lagl;

    iget-object v4, p0, Laga;->t:Laga$a;

    iget v1, p0, Laga;->p:I

    invoke-virtual {v5}, Lagl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lagf;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lagf;->z:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lagf;->n:Landroid/widget/Button;

    new-instance v3, Lagf$13;

    invoke-direct {v3, v0, v5}, Lagf$13;-><init>(Lagf;Lagl;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lagf;->n:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v0, Lagf;->l:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-interface {v4}, Laga$a;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    invoke-virtual {v0, v5}, Lagf;->e(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    move-result-object v3

    invoke-interface {v4}, Laga$a;->r_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lagf;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 438
    :goto_2
    iget-object v1, p0, Laga;->o:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v11}, Lcom/snapchat/android/model/Friend;->m()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f02006e

    iget-object v2, v0, Lagf;->H:Laga;

    invoke-virtual {v2}, Laga;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    const/4 v4, 0x0

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lagf;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    :goto_3
    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->b:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->WHITE_TEXT:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lagf;->m:Lcom/snapchat/android/ui/FriendTextsView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/FriendTextsView;->setTextColor(I)V

    :cond_3
    iget-object v2, v0, Lagf;->w:Landroid/view/View;

    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->d:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lagf;->y:Landroid/view/View;

    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->e:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lagf;->x:Landroid/view/View;

    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->f:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->TAPPABLE_FRIENDS:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->ALWAYS_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-ne v1, v2, :cond_6

    :cond_4
    invoke-virtual {v11}, Lcom/snapchat/android/model/Friend;->m()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v11}, Lagf;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->ALWAYS_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-ne v1, v2, :cond_11

    :cond_5
    iget-object v1, v0, Lagf;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Lagf$9;

    invoke-direct {v2, v0, v11}, Lagf$9;-><init>(Lagf;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_7
    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->TAPPABLE_FRIENDS:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->ALWAYS_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    iget-object v1, v0, Lagf;->w:Landroid/view/View;

    new-instance v2, Lagf$10;

    invoke-direct {v2, v0, v11, v6}, Lagf$10;-><init>(Lagf;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lagf;->x:Landroid/view/View;

    new-instance v2, Lagf$11;

    invoke-direct {v2, v0, v11}, Lagf$11;-><init>(Lagf;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lagf;->y:Landroid/view/View;

    new-instance v2, Lagf$12;

    invoke-direct {v2, v0, v11}, Lagf$12;-><init>(Lagf;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 424
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagf;

    goto/16 :goto_1

    .line 433
    :cond_9
    iget-object v3, p0, Laga;->d:Lcom/snapchat/android/model/Friend;

    iget-object v4, p0, Laga;->c:Lcom/snapchat/android/model/Friend;

    iget v5, p0, Laga;->x:I

    iget v6, p0, Laga;->w:I

    iget v7, p0, Laga;->p:I

    iget-object v8, p0, Laga;->t:Laga$a;

    iget-object v9, p0, Laga;->e:Ljava/util/HashSet;

    iget-object v10, p0, Laga;->z:Lbgy;

    move v1, p1

    move-object v2, v11

    invoke-virtual/range {v0 .. v10}, Lagf;->a(ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;IIILaga$a;Ljava/util/Set;Lbgy;)V

    goto/16 :goto_2

    .line 438
    :cond_a
    iget-object v1, v0, Lagf;->L:Laga$c;

    invoke-virtual {v1, v11}, Laga$c;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v11}, Lcom/snapchat/android/model/Friend;->h()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lagf$8;

    invoke-direct {v1, v0, v11}, Lagf$8;-><init>(Lagf;Lcom/snapchat/android/model/Friend;)V

    invoke-static {v11, v1}, Lajp;->a(Lcom/snapchat/android/model/Friend;Lajp$a;)V

    iget-boolean v1, v11, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v1, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Lagf;->a(Lcom/snapchat/android/model/Friend;Z)V

    :cond_b
    :goto_8
    iget-boolean v1, v11, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Lagf;->n:Landroid/widget/Button;

    const v2, 0x7f020254

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, v0, Lagf;->n:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v0, Lagf;->J:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lagf;->b(I)V

    goto/16 :goto_3

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Lagf;->a(Lcom/snapchat/android/model/Friend;Z)V

    goto :goto_8

    :cond_d
    iget-object v1, v0, Lagf;->J:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lagf;->b(I)V

    goto/16 :goto_3

    :cond_e
    const/16 v1, 0x8

    goto/16 :goto_4

    :cond_f
    const/16 v1, 0x8

    goto/16 :goto_5

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_6

    :cond_11
    iget-object v1, v0, Lagf;->k:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7
.end method
