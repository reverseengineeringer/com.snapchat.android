.class public Lnet/hockeyapp/android/FeedbackActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/ScrollView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/ListView;

.field private r:Lbxd;

.field private s:Landroid/os/Handler;

.field private t:Lbxc;

.field private u:Landroid/os/Handler;

.field private v:Ljava/lang/String;

.field private w:Lbwr;

.field private x:Lbwp;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbwu;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->a:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->c:I

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:I

    return-void
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Lbwp;)Lbwp;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->x:Lbwp;

    return-object p1
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;)Lbwr;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Lbwr;

    return-object v0
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Lbwr;)Lbwr;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Lbwr;

    return-object p1
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->y:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 506
    sget-object v0, Lbxj$a;->a:Lbxj;

    invoke-virtual {v0, p0}, Lbxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->B:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->z:Z

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V

    .line 516
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V

    .line 514
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Ljava/lang/String;

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->B:Ljava/lang/String;

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/FeedbackActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0
.end method

.method private a(Landroid/widget/EditText;I)V
    .locals 1

    .prologue
    .line 743
    invoke-static {p2}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 744
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V

    .line 745
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 759
    new-instance v0, Lbxd;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lbxd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Lbxd;

    .line 760
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Lbxd;

    invoke-static {v0}, Lbxe;->a(Landroid/os/AsyncTask;)V

    .line 761
    return-void
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Lbwv;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$4;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/FeedbackActivity$4;-><init>(Lnet/hockeyapp/android/FeedbackActivity;Lbwv;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lbxc;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->u:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1, p2}, Lbxc;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->t:Lbxc;

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->t:Lbxc;

    invoke-static {v0}, Lbxe;->a(Landroid/os/AsyncTask;)V

    return-void
.end method

.method static synthetic b(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$5;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$5;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lnet/hockeyapp/android/FeedbackActivity;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->z:Z

    return v0
.end method

.method static synthetic e(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lnet/hockeyapp/android/FeedbackActivity;)Lbwp;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->x:Lbwp;

    return-object v0
.end method

.method static synthetic h(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->q:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method protected final b(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 283
    const v0, 0x20017

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/widget/ScrollView;

    .line 284
    const v0, 0x20015

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->p:Landroid/widget/LinearLayout;

    .line 285
    const v0, 0x20016

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->q:Landroid/widget/ListView;

    .line 287
    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 292
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/TextView;

    .line 294
    const v0, 0x20010

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->m:Landroid/widget/Button;

    .line 295
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v0, 0x20011

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Landroid/widget/Button;

    .line 298
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 305
    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    .line 306
    const/16 v0, 0x2004

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/EditText;

    .line 307
    const/16 v0, 0x2006

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/EditText;

    .line 308
    const/16 v0, 0x2008

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/EditText;

    .line 311
    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->A:Z

    if-nez v0, :cond_2

    .line 312
    sget-object v0, Lbxj$a;->a:Lbxj;

    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/content/Context;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 313
    :goto_1
    if-eqz v0, :cond_6

    .line 315
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt v1, v7, :cond_1

    .line 317
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/EditText;

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_5

    .line 321
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/EditText;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 337
    :cond_1
    :goto_2
    iput-boolean v6, p0, Lnet/hockeyapp/android/FeedbackActivity;->A:Z

    .line 341
    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    sget-object v0, Lbxj$a;->a:Lbxj;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 346
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 354
    :goto_3
    const/16 v0, 0x2011

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 355
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 358
    const/16 v0, 0x2010

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->l:Landroid/widget/Button;

    .line 359
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->l:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 362
    const/16 v0, 0x2009

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/Button;

    .line 363
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 312
    :cond_3
    const-string v3, "net.hockeyapp.android.prefs_name_email"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v0, Lbxj;->a:Landroid/content/SharedPreferences;

    iget-object v2, v0, Lbxj;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lbxj;->a:Landroid/content/SharedPreferences;

    const-string v2, "net.hockeyapp.android.prefs_key_name_email"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 325
    :cond_5
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 331
    :cond_6
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 350
    :cond_7
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0x2011

    const/4 v1, 0x3

    .line 371
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 377
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 381
    new-instance v2, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {v2, p0, v0, v1}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 384
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 386
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_0

    .line 391
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/hockeyapp/android/PaintActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    const-string v2, "imageUri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 393
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 395
    :cond_3
    if-ne p1, v1, :cond_0

    .line 402
    const-string v0, "imageUri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 406
    new-instance v2, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {v2, p0, v1, v0}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    .prologue
    const/16 v13, 0x2011

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 155
    :sswitch_0
    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    sget-object v0, Lbxj$a;->a:Lbxj;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/EditText;

    const/16 v1, 0x40e

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Landroid/widget/EditText;I)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    const/16 v1, 0x411

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Landroid/widget/EditText;I)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/EditText;

    const/16 v1, 0x412

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Landroid/widget/EditText;I)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/EditText;

    const/16 v1, 0x413

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Landroid/widget/EditText;I)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v3}, Lbxl;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/EditText;

    const/16 v1, 0x40f

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Landroid/widget/EditText;I)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lbxj$a;->a:Lbxj;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/content/Context;

    if-eqz v1, :cond_7

    const-string v6, "net.hockeyapp.android.prefs_name_email"

    invoke-virtual {v1, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lbxj;->a:Landroid/content/SharedPreferences;

    iget-object v1, v0, Lbxj;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lbxj;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Lbxj;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_8

    :cond_6
    iget-object v1, v0, Lbxj;->b:Landroid/content/SharedPreferences$Editor;

    const-string v6, "net.hockeyapp.android.prefs_key_name_email"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    iget-object v0, v0, Lbxj;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lbxj;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_7
    invoke-virtual {p0, v13}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentListView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Ljava/lang/String;

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Landroid/os/Handler;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/FeedbackActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lbxj;->b:Landroid/content/SharedPreferences$Editor;

    const-string v6, "net.hockeyapp.android.prefs_key_name_email"

    const-string v8, "%s|%s|%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v9

    aput-object v3, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 159
    :sswitch_1
    invoke-virtual {p0, v13}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 160
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v0, v12, :cond_9

    .line 161
    const-string v0, "Only 3 attachments allowed."

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 163
    :cond_9
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->openContextMenu(Landroid/view/View;)V

    goto/16 :goto_0

    .line 168
    :sswitch_2
    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V

    .line 169
    iput-boolean v11, p0, Lnet/hockeyapp/android/FeedbackActivity;->z:Z

    goto/16 :goto_0

    .line 173
    :sswitch_3
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Ljava/lang/String;

    sget-object v0, Lbxj$a;->a:Lbxj;

    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lbxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Landroid/os/Handler;

    move-object v0, p0

    move-object v2, v10

    move-object v3, v10

    move-object v4, v10

    move-object v5, v10

    move-object v6, v10

    move v9, v11

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/FeedbackActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto/16 :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x2009 -> :sswitch_0
        0x2010 -> :sswitch_1
        0x20010 -> :sswitch_2
        0x20011 -> :sswitch_3
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 189
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Select File"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Select Picture"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    new-instance v0, Lnet/hockeyapp/android/views/FeedbackView;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/FeedbackView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->setContentView(Landroid/view/View;)V

    .line 207
    const/16 v0, 0x40b

    invoke-static {v0}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    iput-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/content/Context;

    .line 210
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Ljava/lang/String;

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    .line 216
    const-string v0, "feedbackViewInitialized"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->A:Z

    .line 217
    const-string v0, "inSendFeedback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->z:Z

    .line 225
    :goto_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 226
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 228
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$2;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$2;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Landroid/os/Handler;

    .line 229
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$3;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$3;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->u:Landroid/os/Handler;

    .line 230
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->a()V

    .line 231
    return-void

    .line 220
    :cond_1
    iput-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->z:Z

    .line 221
    iput-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->A:Z

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 240
    const/4 v0, 0x2

    const-string v1, "Attach File"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 241
    const/4 v0, 0x1

    const-string v1, "Attach Picture"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 242
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_0

    .line 429
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 416
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "An error has occured"

    .line 417
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 418
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Error"

    .line 419
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 420
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lnet/hockeyapp/android/FeedbackActivity$1;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/FeedbackActivity$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 247
    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->z:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->z:Z

    .line 249
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->a()V

    .line 254
    :goto_0
    const/4 v0, 0x1

    .line 257
    :goto_1
    return v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->finish()V

    goto :goto_0

    .line 257
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 434
    packed-switch p1, :pswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 436
    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    .line 437
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Lbwr;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Lbwr;

    iget-object v0, v0, Lbwr;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :cond_0
    const/16 v0, 0x410

    invoke-static {v0}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 454
    if-eqz p1, :cond_1

    .line 455
    const/16 v0, 0x2011

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 456
    const-string v1, "attachments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 458
    new-instance v3, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {v3, p0, v0, v1}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 461
    :cond_0
    const-string v0, "feedbackViewInitialized"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->A:Z

    .line 464
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 465
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Lbxd;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Lbxd;

    iput-object v1, v0, Lbxd;->a:Landroid/content/Context;

    iput-object v1, v0, Lbxd;->b:Landroid/app/ProgressDialog;

    .line 273
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Lbxd;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 472
    const/16 v0, 0x2011

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentListView;

    .line 474
    const-string v1, "attachments"

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentListView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 475
    const-string v0, "feedbackViewInitialized"

    iget-boolean v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    const-string v0, "inSendFeedback"

    iget-boolean v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 479
    return-void
.end method
