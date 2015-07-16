.class public Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask$RequestPayload;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "events"
    .end annotation
.end field

.field final synthetic b:Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask$RequestPayload;->b:Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask$RequestPayload;->a:Ljava/lang/String;

    .line 46
    return-void
.end method
