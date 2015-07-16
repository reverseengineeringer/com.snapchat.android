.class public Lamz;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lakp$b;
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lakp$b;",
        "Lui$b",
        "<",
        "Lbhx;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lbjx;

.field protected final b:Lakr;

.field protected final c:Ljava/lang/String;

.field protected final d:Laph;

.field protected final e:Z

.field protected final f:Z

.field final g:Ljava/util/UUID;

.field private final k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lpm;

.field private final m:Laxn;

.field private final n:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

.field private final o:Landroid/util/Pair;
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

.field private final p:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 80
    sget-object v2, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lpm;->a()Lpm;

    move-result-object v3

    sget-object v4, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v5

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v6

    invoke-static {}, Laph;->a()Laph;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lamz;-><init>(Landroid/content/Intent;Ljavax/inject/Provider;Lpm;Laxn;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;Lakr;Laph;)V

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/content/Intent;Ljavax/inject/Provider;Lpm;Laxn;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;Lakr;Laph;)V
    .locals 2
    .param p2    # Ljavax/inject/Provider;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lpm;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/util/profileimages/ProfileImageUtils;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Lakr;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Laph;
        .annotation build Lchc;
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
            "Lakp;",
            ">;",
            "Lpm;",
            "Laxn;",
            "Lcom/snapchat/android/util/profileimages/ProfileImageUtils;",
            "Lakr;",
            "Laph;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 90
    iput-object p2, p0, Lamz;->k:Ljavax/inject/Provider;

    .line 91
    iput-object p3, p0, Lamz;->l:Lpm;

    .line 92
    iput-object p4, p0, Lamz;->m:Laxn;

    .line 93
    iput-object p5, p0, Lamz;->n:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 94
    iput-object p6, p0, Lamz;->b:Lakr;

    .line 95
    iput-object p7, p0, Lamz;->d:Laph;

    .line 96
    const-string v0, "FromNotification"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamz;->e:Z

    .line 97
    const-string v0, "CalledOnLoginOrOnResume"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamz;->f:Z

    .line 98
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzi;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lamz;->o:Landroid/util/Pair;

    .line 99
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lamz;->g:Ljava/util/UUID;

    .line 100
    iget-object v0, p0, Land;->i:Landroid/content/Intent;

    invoke-static {v0}, Laph;->b(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lamz;->p:I

    .line 101
    const-class v0, Lbhx;

    invoke-virtual {p0, v0, p0}, Lamz;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 102
    invoke-virtual {p0}, Lamz;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamz;->c:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public D_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lamz;->a:Lbjx;

    if-eqz v0, :cond_0

    sget-object v0, Lbjx$a;->NOT_EQUAL:Lbjx$a;

    iget-object v1, p0, Lamz;->a:Lbjx;

    invoke-virtual {v1}, Lbjx;->e()Lbjx$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lamz;->c:Ljava/lang/String;

    invoke-static {}, Lakr;->aA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lamz;->a:Lbjx;

    invoke-virtual {v0}, Lbjx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->l(Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lamz;->d:Laph;

    invoke-virtual {v0, v2, v2}, Laph;->a(ZZ)I

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lamz;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    iput-object v0, p0, Lamz;->h:Lakp;

    .line 112
    iget-object v0, p0, Lamz;->h:Lakp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamz;->h:Lakp;

    iget-boolean v0, v0, Lakp;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected final a(Lbhx;)V
    .locals 10
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-static {}, Lbhp;->b()V

    .line 169
    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 254
    :cond_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p1}, Lbhx;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {p1}, Lbhx;->d()Lbkq;

    move-result-object v0

    invoke-virtual {v0}, Lbkq;->T()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lamz;->m:Laxn;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(JLaxn;)V

    .line 177
    invoke-static {v4}, Lakr;->e(Z)V

    .line 179
    :cond_2
    invoke-virtual {p1}, Lbhx;->d()Lbkq;

    move-result-object v0

    invoke-virtual {v0}, Lbkq;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lakr;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lamz;->m:Laxn;

    const-string v2, "snaptag"

    invoke-virtual {v1, v2}, Laxn;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lakr;->p(Ljava/lang/String;)V

    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Laph;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 183
    :cond_3
    invoke-static {}, Lakr;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lamz;->m:Laxn;

    invoke-static {v0}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Laxn;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 184
    iget-object v0, p0, Lamz;->d:Laph;

    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->MEDIUM:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    invoke-virtual {v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Laph;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_4
    invoke-virtual {p1}, Lbhx;->a()Lbjx;

    move-result-object v0

    iput-object v0, p0, Lamz;->a:Lbjx;

    .line 189
    iget-object v0, p0, Lamz;->a:Lbjx;

    if-eqz v0, :cond_c

    sget-object v0, Lbjx$a;->EQUAL:Lbjx$a;

    iget-object v1, p0, Lamz;->a:Lbjx;

    invoke-virtual {v1}, Lbjx;->e()Lbjx$a;

    move-result-object v1

    if-ne v0, v1, :cond_c

    move v2, v3

    .line 194
    :goto_0
    if-eqz v2, :cond_7

    .line 199
    invoke-virtual {p1}, Lbhx;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lamz;->h:Lakp;

    invoke-virtual {p1}, Lbhx;->b()Lbjl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakp;->a(Lbjl;)V

    .line 203
    :cond_5
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0}, Lakk;->h()V

    .line 204
    iget-object v0, p0, Lamz;->h:Lakp;

    invoke-virtual {v0}, Lakp;->u()V

    .line 205
    new-instance v0, Lakp$a;

    invoke-direct {v0, v4, v4, v4, v4}, Lakp$a;-><init>(ZZZZ)V

    move-object v1, v0

    .line 216
    :goto_1
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzi;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "onSuccess - # of unviewed chats="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " # of unviewed snaps="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " isPrunedResponse="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    iget-boolean v2, p0, Lamz;->e:Z

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lamz;->o:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v6, v0

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lamz;->o:Landroid/util/Pair;

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

    .line 227
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    iget-object v5, p0, Lamz;->g:Ljava/util/UUID;

    sget-object v6, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NONE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-direct {v2, v5, v6}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;-><init>(Ljava/util/UUID;Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbdw;

    invoke-direct {v2}, Lbdw;-><init>()V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 231
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbfn;

    invoke-direct {v2, v3}, Lbfn;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 232
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbfg;

    iget-object v5, p0, Lamz;->g:Ljava/util/UUID;

    iget-boolean v6, p0, Lamz;->f:Z

    invoke-direct {v2, v5, v3, v6, v1}, Lbfg;-><init>(Ljava/util/UUID;ZZLakp$a;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lakr;->aF()Z

    move-result v0

    .line 236
    if-nez v0, :cond_6

    .line 237
    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Lbhx;->d()Lbkq;

    move-result-object v1

    .line 239
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 240
    invoke-virtual {v1}, Lbkq;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lbkq;->Q()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    if-nez v3, :cond_9

    .line 244
    :cond_6
    :goto_2
    iget-object v0, p0, Lamz;->h:Lakp;

    invoke-virtual {v0, p0}, Lakp;->a(Lakp$b;)V

    .line 245
    invoke-static {v4}, Lakr;->o(Z)V

    .line 247
    iget-object v0, p0, Lamz;->h:Lakp;

    iget-object v0, v0, Lakp;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamz;->h:Lakp;

    iget-object v0, v0, Lakp;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-virtual {v0}, Laph;->d()I

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lamz;->h:Lakp;

    iget-object v1, v1, Lakp;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    .line 251
    invoke-virtual {v0}, Laka;->x()V

    goto :goto_3

    .line 209
    :cond_7
    iget-object v0, p0, Lamz;->a:Lbjx;

    if-eqz v0, :cond_8

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response checksum compare results: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lamz;->a:Lbjx;

    invoke-virtual {v1}, Lbjx;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_8
    invoke-virtual {p0, p1}, Lamz;->b(Lbhx;)Lakp$a;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 240
    :cond_9
    new-instance v1, Lauc;

    invoke-direct {v1, v0}, Lauc;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lbhp;->b()V

    iget-object v0, v1, Lauc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Laud;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "TAB"

    :goto_4
    invoke-virtual {v1}, Lauc;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MBL"

    if-nez v5, :cond_b

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_6

    new-instance v1, Lqd;

    invoke-direct {v1, v2, v0}, Lqd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lqd;->executeSynchronously()Lus;

    goto :goto_2

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

.method protected b(Lbhx;)Lakp$a;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lamz;->h:Lakp;

    iget-boolean v1, p0, Lamz;->f:Z

    invoke-virtual {v0, p1, v1}, Lakp;->a(Lbhx;Z)Lakp$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lakr;->aA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestPayload()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lamz$a;

    invoke-direct {v0, p0}, Lamz$a;-><init>(Lamz;)V

    iget-object v1, p0, Lamz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lamz$a;->a(Ljava/lang/String;)Lbhw;

    move-result-object v0

    iget-object v1, p0, Lamz;->l:Lpm;

    iget-object v1, v1, Lpm;->mResolution:Lavc;

    invoke-virtual {v1}, Lavc;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhw;->a(Ljava/lang/Integer;)Lbhw;

    move-result-object v0

    iget-object v1, p0, Lamz;->l:Lpm;

    iget-object v1, v1, Lpm;->mResolution:Lavc;

    invoke-virtual {v1}, Lavc;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhw;->b(Ljava/lang/Integer;)Lbhw;

    move-result-object v0

    iget-object v1, p0, Lamz;->l:Lpm;

    iget v1, v1, Lpm;->mMaxVideoHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhw;->c(Ljava/lang/Integer;)Lbhw;

    move-result-object v0

    iget-object v1, p0, Lamz;->l:Lpm;

    iget v1, v1, Lpm;->mMaxVideoWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhw;->d(Ljava/lang/Integer;)Lbhw;

    move-result-object v0

    invoke-static {}, Lpq;->a()Lpq;

    move-result-object v1

    invoke-virtual {p0}, Lamz;->l_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhw;->b(Ljava/lang/String;)Lbhw;

    move-result-object v0

    invoke-static {v0}, Lamz;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    return-object v0
.end method

.method protected l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "/loq/all_updates"

    return-object v0
.end method

.method public synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 9

    .prologue
    .line 56
    check-cast p1, Lbhx;

    new-instance v0, Lamz$1;

    invoke-direct {v0, p0, p2, p1}, Lamz$1;-><init>(Lamz;Lus;Lbhx;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v1

    iget-object v2, p0, Lamz;->g:Ljava/util/UUID;

    invoke-virtual {p0}, Lamz;->l_()Ljava/lang/String;

    iget v3, p2, Lus;->mResponseCode:I

    iget-wide v4, p2, Lus;->mResponseBodySize:J

    iget-object v6, p2, Lus;->mNetworkType:Ljava/lang/String;

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
    invoke-virtual {p1}, Lbhx;->a()Lbjx;

    move-result-object v0

    goto :goto_0
.end method
