.class Lcom/snapchat/android/analytics/framework/EasyMetric$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/framework/EasyMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/analytics/framework/EasyMetric;


# direct methods
.method constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric;Z)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$1;->b:Lcom/snapchat/android/analytics/framework/EasyMetric;

    iput-boolean p2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$1;->b:Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-boolean v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$1;->a:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Z)V

    .line 367
    return-void
.end method
