.class public final Lavn$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private iActivityContext:Landroid/content/Context;

.field private iProvider:Lajk;

.field private iSnapToReplay:Laka;

.field final synthetic this$0:Lavn;


# direct methods
.method public constructor <init>(Lavn;Laka;Lajk;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lavn$d;->this$0:Lavn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p2, p0, Lavn$d;->iSnapToReplay:Laka;

    .line 472
    iput-object p4, p0, Lavn$d;->iActivityContext:Landroid/content/Context;

    .line 473
    iput-object p3, p0, Lavn$d;->iProvider:Lajk;

    .line 474
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 478
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lakp;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lavn$d;->iActivityContext:Landroid/content/Context;

    iget-object v1, p0, Lavn$d;->iSnapToReplay:Laka;

    iget-object v2, p0, Lavn$d;->iProvider:Lajk;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Laka;Lajk;)V

    .line 481
    iget-object v0, p0, Lavn$d;->iSnapToReplay:Laka;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Laka;)V

    .line 483
    :cond_0
    return-void
.end method
