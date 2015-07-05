.class final Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v4, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->b(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)Lafa;

    move-result-object v0

    invoke-virtual {v0}, Lafa;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, v4, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    :goto_2
    move v3, v0

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(ZI)V

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->d:Lafa;

    iget-object v1, v1, Lafa;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-static {v3, v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(III)V

    int-to-long v2, v3

    int-to-long v0, v0

    iget-object v4, v4, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->d:Lafa;

    iget-object v4, v4, Lafa;->d:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    int-to-long v4, v4

    new-instance v6, Lkb;

    invoke-direct {v6}, Lkb;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lkb;->contactFoundCount:Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lkb;->friendAddCount:Ljava/lang/Long;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lkb;->contactInviteCount:Ljava/lang/Long;

    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 156
    :goto_3
    return-void

    .line 155
    :cond_3
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->I()V

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_2
.end method
