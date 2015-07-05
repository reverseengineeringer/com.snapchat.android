.class public Lamc;
.super Lamd;
.source "SourceFile"

# interfaces
.implements Lajv$b;
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamd;",
        "Lajv$b;",
        "Lts$b",
        "<",
        "Lbgx;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lbiw;

.field protected final b:Lajx;

.field protected final c:Ljava/lang/String;

.field protected final d:Laol;

.field protected final e:Z

.field protected final f:Z

.field final g:Ljava/util/UUID;

.field private final k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lov;

.field private final m:Lawp;

.field private final n:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 78
    sget-object v2, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lov;->a()Lov;

    move-result-object v3

    sget-object v4, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v5

    invoke-static {}, Laol;->a()Laol;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lamc;-><init>(Landroid/content/Intent;Ljavax/inject/Provider;Lov;Lawp;Lajx;Laol;)V

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/content/Intent;Ljavax/inject/Provider;Lov;Lawp;Lajx;Laol;)V
    .locals 2
    .param p2    # Ljavax/inject/Provider;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lov;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lajx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Laol;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lov;",
            "Lawp;",
            "Lajx;",
            "Laol;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 88
    iput-object p2, p0, Lamc;->k:Ljavax/inject/Provider;

    .line 89
    iput-object p3, p0, Lamc;->l:Lov;

    .line 90
    iput-object p4, p0, Lamc;->m:Lawp;

    .line 91
    iput-object p5, p0, Lamc;->b:Lajx;

    .line 92
    iput-object p6, p0, Lamc;->d:Laol;

    .line 93
    const-string v0, "FromNotification"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamc;->e:Z

    .line 94
    const-string v0, "CalledOnLoginOrOnResume"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamc;->f:Z

    .line 95
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lym;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lamc;->n:Landroid/util/Pair;

    .line 96
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lamc;->g:Ljava/util/UUID;

    .line 97
    iget-object v0, p0, Lamg;->i:Landroid/content/Intent;

    invoke-static {v0}, Laol;->b(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lamc;->o:I

    .line 98
    const-class v0, Lbgx;

    invoke-virtual {p0, v0, p0}, Lamc;->a(Ljava/lang/Class;Lts$b;)V

    .line 99
    invoke-virtual {p0}, Lamc;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamc;->c:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public D_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lamc;->a:Lbiw;

    if-eqz v0, :cond_0

    sget-object v0, Lbiw$a;->NOT_EQUAL:Lbiw$a;

    iget-object v1, p0, Lamc;->a:Lbiw;

    invoke-virtual {v1}, Lbiw;->e()Lbiw$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lamc;->c:Ljava/lang/String;

    invoke-static {}, Lajx;->aB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lamc;->a:Lbiw;

    invoke-virtual {v0}, Lbiw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajx;->l(Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lamc;->d:Laol;

    invoke-virtual {v0, v2, v2}, Laol;->a(ZZ)I

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lamc;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    iput-object v0, p0, Lamc;->h:Lajv;

    .line 109
    iget-object v0, p0, Lamc;->h:Lajv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamc;->h:Lajv;

    iget-boolean v0, v0, Lajv;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-super {p0, p1}, Lamd;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected final a(Lbgx;)V
    .locals 10
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-static {}, Lbgp;->b()V

    .line 166
    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 245
    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p1}, Lbgx;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p1}, Lbgx;->d()Lbjp;

    move-result-object v0

    invoke-virtual {v0}, Lbjp;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lajx;->bf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lamc;->m:Lawp;

    const-string v2, "snaptag"

    invoke-virtual {v1, v2}, Lawp;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lajx;->p(Ljava/lang/String;)V

    invoke-static {}, Laol;->a()Laol;

    move-result-object v1

    invoke-static {}, Lajv;->y()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Laol;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 174
    :cond_2
    invoke-static {}, Lajx;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lamc;->d:Laol;

    invoke-static {}, Lajv;->y()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->MEDIUM:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    invoke-virtual {v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Laol;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_3
    invoke-virtual {p1}, Lbgx;->a()Lbiw;

    move-result-object v0

    iput-object v0, p0, Lamc;->a:Lbiw;

    .line 180
    iget-object v0, p0, Lamc;->a:Lbiw;

    if-eqz v0, :cond_c

    sget-object v0, Lbiw$a;->EQUAL:Lbiw$a;

    iget-object v1, p0, Lamc;->a:Lbiw;

    invoke-virtual {v1}, Lbiw;->e()Lbiw$a;

    move-result-object v1

    if-ne v0, v1, :cond_c

    move v2, v3

    .line 185
    :goto_0
    if-eqz v2, :cond_7

    .line 190
    invoke-virtual {p1}, Lbgx;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lamc;->h:Lajv;

    invoke-virtual {p1}, Lbgx;->b()Lbil;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajv;->a(Lbil;)V

    .line 194
    :cond_4
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->h()V

    .line 195
    iget-object v0, p0, Lamc;->h:Lajv;

    invoke-virtual {v0}, Lajv;->u()V

    .line 196
    const-string v0, "AllUpdatesOperation"

    const-string v1, "No updates from server."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    new-instance v0, Lajv$a;

    invoke-direct {v0, v4, v4, v4, v4}, Lajv$a;-><init>(ZZZZ)V

    move-object v1, v0

    .line 207
    :goto_1
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lym;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 209
    const-string v0, "AllUpdatesOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onSuccess - # of unviewed chats="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " # of unviewed snaps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isPrunedResponse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-boolean v2, p0, Lamc;->e:Z

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lamc;->n:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v6, v0

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lamc;->n:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v7, v0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v6, v7, v8, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZIIII)V

    .line 218
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    iget-object v5, p0, Lamc;->g:Ljava/util/UUID;

    sget-object v6, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NONE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-direct {v2, v5, v6}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;-><init>(Ljava/util/UUID;Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 221
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbcw;

    invoke-direct {v2}, Lbcw;-><init>()V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbeo;

    invoke-direct {v2, v3}, Lbeo;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 223
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbeh;

    iget-object v5, p0, Lamc;->g:Ljava/util/UUID;

    iget-boolean v6, p0, Lamc;->f:Z

    invoke-direct {v2, v5, v3, v6, v1}, Lbeh;-><init>(Ljava/util/UUID;ZZLajv$a;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 226
    invoke-static {}, Lajx;->aG()Z

    move-result v0

    .line 227
    if-nez v0, :cond_6

    .line 228
    invoke-static {}, Lajv;->y()Landroid/content/Context;

    move-result-object v0

    .line 229
    invoke-virtual {p1}, Lbgx;->d()Lbjp;

    move-result-object v1

    .line 230
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 231
    invoke-virtual {v1}, Lbjp;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lbjp;->Q()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    if-nez v3, :cond_9

    :cond_5
    const-string v0, "AllUpdatesOperation"

    const-string v1, "Third party demographics tracking url or app ID was null."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_6
    :goto_2
    iget-object v0, p0, Lamc;->h:Lajv;

    invoke-virtual {v0, p0}, Lajv;->a(Lajv$b;)V

    .line 236
    invoke-static {v4}, Lajx;->p(Z)V

    .line 238
    iget-object v0, p0, Lamc;->h:Lajv;

    iget-object v0, v0, Lajv;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamc;->h:Lajv;

    iget-object v0, v0, Lajv;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-virtual {v0}, Laol;->d()I

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lamc;->h:Lajv;

    iget-object v1, v1, Lajv;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laje;

    .line 242
    invoke-virtual {v0}, Laje;->w()V

    goto :goto_3

    .line 200
    :cond_7
    iget-object v0, p0, Lamc;->a:Lbiw;

    if-eqz v0, :cond_8

    .line 201
    const-string v0, "AllUpdatesOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Response checksum compare results: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lamc;->a:Lbiw;

    invoke-virtual {v5}, Lbiw;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_8
    invoke-virtual {p0, p1}, Lamc;->b(Lbgx;)Lajv$a;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 231
    :cond_9
    new-instance v1, Latd;

    invoke-direct {v1, v0}, Latd;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lbgp;->b()V

    iget-object v0, v1, Latd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Late;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "TAB"

    :goto_4
    invoke-virtual {v1}, Latd;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MBL"

    if-nez v5, :cond_b

    const-string v0, "DemographicsTrackingUtils"

    const-string v1, "Device id was null, not sending request to third party demographics tracking service."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_6

    new-instance v1, Lpm;

    invoke-direct {v1, v2, v0}, Lpm;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lpm;->i()Luc;

    goto/16 :goto_2

    :cond_a
    const-string v0, "PHN"

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v7, "c8"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "devgrp,"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "c9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "devid,"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "c10"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "plt,"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "c13"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "asid,"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_5

    :cond_c
    move v2, v4

    goto/16 :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 9

    .prologue
    .line 55
    check-cast p1, Lbgx;

    new-instance v0, Lamc$1;

    invoke-direct {v0, p0, p2, p1}, Lamc$1;-><init>(Lamc;Luc;Lbgx;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v1

    iget-object v2, p0, Lamc;->g:Ljava/util/UUID;

    invoke-virtual {p0}, Lamc;->e()Ljava/lang/String;

    iget v3, p2, Luc;->mResponseCode:I

    iget-wide v4, p2, Luc;->mResponseBodySize:J

    iget-object v6, p2, Luc;->mNetworkType:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "status_code"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "reachability"

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "return_size_bytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v3, "server_info"

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, v1, Lcom/snapchat/android/analytics/NetworkAnalytics;->mRequestTaskResponseMap:Ljava/util/Map;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {p1}, Lbgx;->a()Lbiw;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Lbgx;)Lajv$a;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lamc;->h:Lajv;

    iget-boolean v1, p0, Lamc;->f:Z

    invoke-virtual {v0, p1, v1}, Lajv;->a(Lbgx;Z)Lajv$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lamc$a;

    invoke-direct {v0, p0}, Lamc$a;-><init>(Lamc;)V

    iget-object v1, p0, Lamc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lamc$a;->a(Ljava/lang/String;)Lbgw;

    move-result-object v0

    iget-object v1, p0, Lamc;->l:Lov;

    iget-object v1, v1, Lov;->mResolution:Laue;

    invoke-virtual {v1}, Laue;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbgw;->a(Ljava/lang/Integer;)Lbgw;

    move-result-object v0

    iget-object v1, p0, Lamc;->l:Lov;

    iget-object v1, v1, Lov;->mResolution:Laue;

    invoke-virtual {v1}, Laue;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbgw;->b(Ljava/lang/Integer;)Lbgw;

    move-result-object v0

    iget-object v1, p0, Lamc;->l:Lov;

    iget v1, v1, Lov;->mMaxVideoHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbgw;->c(Ljava/lang/Integer;)Lbgw;

    move-result-object v0

    iget-object v1, p0, Lamc;->l:Lov;

    iget v1, v1, Lov;->mMaxVideoWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbgw;->d(Ljava/lang/Integer;)Lbgw;

    move-result-object v0

    invoke-static {}, Loz;->a()Loz;

    move-result-object v1

    invoke-virtual {p0}, Lamc;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbgw;->b(Ljava/lang/String;)Lbgw;

    move-result-object v0

    invoke-static {v0}, Lamc;->a(Lbgy;)Lbgy;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "/loq/all_updates"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lajx;->aB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
