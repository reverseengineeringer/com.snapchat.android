.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;I)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    iput p2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->s(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->a:I

    if-lez v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    iget v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;I)V

    .line 1023
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1019
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1020
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1021
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
