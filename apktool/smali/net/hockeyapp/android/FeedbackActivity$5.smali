.class final Lnet/hockeyapp/android/FeedbackActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$5;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 687
    sget-object v0, Lbxj$a;->a:Lbxj;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$5;->a:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbxj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$5;->a:Lnet/hockeyapp/android/FeedbackActivity;

    const-string v1, "net.hockeyapp.android.feedback"

    invoke-virtual {v0, v1, v3}, Lnet/hockeyapp/android/FeedbackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 690
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "idLastMessageSend"

    .line 691
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "idLastMessageProcessed"

    .line 692
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 690
    invoke-static {v0}, Lbxj;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 694
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$5;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V

    .line 695
    return-void
.end method
