.class public final Latm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Latm;

.field private final c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private final d:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/snapchat/android/model/Friend;


# direct methods
.method public constructor <init>(Latm;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Latm$a;->b:Latm;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Latm$a;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 103
    iput-object p3, p0, Latm$a;->d:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 104
    iput-object p4, p0, Latm$a;->e:Ljava/lang/String;

    .line 105
    iput-object p5, p0, Latm$a;->f:Lcom/snapchat/android/model/Friend;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Latm$a;->a:I

    .line 107
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-object v0, p0, Latm$a;->b:Latm;

    iget-object v0, v0, Latm;->R:Laga;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Latm$a;->b:Latm;

    iget-object v0, v0, Latm;->R:Laga;

    invoke-virtual {v0}, Laga;->d()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    iget-object v1, p0, Latm$a;->b:Latm;

    iget-object v1, v1, Latm;->R:Laga;

    iget-boolean v1, v1, Laga;->k:Z

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Latm$a;->b:Latm;

    iget-object v3, p0, Latm$a;->b:Latm;

    iget-object v3, v3, Latm;->R:Laga;

    invoke-virtual {v3}, Laga;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v4, p0, Latm$a;->b:Latm;

    iget-object v4, v4, Latm;->R:Laga;

    invoke-virtual {v4}, Laga;->c()I

    move-result v4

    invoke-virtual {v1, v3, v0, v4}, Latm;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;II)V

    .line 121
    iget-object v0, p0, Latm$a;->b:Latm;

    iget-object v0, v0, Latm;->R:Laga;

    iput-boolean v2, v0, Laga;->k:Z

    .line 128
    :cond_0
    iget-object v0, p0, Latm$a;->b:Latm;

    iget-object v0, v0, Latm;->S:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 129
    if-eqz v1, :cond_2

    .line 130
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    .line 131
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    iget-object v3, p0, Latm$a;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(Ljava/lang/String;)V

    .line 142
    :cond_1
    :goto_0
    iget-object v3, p0, Latm$a;->b:Latm;

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3, v2, v1}, Latm;->a(ZZ)V

    .line 143
    new-instance v1, Lqg;

    iget-object v2, p0, Latm$a;->f:Lcom/snapchat/android/model/Friend;

    invoke-direct {v1, v2, v0}, Lqg;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    iget-object v2, p0, Latm$a;->d:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iput-object v2, v1, Lqg;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v2, p0, Latm$a;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v2, v1, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v2, p0, Latm$a;->b:Latm;

    iput-object v2, v1, Lqg;->mFriendActionCompleteCallback:Lqg$a;

    invoke-virtual {v1}, Lqg;->a()Lqg;

    move-result-object v1

    sget-object v2, Lil;->CHECKMARK:Lil;

    iput-object v2, v1, Lqg;->mActionMethod:Lil;

    iget v2, p0, Latm$a;->a:I

    iput v2, v1, Lqg;->mFriendIndex:I

    invoke-virtual {v1}, Lqg;->execute()V

    .line 152
    iget-object v1, p0, Latm$a;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Latm$a;->f:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Latm$a;->d:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v4, p0, Latm$a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 153
    return-void

    .line 135
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    .line 136
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    iget-object v3, p0, Latm$a;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
