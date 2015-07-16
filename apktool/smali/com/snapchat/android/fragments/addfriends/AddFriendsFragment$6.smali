.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProfileSearchClear  - Unknown context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)I

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laga;->k:Z

    .line 310
    return-void

    .line 306
    :pswitch_1
    new-instance v0, Lkm;

    invoke-direct {v0}, Lkm;-><init>()V

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkm;->charCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lja;

    invoke-direct {v0}, Lja;-><init>()V

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lja;->charCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljq;

    invoke-direct {v0}, Ljq;-><init>()V

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljq;->charCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lka;

    invoke-direct {v0}, Lka;-><init>()V

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lka;->charCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
