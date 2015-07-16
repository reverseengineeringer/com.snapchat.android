.class final Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Lml;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lml;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lml;J)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$2;->a:Lml;

    iput-wide p2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$2;->a:Lml;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lml;->userId:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$2;->a:Lml;

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$2;->b:J

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Lht;J)J

    .line 115
    return-void
.end method
