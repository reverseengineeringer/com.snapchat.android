.class public final Laup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private iUrl:Ljava/lang/String;

.field final synthetic this$0:Laup;


# direct methods
.method public constructor <init>(Laup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Laup$a;->this$0:Laup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p2, p0, Laup$a;->iUrl:Ljava/lang/String;

    .line 579
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 583
    iget-object v0, p0, Laup$a;->iUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Ljava/lang/String;)V

    .line 584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Laup$a;->iUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 585
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 586
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/SnapchatApplication;->startActivity(Landroid/content/Intent;)V

    .line 587
    return-void
.end method
