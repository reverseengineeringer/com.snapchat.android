.class public Lcom/snapchat/android/analytics/framework/ErrorMetric;
.super Lcom/snapchat/android/analytics/framework/EasyMetric;
.source "SourceFile"


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "ErrorMetric"

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/ErrorMetric;->f:Ljava/lang/String;

    .line 16
    const-string v0, "DEVICE"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 17
    const-string v0, "SDK_INT"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;
    .locals 2

    .prologue
    .line 21
    const-string v0, "error_message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 22
    return-object p0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reporting Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    return-void
.end method
