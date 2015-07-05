.class public final Lasn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lasn;

.field private final c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private final d:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/snapchat/android/model/Friend;


# direct methods
.method public constructor <init>(Lasn;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lasn$a;->b:Lasn;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lasn$a;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 94
    iput-object p3, p0, Lasn$a;->d:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 95
    iput-object p4, p0, Lasn$a;->e:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lasn$a;->f:Lcom/snapchat/android/model/Friend;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lasn$a;->a:I

    .line 98
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-object v0, p0, Lasn$a;->b:Lasn;

    iget-object v0, v0, Lasn;->S:Lafa;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lasn$a;->b:Lasn;

    iget-object v0, v0, Lasn;->S:Lafa;

    invoke-virtual {v0}, Lafa;->c()Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    iget-object v1, p0, Lasn$a;->b:Lasn;

    iget-object v1, v1, Lasn;->S:Lafa;

    iget-boolean v1, v1, Lafa;->j:Z

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lasn$a;->b:Lasn;

    iget-object v1, v1, Lasn;->S:Lafa;

    invoke-virtual {v1}, Lafa;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lasn$a;->b:Lasn;

    iget-object v3, v3, Lasn;->S:Lafa;

    invoke-virtual {v3}, Lafa;->b()I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;II)V

    .line 112
    iget-object v0, p0, Lasn$a;->b:Lasn;

    iget-object v0, v0, Lasn;->S:Lafa;

    iput-boolean v2, v0, Lafa;->j:Z

    .line 119
    :cond_0
    iget-object v0, p0, Lasn$a;->b:Lasn;

    iget-object v0, v0, Lasn;->T:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    .line 122
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lasn$a;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h(Ljava/lang/String;)V

    .line 133
    :cond_1
    :goto_0
    iget-object v3, p0, Lasn$a;->b:Lasn;

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3, v2, v1}, Lasn;->a(ZZ)V

    .line 134
    new-instance v1, Lpp;

    iget-object v2, p0, Lasn$a;->f:Lcom/snapchat/android/model/Friend;

    invoke-direct {v1, v2, v0}, Lpp;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    iget-object v2, p0, Lasn$a;->d:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iput-object v2, v1, Lpp;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v2, p0, Lasn$a;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v2, v1, Lpp;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v2, p0, Lasn$a;->b:Lasn;

    iput-object v2, v1, Lpp;->mFriendActionCompleteCallback:Lpp$a;

    invoke-virtual {v1}, Lpp;->e()Lpp;

    move-result-object v1

    sget-object v2, Lic;->CHECKMARK:Lic;

    iput-object v2, v1, Lpp;->mActionMethod:Lic;

    iget v2, p0, Lasn$a;->a:I

    iput v2, v1, Lpp;->mFriendIndex:I

    invoke-virtual {v1}, Lpp;->f()V

    .line 143
    iget-object v1, p0, Lasn$a;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lasn$a;->f:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lasn$a;->d:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v4, p0, Lasn$a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 144
    return-void

    .line 126
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    .line 127
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lasn$a;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
