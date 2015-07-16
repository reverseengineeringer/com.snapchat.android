.class public Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;
.super Lul;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask$RequestPayload;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lul;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public synthetic getRequestPayload()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask$RequestPayload;

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask$RequestPayload;-><init>(Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dummy"

    invoke-static {v1}, Lbal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/analytics/bz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
