.class final Laev$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lafq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laev;


# direct methods
.method constructor <init>(Laev;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Laev$3;->a:Laev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Laev$3;->a:Laev;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v1, v0, Laev;->h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 445
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public final p_()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Laev$3;->a:Laev;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->COMPLETED:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v1, v0, Laev;->h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 436
    return-void
.end method
