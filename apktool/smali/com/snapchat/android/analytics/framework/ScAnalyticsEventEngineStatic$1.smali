.class final Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Lmk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmk;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lmk;J)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$1;->a:Lmk;

    iput-wide p2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$1;->a:Lmk;

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$1;->b:J

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Lht;J)J

    .line 99
    return-void
.end method
