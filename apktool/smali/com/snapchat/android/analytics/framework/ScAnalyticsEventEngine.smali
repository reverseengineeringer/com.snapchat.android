.class public Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    }
.end annotation


# static fields
.field public static final a:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Landroid/content/Context;Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;)V

    .line 43
    return-void
.end method

.method public static a(Lls;)V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Lls;)V

    .line 59
    return-void
.end method

.method public static a(Llt;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Llt;)V

    .line 51
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b()V

    .line 73
    return-void
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 79
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c()V

    .line 80
    return-void
.end method
