.class final Lazg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazg;->a(Landroid/app/Activity;Lazv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lazg;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$shakeReporter:Lazv;


# direct methods
.method constructor <init>(Lazg;Landroid/app/Activity;Lazv;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lazg$1;->this$0:Lazg;

    iput-object p2, p0, Lazg$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lazg$1;->val$shakeReporter:Lazv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 56
    iget-object v1, p0, Lazg$1;->this$0:Lazg;

    iget-object v4, p0, Lazg$1;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lazg$1;->val$shakeReporter:Lazv;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Lazg;->a(Landroid/view/View;Ljava/util/Map;)V

    instance-of v0, v4, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Lbgp;->a(J)V

    new-instance v0, Lazg$6;

    invoke-direct/range {v0 .. v5}, Lazg$6;-><init>(Lazg;Landroid/view/View;Ljava/util/Map;Landroid/app/Activity;Lazv;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lazg$7;

    invoke-direct/range {v0 .. v5}, Lazg$7;-><init>(Lazg;Landroid/view/View;Ljava/util/Map;Landroid/app/Activity;Lazv;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
