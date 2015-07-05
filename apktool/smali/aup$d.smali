.class public final Laup$d;
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
    name = "d"
.end annotation


# instance fields
.field private iActivityContext:Landroid/content/Context;

.field private iProvider:Laio;

.field private iSnapToReplay:Laje;

.field final synthetic this$0:Laup;


# direct methods
.method public constructor <init>(Laup;Laje;Laio;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Laup$d;->this$0:Laup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p2, p0, Laup$d;->iSnapToReplay:Laje;

    .line 454
    iput-object p4, p0, Laup$d;->iActivityContext:Landroid/content/Context;

    .line 455
    iput-object p3, p0, Laup$d;->iProvider:Laio;

    .line 456
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 460
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lajv;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Laup$d;->iActivityContext:Landroid/content/Context;

    iget-object v1, p0, Laup$d;->iSnapToReplay:Laje;

    iget-object v2, p0, Laup$d;->iProvider:Laio;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Laje;Laio;)V

    .line 463
    iget-object v0, p0, Laup$d;->iSnapToReplay:Laje;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Laje;)V

    .line 465
    :cond_0
    return-void
.end method
