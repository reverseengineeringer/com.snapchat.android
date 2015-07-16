.class public final Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.super Laqb;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lbge$a;
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
        "Laqb",
        "<",
        "Lahy;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lbge$a",
        "<",
        "Lahy;",
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
            "Lahy;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lban;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/squareup/otto/Bus;

.field private final e:Lakk;

.field private final f:Lnx;

.field private final g:Lzz;

.field private final h:Lauk;

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lahy;",
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

.field private final o:Lapl;

.field private final p:Lavw;

.field private q:I

.field private final r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

.field private s:Lapi;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Landroid/view/inputmethod/InputMethodManager;Lavw;Lapi;Lapl;Lcom/squareup/otto/Bus;Lakk;Lnx;Lzz;Lauk;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/ArrayList",
            "<",
            "Lahy;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Lavw;",
            "Lapi;",
            "Lapl;",
            "Lcom/squareup/otto/Bus;",
            "Lakk;",
            "Lnx;",
            "Lzz;",
            "Lauk;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    const v0, 0x7f0400b3

    invoke-direct {p0, p1, v0, p3}, Laqb;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:Ljava/util/HashSet;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->q:I

    .line 194
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)V

    .line 195
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    .line 196
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    .line 197
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->j:Ljava/util/List;

    .line 198
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    .line 199
    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    .line 200
    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Landroid/view/inputmethod/InputMethodManager;

    .line 201
    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->p:Lavw;

    .line 202
    iput-object p7, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->s:Lapi;

    .line 203
    iput-object p8, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lapl;

    .line 204
    iput-object p9, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d:Lcom/squareup/otto/Bus;

    .line 205
    iput-object p10, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lakk;

    .line 206
    iput-object p11, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->f:Lnx;

    .line 207
    iput-object p12, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->g:Lzz;

    .line 208
    iput-object p13, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->h:Lauk;

    .line 209
    iput-object p14, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->i:Ljavax/inject/Provider;

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Lavw;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lahy;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;",
            "Lavw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
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

    new-instance v8, Lapi;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lapi;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v9

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v10

    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v11

    invoke-static {}, Lnx;->a()Lnx;

    move-result-object v12

    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v13

    invoke-static {}, Lauk;->a()Lauk;

    move-result-object v14

    sget-object v15, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v15}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Landroid/view/inputmethod/InputMethodManager;Lavw;Lapi;Lapl;Lcom/squareup/otto/Bus;Lakk;Lnx;Lzz;Lauk;Ljavax/inject/Provider;)V

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0}, Lauf;->show()V

    invoke-virtual {v0}, Lauf;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lahz;)V
    .locals 5

    .prologue
    .line 91
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->n()Z

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

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lauk;->f(Ljava/lang/String;Lakp;)Z

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

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lahz;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lahz;)V
    .locals 8

    .prologue
    .line 91
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0c02e1

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

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/StorySnapLogbook;Lahz;)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->show()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->g:Lzz;

    iget-object v1, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    sget-object v2, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->TAP_TO_LOAD:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {v0, v1, v2}, Lzz;->a(Lakl;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->f:Lnx;

    const-string v1, "story"

    const-string v2, "tap_to_load"

    invoke-virtual {v0, v1, v2}, Lnx;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lavn;->d()Lavn;

    move-result-object v0

    iget-object v1, v0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    if-eqz v1, :cond_0

    new-instance v1, Lavn$c;

    invoke-direct {v1, v0, p1, p2}, Lavn$c;-><init>(Lavn;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lapi;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->s:Lapi;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 91
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;B)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->execute()V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0}, Lagh;->a()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d:Lcom/squareup/otto/Bus;

    return-object v0
.end method


# virtual methods
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
            "Lahy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 230
    return-void

    .line 227
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lahw;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b:Lban;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-direct {v0, v1, v2, p0, v3}, Lahw;-><init>(Ljava/util/List;Lban;Lbge$a;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Landroid/widget/Filter;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Landroid/widget/Filter;

    return-object v0
.end method

.method public final getHeaderId(I)J
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahy;

    .line 1002
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->l()Z

    move-result v1

    invoke-interface {v0, v1}, Lahy;->a(Z)Lcom/snapchat/android/stories/StoriesSection;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/stories/StoriesSection;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 973
    if-nez p2, :cond_1

    .line 974
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    const v1, 0x7f0400b8

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 975
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/view/View;)V

    .line 976
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 981
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahy;

    .line 982
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->l()Z

    move-result v2

    .line 983
    invoke-interface {v0, v2}, Lahy;->a(Z)Lcom/snapchat/android/stories/StoriesSection;

    move-result-object v0

    .line 985
    sget-object v2, Lcom/snapchat/android/stories/StoriesSection;->ME:Lcom/snapchat/android/stories/StoriesSection;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/snapchat/android/stories/StoriesSection;->NONE:Lcom/snapchat/android/stories/StoriesSection;

    if-ne v0, v2, :cond_2

    .line 987
    :cond_0
    invoke-virtual {v1, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a(Z)V

    .line 995
    :goto_1
    return-object p2

    .line 978
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;

    move-object v1, v0

    goto :goto_0

    .line 989
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a(Z)V

    .line 990
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/stories/StoriesSection;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 991
    iget-object v2, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 244
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DEFAULT:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->ordinal()I

    move-result v0

    .line 248
    :goto_0
    return v0

    .line 247
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahy;

    .line 248
    invoke-interface {v0}, Lahy;->c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 253
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahy;

    .line 255
    instance-of v1, v0, Lapm;

    if-eqz v1, :cond_0

    .line 256
    check-cast v0, Lapm;

    .line 257
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, v1}, Lapm;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const/4 v1, 0x0

    .line 264
    instance-of v2, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v2, :cond_10

    .line 265
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lahu;

    if-nez v2, :cond_e

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    const v3, 0x7f04007e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 267
    new-instance v3, Lahu;

    invoke-direct {v3, p2}, Lahu;-><init>(Landroid/view/View;)V

    .line 268
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, p2

    .line 297
    :goto_1
    if-eqz v1, :cond_2

    .line 298
    invoke-virtual {v3}, Lahz;->q()V

    .line 299
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 304
    :cond_2
    iget-object v1, v3, Lahz;->O:Lahy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 305
    iget-object v1, v3, Lahz;->N:Laqg;

    if-eqz v1, :cond_3

    iget-object v1, v3, Lahz;->N:Laqg;

    invoke-virtual {v1}, Laqg;->c()V

    .line 308
    :cond_3
    iput-object v0, v3, Lahz;->O:Lahy;

    .line 309
    iput p1, v3, Lahz;->P:I

    .line 311
    invoke-interface {v0}, Lahy;->n()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Lahy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lahz;->a(Ljava/lang/String;)V

    iget-object v1, v3, Lahz;->B:Landroid/widget/TextView;

    invoke-interface {v0}, Lahy;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->x_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Laia;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Laia;

    invoke-virtual {v3, v1}, Lahz;->a(Laia;)V

    .line 312
    :cond_4
    :goto_3
    const/16 v5, 0x8

    iget-object v1, v3, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    instance-of v1, v0, Laia;

    if-eqz v1, :cond_1c

    move-object v1, v0

    check-cast v1, Laia;

    invoke-virtual {v1}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v1}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1b

    const/4 v4, 0x1

    :goto_5
    iget-object v7, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-virtual {v1}, Laia;->b()Ljava/lang/String;

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

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lakk;

    invoke-interface {v0}, Lahy;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v5, 0x0

    :cond_8
    if-nez v5, :cond_1e

    invoke-virtual {v3}, Lahz;->t()Z

    .line 314
    :goto_9
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahy;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahz;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahz;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 318
    invoke-interface {v0}, Lahy;->p()Lavx;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_a

    .line 320
    iget-object v2, v3, Lahz;->x:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v2, v3, Lahz;->x:Landroid/widget/ImageView;

    iget-object v4, v1, Lavx;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v3, Lahz;->x:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lahz;->f(Z)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->p:Lavw;

    invoke-virtual {v2, v1}, Lavw;->a(Lavx;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_20

    iget-object v2, v3, Lahz;->x:Landroid/widget/ImageView;

    iget-object v4, v1, Lavx;->mStorySnaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v1, 0x0

    :goto_a
    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v1, v4

    const/high16 v4, 0x43870000    # 270.0f

    sub-float/2addr v4, v1

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/ArcShape;

    invoke-direct {v7, v4, v1}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080058

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09009f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09009f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_b
    instance-of v1, v0, Lakc;

    if-eqz v1, :cond_23

    move-object v1, v0

    check-cast v1, Lakc;

    invoke-virtual {v1}, Lakc;->y()Z

    move-result v2

    invoke-virtual {v3, v2}, Lahz;->e(Z)V

    invoke-virtual {v1}, Lakc;->y()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lakc;->z()Z

    move-result v2

    if-nez v2, :cond_21

    :cond_9
    const/4 v2, 0x1

    :goto_c
    invoke-virtual {v3, v2}, Lahz;->f(Z)V

    invoke-virtual {v1}, Lakc;->s()I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v3, Lahz;->x:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lakc;->A()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v3, Lahz;->J:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 323
    :cond_a
    :goto_d
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->l()Z

    move-result v4

    invoke-interface {v0, v4}, Lahy;->a(Z)Lcom/snapchat/android/stories/StoriesSection;

    move-result-object v5

    const/4 v2, 0x0

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_29

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahy;

    invoke-interface {v1, v4}, Lahy;->a(Z)Lcom/snapchat/android/stories/StoriesSection;

    move-result-object v1

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v5, v4}, Lcom/snapchat/android/stories/StoriesSection;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/snapchat/android/stories/StoriesSection;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    :goto_e
    iget-object v2, v3, Lahz;->L:Landroid/view/View;

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_30

    .line 326
    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahu;

    iget-object v4, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget v2, v1, Lahu;->P:I

    iget v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->q:I

    if-ne v2, v3, :cond_2c

    const/4 v2, 0x1

    :goto_10
    iput-object v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$a;

    iget-object v5, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v5}, Lakl;->aA()Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v2, 0x1

    move v3, v2

    :goto_11
    iget-object v2, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapExtra:Lbki;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lbki;->a()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v7

    invoke-virtual {v2}, Lbki;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v8

    if-lez v7, :cond_2d

    iget-object v2, v1, Lahu;->l:Lbhr;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lbhr;->a(I)V

    iget-object v2, v1, Lahu;->m:Lbhr;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lbhr;->a(I)V

    iget-object v2, v1, Lahu;->m:Lbhr;

    invoke-virtual {v2}, Lbhr;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v7}, Lauy;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    if-lez v8, :cond_2e

    iget-object v2, v1, Lahu;->n:Lbhr;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lbhr;->a(I)V

    iget-object v2, v1, Lahu;->o:Lbhr;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lbhr;->a(I)V

    iget-object v2, v1, Lahu;->o:Lbhr;

    invoke-virtual {v2}, Lbhr;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v8}, Lauy;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_13
    iget-boolean v2, v5, Lakl;->mFailed:Z

    if-nez v2, :cond_c

    if-eqz v3, :cond_c

    iget-object v2, v1, Lahu;->l:Lbhr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbhr;->a(I)V

    iget-object v2, v1, Lahu;->m:Lbhr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbhr;->a(I)V

    iget-object v2, v1, Lahu;->n:Lbhr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbhr;->a(I)V

    iget-object v2, v1, Lahu;->o:Lbhr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbhr;->a(I)V

    invoke-virtual {v1}, Lahu;->s()V

    :cond_c
    iget-object v2, v1, Lahu;->t:Lbhr;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;)V

    invoke-virtual {v2, v3}, Lbhr;->a(Lbhr$a;)V

    iget-object v2, v1, Lahu;->q:Lbhr;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lahu;)V

    invoke-virtual {v2, v3}, Lbhr;->a(Lbhr$a;)V

    iget-boolean v1, v4, Lakl;->mFailed:Z

    if-eqz v1, :cond_2f

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$15;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$15;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_d
    :goto_14
    move-object v0, v6

    .line 337
    goto/16 :goto_0

    .line 271
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahu;

    .line 274
    iget-object v2, v1, Lahu;->v:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 275
    iget-object v2, v1, Lahz;->y:Lbhr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbhr;->a(I)V

    .line 278
    :cond_f
    const/4 v2, 0x1

    move-object v3, v1

    move-object v6, p2

    move v1, v2

    .line 279
    goto/16 :goto_1

    .line 281
    :cond_10
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lahz;

    if-eqz v2, :cond_11

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lahu;

    if-eqz v2, :cond_12

    .line 283
    :cond_11
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Landroid/view/LayoutInflater;

    const v3, 0x7f0400b3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 284
    new-instance v3, Lahz;

    invoke-direct {v3, p2}, Lahz;-><init>(Landroid/view/View;)V

    .line 285
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, p2

    goto/16 :goto_1

    .line 288
    :cond_12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahz;

    .line 289
    iget-object v2, v1, Lahz;->O:Lahy;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 290
    iget-object v2, v1, Lahz;->y:Lbhr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lbhr;->a(I)V

    .line 293
    :cond_13
    const/4 v2, 0x1

    move-object v3, v1

    move-object v6, p2

    move v1, v2

    goto/16 :goto_1

    .line 311
    :cond_14
    invoke-interface {v0}, Lahy;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lahz;->a(Ljava/lang/String;)V

    iget-object v1, v3, Lahz;->B:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_15
    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/StorySnapLogbook;

    move-object v2, v3

    check-cast v2, Lahu;

    iget-object v4, v1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v4}, Lakl;->T()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_16
    invoke-virtual {v2, v4}, Lahu;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lahu;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto/16 :goto_3

    :cond_17
    instance-of v1, v0, Lakc;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Lakc;

    invoke-virtual {v1}, Lakc;->t()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v3, v1}, Lahz;->a(Lcom/snapchat/android/model/StoryCollection;)V

    goto/16 :goto_3

    :cond_18
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lahz;->a(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v3, v1}, Lahz;->a(Lcom/snapchat/android/model/Friend;)V

    goto/16 :goto_3

    .line 312
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_1c
    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    move v5, v1

    goto/16 :goto_7

    :cond_1d
    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/StoryCollection;

    goto/16 :goto_8

    :cond_1e
    invoke-virtual {v3}, Lahz;->u()Z

    goto/16 :goto_9

    .line 320
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, v1, Lavx;->mStorySnaps:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakl;

    invoke-virtual {v1}, Lakl;->U()J

    move-result-wide v8

    sub-long/2addr v4, v8

    long-to-float v1, v4

    const v4, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    goto/16 :goto_a

    :cond_20
    iget-object v1, v3, Lahz;->x:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_22
    iget-object v1, v3, Lahz;->z:Lbhr;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbhr;->a(I)V

    iget-object v1, v3, Lahz;->z:Lbhr;

    invoke-virtual {v1}, Lbhr;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v3, Lahz;->z:Lbhr;

    invoke-virtual {v1}, Lbhr;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$13;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$13;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahy;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d

    :cond_23
    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_26

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v4, v1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    move-object v1, v3

    check-cast v1, Lahu;

    invoke-virtual {v4}, Lakl;->aA()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v4}, Lakl;->S()Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const/4 v2, 0x1

    :goto_15
    invoke-virtual {v1, v2}, Lahu;->e(Z)V

    iget-boolean v2, v4, Lakl;->mFailed:Z

    invoke-virtual {v1, v2}, Lahu;->b(Z)V

    goto/16 :goto_d

    :cond_25
    const/4 v2, 0x0

    goto :goto_15

    :cond_26
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lakk;

    invoke-interface {v0}, Lahy;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->i()Z

    move-result v2

    invoke-virtual {v3, v2}, Lahz;->e(Z)V

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->i()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->h()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_27
    const/4 v1, 0x1

    :goto_16
    invoke-virtual {v3, v1}, Lahz;->f(Z)V

    goto/16 :goto_d

    :cond_28
    const/4 v1, 0x0

    goto :goto_16

    .line 323
    :cond_29
    sget-object v1, Lcom/snapchat/android/stories/StoriesSection;->ME:Lcom/snapchat/android/stories/StoriesSection;

    if-eq v5, v1, :cond_2a

    sget-object v1, Lcom/snapchat/android/stories/StoriesSection;->NONE:Lcom/snapchat/android/stories/StoriesSection;

    if-ne v5, v1, :cond_41

    :cond_2a
    const/4 v1, 0x1

    goto/16 :goto_e

    :cond_2b
    const/16 v1, 0x8

    goto/16 :goto_f

    .line 326
    :cond_2c
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_2d
    iget-object v2, v1, Lahu;->l:Lbhr;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lbhr;->a(I)V

    iget-object v2, v1, Lahu;->m:Lbhr;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lbhr;->a(I)V

    goto/16 :goto_12

    :cond_2e
    iget-object v2, v1, Lahu;->n:Lbhr;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lbhr;->a(I)V

    iget-object v2, v1, Lahu;->o:Lbhr;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lbhr;->a(I)V

    goto/16 :goto_13

    :cond_2f
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;

    invoke-direct {v1, p0, v0, v6}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/view/View;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_14

    .line 327
    :cond_30
    instance-of v1, v0, Laia;

    if-eqz v1, :cond_35

    .line 328
    check-cast v0, Laia;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahz;

    invoke-virtual {v0}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v3

    iput-object v1, v3, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-virtual {v0}, Laia;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lahz;->c(Z)V

    invoke-virtual {v1}, Lahz;->s()V

    instance-of v2, v0, Laht;

    if-nez v2, :cond_31

    iget-object v2, v1, Lahz;->F:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, Lahz;->F:Landroid/widget/Button;

    const v4, 0x7f020253

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lahz;->F:Landroid/widget/Button;

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;

    invoke-direct {v4, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Laia;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_31
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lakk;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lakk;->a(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v2

    if-eqz v2, :cond_32

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/snapchat/android/model/StoryGroup;->a(Z)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lapj;

    invoke-direct {v5, v2, v4}, Lapj;-><init>(Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_32
    invoke-virtual {v0}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_33

    const/4 v2, 0x1

    :goto_17
    iget-object v4, v1, Lahz;->G:Landroid/widget/Button;

    if-eqz v2, :cond_34

    const v2, 0x7f02026f

    :goto_18
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lahz;->G:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, Lahz;->G:Landroid/widget/Button;

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;

    invoke-direct {v4, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Laia;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$20;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$20;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Laia;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v1, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_33
    const/4 v2, 0x0

    goto :goto_17

    :cond_34
    const v2, 0x7f020270

    goto :goto_18

    .line 329
    :cond_35
    instance-of v1, v0, Lagl;

    if-eqz v1, :cond_36

    .line 330
    check-cast v0, Lagl;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahz;

    iget-object v2, v1, Lahz;->F:Landroid/widget/Button;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lagl;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lagl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lahz;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lahz;->F:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_14

    .line 331
    :cond_36
    instance-of v1, v0, Lakc;

    if-eqz v1, :cond_39

    .line 332
    check-cast v0, Lakc;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahz;

    invoke-virtual {v0}, Lakc;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lakp;

    invoke-static {v3, v2}, Lauk;->a(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v2

    iget-boolean v3, v2, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lahz;->b(I)V

    iget-object v3, v1, Lahz;->F:Landroid/widget/Button;

    const v4, 0x7f020254

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, v1, Lahz;->F:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v1, Lahz;->F:Landroid/widget/Button;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;

    invoke-direct {v3, p0, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_37
    invoke-virtual {v0}, Lakc;->s()I

    move-result v1

    if-nez v1, :cond_38

    iget-boolean v1, v2, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v1, :cond_d

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$5;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$5;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lakc;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_38
    new-instance v1, Lapj;

    invoke-direct {v1, v0}, Lapj;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    .line 333
    :cond_39
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_d

    .line 334
    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahz;

    iget-object v2, v1, Lahz;->E:Lbhr;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$7;

    invoke-direct {v3, p0, v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$7;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lahz;)V

    invoke-virtual {v2, v3}, Lbhr;->a(Lbhr$a;)V

    iget-object v2, v1, Lahz;->F:Landroid/widget/Button;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$8;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$8;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, v1, Lahz;->P:I

    iget v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->q:I

    if-ne v2, v3, :cond_3c

    iget-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v2, :cond_3a

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lahz;->c(Z)V

    :cond_3a
    :goto_19
    iget-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v2, :cond_3d

    iget-object v2, v1, Lahz;->F:Landroid/widget/Button;

    const v3, 0x7f020254

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lahz;->F:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lahz;->b(I)V

    :cond_3b
    :goto_1a
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->o()Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Lapj;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Lakk;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    invoke-direct {v1, v0}, Lapj;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_3c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lahz;->c(Z)V

    goto :goto_19

    :cond_3d
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->m()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->o()Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:Ljava/util/HashSet;

    invoke-virtual {v1, v0, v2, v3}, Lahz;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Ljava/util/Set;)V

    invoke-virtual {v1}, Lahz;->v()V

    goto :goto_1a

    :cond_3e
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:Ljava/util/HashSet;

    invoke-virtual {v1, v0, v2, v3}, Lahz;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Ljava/util/Set;)V

    goto :goto_1a

    :cond_3f
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->m()Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_40
    move v3, v2

    goto/16 :goto_11

    :cond_41
    move v1, v2

    goto/16 :goto_e

    :cond_42
    move v1, v5

    goto/16 :goto_6
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->a()I

    move-result v0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->r:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    .line 1135
    invoke-virtual {v0}, Lapm;->g()V

    goto :goto_0

    .line 1137
    :cond_0
    invoke-super {p0}, Laqb;->notifyDataSetChanged()V

    .line 1138
    return-void
.end method
