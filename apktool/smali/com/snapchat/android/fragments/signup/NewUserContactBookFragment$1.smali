.class final Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 82
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$1;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 91
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->J()V

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$1;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)Lcom/snapchat/android/analytics/RegistrationAnalytics;

    new-instance v0, Lkf;

    invoke-direct {v0}, Lkf;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 94
    :cond_0
    return-void
.end method
