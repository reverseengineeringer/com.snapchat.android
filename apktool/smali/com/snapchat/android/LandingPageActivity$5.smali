.class final Lcom/snapchat/android/LandingPageActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/fragment/SnapchatFragment;

.field final synthetic b:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/fragment/SnapchatFragment;)V
    .locals 0

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$5;->b:Lcom/snapchat/android/LandingPageActivity;

    iput-object p2, p0, Lcom/snapchat/android/LandingPageActivity$5;->a:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$5;->a:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 1751
    return-void
.end method
