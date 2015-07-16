.class public final Lanl;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanl$1;,
        Lanl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lui$b",
        "<",
        "Lblq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/snapchat/android/model/SuggestedFriendAction;
    .annotation build Lchd;
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Z

.field protected d:Lakp;

.field protected final e:Lcom/squareup/otto/Bus;

.field protected final f:Lakr;

.field protected final g:Lawa;

.field private k:I

.field private l:Lcom/snapchat/android/analytics/ProfileEventAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v2

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-static {}, Lawa;->a()Lawa;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lanl;-><init>(Landroid/content/Intent;Lakr;Lcom/squareup/otto/Bus;Lawa;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lakr;Lcom/squareup/otto/Bus;Lawa;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 70
    iput-object p3, p0, Lanl;->e:Lcom/squareup/otto/Bus;

    .line 71
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/SuggestedFriendAction;

    move-result-object v0

    iput-object v0, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    .line 72
    const-string v0, "friend_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanl;->b:Ljava/lang/String;

    .line 73
    const-string v0, "friend_index"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lanl;->k:I

    .line 74
    iput-object p2, p0, Lanl;->f:Lakr;

    .line 75
    iput-object p4, p0, Lanl;->g:Lawa;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanl;->c:Z

    .line 77
    iput-object p5, p0, Lanl;->l:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 79
    const-class v0, Lblq;

    invoke-virtual {p0, v0, p0}, Lanl;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {p1}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    iput-object v0, p0, Lanl;->d:Lakp;

    .line 85
    iget-object v0, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    sget-object v1, Lcom/snapchat/android/model/SuggestedFriendAction;->LIST:Lcom/snapchat/android/model/SuggestedFriendAction;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lanl;->d:Lakp;

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v1

    invoke-static {v0, v1}, Lawa;->a(Lakp;Lakr;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 108
    new-instance v1, Lanl$a;

    invoke-direct {v1, p0}, Lanl$a;-><init>(Lanl;)V

    .line 109
    iget-object v0, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanl$a;->a(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lanl$1;->a:[I

    iget-object v2, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/SuggestedFriendAction;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected action : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Send out the request for suggested friend with action : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {v1}, Lanl;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    return-object v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanl$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/SuggestedFriendAction;->UPDATE:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanl$a;->a(Ljava/lang/String;)V

    .line 116
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanl$a;->a(Ljava/lang/Boolean;)V

    .line 118
    iget-object v0, p0, Lanl;->d:Lakp;

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-static {v0, v2}, Lawa;->a(Lakp;Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 122
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v1, v2}, Lanl$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 130
    :pswitch_2
    sget-object v0, Lcom/snapchat/android/model/SuggestedFriendAction;->UPDATE:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanl$a;->a(Ljava/lang/String;)V

    .line 131
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanl$a;->b(Ljava/lang/Boolean;)V

    .line 132
    iget-object v0, p0, Lanl;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lanl$a;->b(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lanl;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanl$a;->a(Ljava/lang/Integer;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "/bq/suggest_friend"

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    check-cast p1, Lblq;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lanl;->c:Z

    iget-boolean v0, p0, Lanl;->c:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Suggested friend onSuccess - action "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lanl$1;->a:[I

    iget-object v2, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/SuggestedFriendAction;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lanl;->d:Lakp;

    invoke-static {p1, v0}, Lawa;->a(Lblq;Lakp;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lanl;->d:Lakp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanl;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lanl;->d:Lakp;

    iget-object v2, p0, Lanl;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lakp;->e(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    iget v2, p0, Lanl;->k:I

    iget-object v4, p0, Lanl;->b:Ljava/lang/String;

    iget-boolean v5, p0, Lanl;->c:Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$SuggestedFriendAction:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProfileSuggestedFriendActionEvents  - Unknown friendAction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v6, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_SUGGESTED_FRIENDS_REQUEST_HIDDEN:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_CELL_INDEX:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_3
    invoke-static {v0, v5, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p2}, Lus;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    sget-object v1, Lcom/snapchat/android/model/SuggestedFriendAction;->HIDE:Lcom/snapchat/android/model/SuggestedFriendAction;

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v2, 0x7f0c00d9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lanl;->e:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
