.class public final Lamo;
.super Lamd;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamo$1;,
        Lamo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamd;",
        "Lts$b",
        "<",
        "Lbkp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/snapchat/android/model/SuggestedFriendAction;
    .annotation build Lcgc;
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Z

.field protected d:Lajv;

.field protected final e:Lcom/squareup/otto/Bus;

.field protected final f:Lajx;

.field protected final g:Lavc;

.field private k:I

.field private l:Lcom/snapchat/android/analytics/ProfileEventAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v2

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-static {}, Lavc;->a()Lavc;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lamo;-><init>(Landroid/content/Intent;Lajx;Lcom/squareup/otto/Bus;Lavc;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lajx;Lcom/squareup/otto/Bus;Lavc;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 70
    iput-object p3, p0, Lamo;->e:Lcom/squareup/otto/Bus;

    .line 71
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/SuggestedFriendAction;

    move-result-object v0

    iput-object v0, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    .line 72
    const-string v0, "friend_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamo;->b:Ljava/lang/String;

    .line 73
    const-string v0, "friend_index"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lamo;->k:I

    .line 74
    iput-object p2, p0, Lamo;->f:Lajx;

    .line 75
    iput-object p4, p0, Lamo;->g:Lavc;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamo;->c:Z

    .line 77
    iput-object p5, p0, Lamo;->l:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 79
    const-class v0, Lbkp;

    invoke-virtual {p0, v0, p0}, Lamo;->a(Ljava/lang/Class;Lts$b;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {p1}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v0

    iput-object v0, p0, Lamo;->d:Lajv;

    .line 85
    iget-object v0, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    sget-object v1, Lcom/snapchat/android/model/SuggestedFriendAction;->LIST:Lcom/snapchat/android/model/SuggestedFriendAction;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lamo;->d:Lajv;

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v1

    invoke-static {v0, v1}, Lavc;->a(Lajv;Lajx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lamd;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    check-cast p1, Lbkp;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lamo;->c:Z

    iget-boolean v0, p0, Lamo;->c:Z

    if-eqz v0, :cond_5

    const-string v0, "SuggestedFriendActionOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Suggested friend onSuccess - action "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lamo$1;->a:[I

    iget-object v4, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/SuggestedFriendAction;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lamo;->d:Lajv;

    invoke-static {p1, v0}, Lavc;->a(Lbkp;Lajv;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lamo;->d:Lajv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lamo;->d:Lajv;

    iget-object v4, p0, Lamo;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lajv;->e(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    iget v4, p0, Lamo;->k:I

    iget-object v5, p0, Lamo;->b:Ljava/lang/String;

    iget-boolean v6, p0, Lamo;->c:Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v0, "ProfileEventAnalytics"

    const-string v1, "invalid event params"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object v7, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$SuggestedFriendAction:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    const-string v1, "ProfileEventAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onProfileSuggestedFriendActionEvents  - Unknown friendAction "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_SUGGESTED_FRIENDS_REQUEST_HIDDEN:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const/4 v2, -0x1

    if-eq v4, v2, :cond_4

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_CELL_INDEX:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_4
    invoke-static {v0, v6, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_1

    :cond_5
    const-string v0, "SuggestedFriendActionOperation"

    const-string v4, "Request failed ! Action : %s, reason : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p2}, Luc;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    sget-object v1, Lcom/snapchat/android/model/SuggestedFriendAction;->HIDE:Lcom/snapchat/android/model/SuggestedFriendAction;

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v2, 0x7f0c00d9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lamo;->e:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v3

    goto :goto_2

    nop

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

.method public final b()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 108
    new-instance v1, Lamo$a;

    invoke-direct {v1, p0}, Lamo$a;-><init>(Lamo;)V

    .line 109
    iget-object v0, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lamo$a;->a(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lamo$1;->a:[I

    iget-object v2, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/SuggestedFriendAction;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 136
    const-string v0, "SuggestedFriendActionOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected action : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :goto_0
    const-string v0, "SuggestedFriendActionOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send out the request for suggested friend with action : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {v1}, Lamo;->a(Lbgy;)Lbgy;

    move-result-object v0

    return-object v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lamo$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/SuggestedFriendAction;->UPDATE:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lamo$a;->a(Ljava/lang/String;)V

    .line 116
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lamo$a;->a(Ljava/lang/Boolean;)V

    .line 118
    iget-object v0, p0, Lamo;->d:Lajv;

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-static {v0, v2}, Lavc;->a(Lajv;Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)Ljava/util/ArrayList;

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

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v1, v2}, Lamo$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 130
    :pswitch_2
    sget-object v0, Lcom/snapchat/android/model/SuggestedFriendAction;->UPDATE:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SuggestedFriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lamo$a;->a(Ljava/lang/String;)V

    .line 131
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lamo$a;->b(Ljava/lang/Boolean;)V

    .line 132
    iget-object v0, p0, Lamo;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lamo$a;->b(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lamo;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lamo$a;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "/bq/suggest_friend"

    return-object v0
.end method
