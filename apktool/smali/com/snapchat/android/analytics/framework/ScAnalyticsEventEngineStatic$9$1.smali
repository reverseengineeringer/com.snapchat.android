.class Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;


# direct methods
.method constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9$1;->a:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 493
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->t()V

    .line 494
    return-void
.end method
