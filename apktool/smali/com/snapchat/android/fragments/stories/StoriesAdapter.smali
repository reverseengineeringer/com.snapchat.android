.class public final Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.super Lapf;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lbfe$a;
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;,
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;,
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;,
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;,
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;,
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;,
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lapf",
        "<",
        "Lahb;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lbfe$a",
        "<",
        "Lahb;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lahb;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lazo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/squareup/otto/Bus;

.field private final e:Lajq;

.field private final f:Lng;

.field private final g:Lzd;

.field private final h:Latm;

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lahb;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/LayoutInflater;

.field private l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/Filter;

.field private final n:Landroid/view/inputmethod/InputMethodManager;

.field private final o:Laop;

.field private final p:Lauy;

.field private q:I

.field private final r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

.field private s:Laom;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Landroid/view/inputmethod/InputMethodManager;Lauy;Laom;Laop;Lcom/squareup/otto/Bus;Lajq;Lng;Lzd;Latm;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/ArrayList",
            "<",
            "Lahb;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Lauy;",
            "Laom;",
            "Laop;",
            "Lcom/squareup/otto/Bus;",
            "Lajq;",
            "Lng;",
            "Lzd;",
            "Latm;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    const v0, 0x7f0400b2

    invoke-direct {p0, p1, v0, p3}, Lapf;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:Ljava/util/HashSet;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->q:I

    .line 192
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)V

    .line 193
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    .line 194
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    .line 195
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->j:Ljava/util/List;

    .line 196
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    .line 197
    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    .line 198
    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Landroid/view/inputmethod/InputMethodManager;

    .line 199
    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->p:Lauy;

    .line 200
    iput-object p7, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->s:Laom;

    .line 201
    iput-object p8, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Laop;

    .line 202
    iput-object p9, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d:Lcom/squareup/otto/Bus;

    .line 203
    iput-object p10, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lajq;

    .line 204
    iput-object p11, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->f:Lng;

    .line 205
    iput-object p12, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->g:Lzd;

    .line 206
    iput-object p13, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->h:Latm;

    .line 207
    iput-object p14, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->i:Ljavax/inject/Provider;

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Lauy;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lahb;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;",
            "Lauy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    const-string v1, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const-string v1, "input_method"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    new-instance v8, Laom;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Laom;-><init>(Landroid/content/Context;)V

    invoke-static {}, Laop;->a()Laop;

    move-result-object v9

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v10

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v11

    invoke-static {}, Lng;->a()Lng;

    move-result-object v12

    invoke-static {}, Lzd;->a()Lzd;

    move-result-object v13

    invoke-static {}, Latm;->a()Latm;

    move-result-object v14

    sget-object v15, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v15}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Landroid/view/inputmethod/InputMethodManager;Lauy;Laom;Laop;Lcom/squareup/otto/Bus;Lajq;Lng;Lzd;Latm;Ljavax/inject/Provider;)V

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0}, Latg;->show()V

    invoke-virtual {v0}, Latg;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lahc;)V
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Latm;->f(Ljava/lang/String;Lajv;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    const v4, 0x7f0c0143

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    const v4, 0x7f0c00f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    const v4, 0x7f0c0142

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$8;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lahc;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lahc;)V
    .locals 8

    .prologue
    .line 90
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0c02e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/StorySnapLogbook;Lahc;)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->show()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->g:Lzd;

    iget-object v1, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    sget-object v2, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->TAP_TO_LOAD:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {v0, v1, v2}, Lzd;->a(Lajr;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->f:Lng;

    const-string v1, "story"

    const-string v2, "tap_to_load"

    invoke-virtual {v0, v1, v2}, Lng;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Laup;->d()Laup;

    move-result-object v0

    iget-object v1, v0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    if-eqz v1, :cond_0

    new-instance v1, Laup$c;

    invoke-direct {v1, v0, p1, p2}, Laup$c;-><init>(Laup;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Laom;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->s:Laom;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 90
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;B)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->f()V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0}, Lafh;->a()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d:Lcom/squareup/otto/Bus;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lahb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 228
    return-void

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lagz;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b:Lazo;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-direct {v0, v1, v2, p0, v3}, Lagz;-><init>(Ljava/util/List;Lazo;Lbfe$a;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Landroid/widget/Filter;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Landroid/widget/Filter;

    return-object v0
.end method

.method public final getHeaderId(I)J
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 978
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahb;

    .line 979
    invoke-interface {v0}, Lahb;->i()Lcom/snapchat/android/stories/StoriesSection;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-interface {v0}, Lahb;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/stories/StoriesSection;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 950
    if-nez p2, :cond_1

    .line 951
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)V

    .line 952
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    const v2, 0x7f04008b

    invoke-virtual {v0, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 953
    const v0, 0x7f0a007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a:Landroid/widget/TextView;

    .line 954
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 959
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahb;

    .line 960
    invoke-interface {v0}, Lahb;->i()Lcom/snapchat/android/stories/StoriesSection;

    move-result-object v2

    .line 963
    sget-object v3, Lcom/snapchat/android/stories/StoriesSection;->ME:Lcom/snapchat/android/stories/StoriesSection;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/snapchat/android/stories/StoriesSection;->NONE:Lcom/snapchat/android/stories/StoriesSection;

    if-ne v2, v3, :cond_2

    .line 965
    :cond_0
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    :goto_1
    return-object p2

    .line 956
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;

    move-object v1, v0

    goto :goto_0

    .line 967
    :cond_2
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-interface {v0}, Lahb;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/stories/StoriesSection;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 968
    iget-object v2, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 242
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DEFAULT:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->ordinal()I

    move-result v0

    .line 246
    :goto_0
    return v0

    .line 245
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahb;

    .line 246
    invoke-interface {v0}, Lahb;->c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 251
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahb;

    .line 253
    instance-of v1, v0, Laoq;

    if-eqz v1, :cond_0

    .line 254
    check-cast v0, Laoq;

    .line 255
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, v1}, Laoq;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    .line 260
    :cond_0
    const/4 v1, 0x0

    .line 262
    instance-of v2, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v2, :cond_11

    .line 263
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lagx;

    if-nez v2, :cond_f

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    const v3, 0x7f04007d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 265
    new-instance v3, Lagx;

    invoke-direct {v3, p2}, Lagx;-><init>(Landroid/view/View;)V

    .line 266
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, p2

    .line 295
    :goto_1
    if-eqz v1, :cond_2

    .line 296
    invoke-virtual {v3}, Lahc;->q()V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 302
    :cond_2
    iget-object v1, v3, Lahc;->P:Lahb;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 303
    iget-object v1, v3, Lahc;->O:Laow;

    if-eqz v1, :cond_3

    iget-object v1, v3, Lahc;->O:Laow;

    const/4 v2, 0x1

    iput-boolean v2, v1, Laow;->d:Z

    iget-object v1, v1, Laow;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 306
    :cond_3
    iput-object v0, v3, Lahc;->P:Lahb;

    .line 307
    iput p1, v3, Lahc;->Q:I

    .line 309
    invoke-interface {v0}, Lahb;->j()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Lahb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lahc;->a(Ljava/lang/String;)V

    iget-object v1, v3, Lahc;->B:Landroid/widget/TextView;

    invoke-interface {v0}, Lahb;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->y_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lahd;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lahd;

    invoke-virtual {v3, v1}, Lahc;->a(Lahd;)V

    .line 310
    :cond_4
    :goto_3
    const/16 v5, 0x8

    iget-object v1, v3, Lahc;->B:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    instance-of v1, v0, Lahd;

    if-eqz v1, :cond_1d

    move-object v1, v0

    check-cast v1, Lahd;

    invoke-virtual {v1}, Lahd;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v1}, Lahd;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    const/4 v4, 0x1

    :goto_5
    iget-object v7, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-virtual {v1}, Lahd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v2, :cond_5

    if-nez v4, :cond_5

    if-eqz v1, :cond_42

    :cond_5
    const/4 v1, 0x0

    :goto_6
    move v5, v1

    :cond_6
    :goto_7
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-nez v1, :cond_7

    instance-of v1, v0, Lcom/snapchat/android/model/StoryCollection;

    if-eqz v1, :cond_8

    :cond_7
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lajq;

    invoke-interface {v0}, Lahb;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v5, 0x0

    :cond_8
    if-nez v5, :cond_1f

    invoke-virtual {v3}, Lahc;->t()Z

    .line 312
    :goto_9
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahb;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahc;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahc;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 316
    invoke-interface {v0}, Lahb;->m()Lauz;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_a

    .line 318
    iget-object v2, v3, Lahc;->x:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v2, v3, Lahc;->x:Landroid/widget/ImageView;

    iget-object v4, v1, Lauz;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v3, Lahc;->x:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lahc;->f(Z)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->p:Lauy;

    invoke-virtual {v2, v1}, Lauy;->a(Lauz;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_20

    iget-object v1, v3, Lahc;->x:Landroid/widget/ImageView;

    const v2, 0x7f02027e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_a
    instance-of v1, v0, Lajg;

    if-eqz v1, :cond_24

    move-object v1, v0

    check-cast v1, Lajg;

    invoke-virtual {v1}, Lajg;->B()Z

    move-result v2

    invoke-virtual {v3, v2}, Lahc;->e(Z)V

    invoke-virtual {v1}, Lajg;->B()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lajg;->C()Z

    move-result v2

    if-nez v2, :cond_21

    :cond_9
    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v3, v2}, Lahc;->f(Z)V

    invoke-virtual {v1}, Lajg;->w()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v3, Lahc;->x:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lajg;->E()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v1, v3, Lahc;->J:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 321
    :cond_a
    :goto_c
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->l()Z

    move-result v5

    const/4 v4, 0x0

    const/4 v2, 0x0

    add-int/lit8 v1, p1, 0x1

    iget-object v7, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2a

    invoke-interface {v0}, Lahb;->i()Lcom/snapchat/android/stories/StoriesSection;

    move-result-object v7

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    add-int/lit8 v8, p1, 0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahb;

    invoke-interface {v1}, Lahb;->i()Lcom/snapchat/android/stories/StoriesSection;

    move-result-object v8

    if-nez v5, :cond_b

    if-eq v7, v8, :cond_b

    sget-object v5, Lcom/snapchat/android/stories/StoriesSection;->ALPHABETICAL:Lcom/snapchat/android/stories/StoriesSection;

    if-ne v8, v5, :cond_b

    const/4 v2, 0x1

    :cond_b
    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-interface {v0}, Lahb;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/snapchat/android/stories/StoriesSection;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-interface {v1}, Lahb;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v7, v1}, Lcom/snapchat/android/stories/StoriesSection;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    const/4 v1, 0x1

    :goto_d
    iget-object v4, v3, Lahc;->L:Landroid/view/View;

    if-eqz v1, :cond_2b

    const/16 v1, 0x8

    :goto_e
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v3, Lahc;->M:Landroid/view/View;

    if-eqz v2, :cond_2c

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_31

    .line 324
    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lagx;

    iget-object v4, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget v2, v1, Lagx;->Q:I

    iget v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->q:I

    if-ne v2, v3, :cond_2d

    const/4 v2, 0x1

    :goto_10
    iput-object v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$a;

    iget-object v5, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v5}, Lajr;->aF()Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v2, 0x1

    move v3, v2

    :goto_11
    iget-object v2, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapExtra:Lbjh;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lbjh;->a()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Laud;->a(Ljava/lang/Integer;)I

    move-result v7

    invoke-virtual {v2}, Lbjh;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Integer;)I

    move-result v8

    if-lez v7, :cond_2e

    iget-object v2, v1, Lagx;->l:Lbgr;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lbgr;->a(I)V

    iget-object v2, v1, Lagx;->m:Lbgr;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lbgr;->a(I)V

    iget-object v2, v1, Lagx;->m:Lbgr;

    invoke-virtual {v2}, Lbgr;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v7}, Laua;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    if-lez v8, :cond_2f

    iget-object v2, v1, Lagx;->n:Lbgr;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lbgr;->a(I)V

    iget-object v2, v1, Lagx;->o:Lbgr;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lbgr;->a(I)V

    iget-object v2, v1, Lagx;->o:Lbgr;

    invoke-virtual {v2}, Lbgr;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v8}, Laua;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_13
    iget-boolean v2, v5, Lajr;->mFailed:Z

    if-nez v2, :cond_d

    if-eqz v3, :cond_d

    iget-object v2, v1, Lagx;->l:Lbgr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbgr;->a(I)V

    iget-object v2, v1, Lagx;->m:Lbgr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbgr;->a(I)V

    iget-object v2, v1, Lagx;->n:Lbgr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbgr;->a(I)V

    iget-object v2, v1, Lagx;->o:Lbgr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbgr;->a(I)V

    invoke-virtual {v1}, Lagx;->s()V

    :cond_d
    iget-object v2, v1, Lagx;->t:Lbgr;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;)V

    invoke-virtual {v2, v3}, Lbgr;->a(Lbgr$a;)V

    iget-object v2, v1, Lagx;->q:Lbgr;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lagx;)V

    invoke-virtual {v2, v3}, Lbgr;->a(Lbgr$a;)V

    iget-boolean v1, v4, Lajr;->mFailed:Z

    if-eqz v1, :cond_30

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$15;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$15;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_e
    :goto_14
    move-object v0, v6

    .line 335
    goto/16 :goto_0

    .line 269
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lagx;

    .line 272
    iget-object v2, v1, Lagx;->v:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 273
    iget-object v2, v1, Lahc;->y:Lbgr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbgr;->a(I)V

    .line 276
    :cond_10
    const/4 v2, 0x1

    move-object v3, v1

    move-object v6, p2

    move v1, v2

    .line 277
    goto/16 :goto_1

    .line 279
    :cond_11
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lahc;

    if-eqz v2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lagx;

    if-eqz v2, :cond_13

    .line 281
    :cond_12
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    const v3, 0x7f0400b2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 282
    new-instance v3, Lahc;

    invoke-direct {v3, p2}, Lahc;-><init>(Landroid/view/View;)V

    .line 283
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, p2

    goto/16 :goto_1

    .line 286
    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahc;

    .line 287
    iget-object v2, v1, Lahc;->P:Lahb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 288
    iget-object v2, v1, Lahc;->y:Lbgr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbgr;->a(I)V

    .line 291
    :cond_14
    const/4 v2, 0x1

    move-object v3, v1

    move-object v6, p2

    move v1, v2

    goto/16 :goto_1

    .line 309
    :cond_15
    invoke-interface {v0}, Lahb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lahc;->a(Ljava/lang/String;)V

    iget-object v1, v3, Lahc;->B:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_16
    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/StorySnapLogbook;

    move-object v2, v3

    check-cast v2, Lagx;

    iget-object v4, v1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v4}, Lajr;->T()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_17
    invoke-virtual {v2, v4}, Lagx;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lagx;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto/16 :goto_3

    :cond_18
    instance-of v1, v0, Lajg;

    if-eqz v1, :cond_19

    move-object v1, v0

    check-cast v1, Lajg;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->x()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v3, v1}, Lahc;->a(Lcom/snapchat/android/model/StoryCollection;)V

    goto/16 :goto_3

    :cond_19
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lahc;->a(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v3, v1}, Lahc;->a(Lcom/snapchat/android/model/Friend;)V

    goto/16 :goto_3

    .line 310
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_1d
    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    move v5, v1

    goto/16 :goto_7

    :cond_1e
    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/StoryCollection;

    goto/16 :goto_8

    :cond_1f
    invoke-virtual {v3}, Lahc;->u()Z

    goto/16 :goto_9

    .line 318
    :cond_20
    iget-object v2, v3, Lahc;->x:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_22
    iget-object v2, v3, Lahc;->z:Lbgr;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lbgr;->a(I)V

    instance-of v2, v1, Lajo;

    if-eqz v2, :cond_23

    iget-object v2, v3, Lahc;->z:Lbgr;

    invoke-virtual {v2}, Lbgr;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f02027f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v3, Lahc;->z:Lbgr;

    invoke-virtual {v2}, Lbgr;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;

    invoke-direct {v4, p0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lajg;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_c

    :cond_23
    iget-object v1, v3, Lahc;->z:Lbgr;

    invoke-virtual {v1}, Lbgr;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v3, Lahc;->z:Lbgr;

    invoke-virtual {v1}, Lbgr;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$13;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$13;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahb;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_c

    :cond_24
    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_27

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v4, v1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    move-object v1, v3

    check-cast v1, Lagx;

    invoke-virtual {v4}, Lajr;->aF()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v4}, Lajr;->R()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_25
    const/4 v2, 0x1

    :goto_15
    invoke-virtual {v1, v2}, Lagx;->e(Z)V

    iget-boolean v2, v4, Lajr;->mFailed:Z

    invoke-virtual {v1, v2}, Lagx;->b(Z)V

    goto/16 :goto_c

    :cond_26
    const/4 v2, 0x0

    goto :goto_15

    :cond_27
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lajq;

    invoke-interface {v0}, Lahb;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v2

    invoke-virtual {v3, v2}, Lahc;->e(Z)V

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->n()Z

    move-result v1

    if-nez v1, :cond_29

    :cond_28
    const/4 v1, 0x1

    :goto_16
    invoke-virtual {v3, v1}, Lahc;->f(Z)V

    goto/16 :goto_c

    :cond_29
    const/4 v1, 0x0

    goto :goto_16

    .line 321
    :cond_2a
    const/4 v1, 0x1

    goto/16 :goto_d

    :cond_2b
    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_2c
    const/16 v1, 0x8

    goto/16 :goto_f

    .line 324
    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_2e
    iget-object v2, v1, Lagx;->l:Lbgr;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lbgr;->a(I)V

    iget-object v2, v1, Lagx;->m:Lbgr;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lbgr;->a(I)V

    goto/16 :goto_12

    :cond_2f
    iget-object v2, v1, Lagx;->n:Lbgr;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lbgr;->a(I)V

    iget-object v2, v1, Lagx;->o:Lbgr;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lbgr;->a(I)V

    goto/16 :goto_13

    :cond_30
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;

    invoke-direct {v1, p0, v0, v6}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/view/View;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_14

    .line 325
    :cond_31
    instance-of v1, v0, Lahd;

    if-eqz v1, :cond_36

    .line 326
    check-cast v0, Lahd;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahc;

    invoke-virtual {v0}, Lahd;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v3

    iput-object v1, v3, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-virtual {v0}, Lahd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lahc;->c(Z)V

    invoke-virtual {v1}, Lahc;->s()V

    instance-of v2, v0, Lagw;

    if-nez v2, :cond_32

    iget-object v2, v1, Lahc;->F:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, Lahc;->F:Landroid/widget/Button;

    const v4, 0x7f020253

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lahc;->F:Landroid/widget/Button;

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;

    invoke-direct {v4, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahd;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_32
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lajq;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lajq;->a(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v2

    if-eqz v2, :cond_33

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/snapchat/android/model/StoryGroup;->a(Z)Ljava/util/List;

    move-result-object v4

    new-instance v5, Laon;

    invoke-direct {v5, v2, v4}, Laon;-><init>(Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_33
    invoke-virtual {v0}, Lahd;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_34

    const/4 v2, 0x1

    :goto_17
    iget-object v4, v1, Lahc;->G:Landroid/widget/Button;

    if-eqz v2, :cond_35

    const v2, 0x7f02026f

    :goto_18
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lahc;->G:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, Lahc;->G:Landroid/widget/Button;

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;

    invoke-direct {v4, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahd;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$20;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$20;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahd;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v1, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_34
    const/4 v2, 0x0

    goto :goto_17

    :cond_35
    const v2, 0x7f020270

    goto :goto_18

    .line 327
    :cond_36
    instance-of v1, v0, Lafl;

    if-eqz v1, :cond_37

    .line 328
    check-cast v0, Lafl;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahc;

    iget-object v2, v1, Lahc;->F:Landroid/widget/Button;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lafl;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lafl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lahc;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lahc;->F:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_14

    .line 329
    :cond_37
    instance-of v1, v0, Lajg;

    if-eqz v1, :cond_3a

    .line 330
    check-cast v0, Lajg;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahc;

    invoke-virtual {v0}, Lajg;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lajv;

    invoke-static {v3, v2}, Latm;->a(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v2

    iget-boolean v3, v2, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lahc;->b(I)V

    iget-object v3, v1, Lahc;->F:Landroid/widget/Button;

    const v4, 0x7f020254

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, v1, Lahc;->F:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v1, Lahc;->F:Landroid/widget/Button;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;

    invoke-direct {v3, p0, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_38
    invoke-virtual {v0}, Lajg;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-boolean v1, v2, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v1, :cond_e

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$5;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$5;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lajg;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_39
    new-instance v1, Laon;

    invoke-direct {v1, v0}, Laon;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    .line 331
    :cond_3a
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_e

    .line 332
    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahc;

    iget-object v2, v1, Lahc;->E:Lbgr;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lahc;)V

    invoke-virtual {v2, v3}, Lbgr;->a(Lbgr$a;)V

    iget-object v2, v1, Lahc;->F:Landroid/widget/Button;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$7;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$7;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, v1, Lahc;->Q:I

    iget v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->q:I

    if-ne v2, v3, :cond_3d

    iget-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v2, :cond_3b

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lahc;->c(Z)V

    :cond_3b
    :goto_19
    iget-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v2, :cond_3e

    iget-object v2, v1, Lahc;->F:Landroid/widget/Button;

    const v3, 0x7f020254

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lahc;->F:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lahc;->b(I)V

    :cond_3c
    :goto_1a
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lajq;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Laon;

    invoke-direct {v1, v0}, Laon;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_3d
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lahc;->c(Z)V

    goto :goto_19

    :cond_3e
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->q()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:Ljava/util/HashSet;

    invoke-virtual {v1, v0, v2, v3}, Lahc;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Ljava/util/Set;)V

    invoke-virtual {v1}, Lahc;->v()V

    goto :goto_1a

    :cond_3f
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:Ljava/util/HashSet;

    invoke-virtual {v1, v0, v2, v3}, Lahc;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Ljava/util/Set;)V

    goto :goto_1a

    :cond_40
    move v3, v2

    goto/16 :goto_11

    :cond_41
    move v1, v4

    goto/16 :goto_d

    :cond_42
    move v1, v5

    goto/16 :goto_6
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->a()I

    move-result v0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoq;

    .line 1099
    invoke-virtual {v0}, Laoq;->g()V

    goto :goto_0

    .line 1101
    :cond_0
    invoke-super {p0}, Lapf;->notifyDataSetChanged()V

    .line 1102
    return-void
.end method
