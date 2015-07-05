.class final Ladv$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laeq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladv;


# direct methods
.method constructor <init>(Ladv;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Ladv$3;->a:Ladv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Ladv$3;->a:Ladv;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v1, v0, Ladv;->h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 434
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public final r_()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Ladv$3;->a:Ladv;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->COMPLETED:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v1, v0, Ladv;->h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 425
    return-void
.end method
