.class public final Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbvk",
        "<",
        "Lcom/snapchat/android/analytics/framework/EasyMetric;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-boolean v0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->b:Ljavax/inject/Provider;

    .line 16
    sget-boolean v0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_1
    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->c:Ljavax/inject/Provider;

    .line 18
    sget-boolean v0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_2
    iput-object p3, p0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->d:Ljavax/inject/Provider;

    .line 20
    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbvk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;",
            ">;)",
            "Lbvk",
            "<",
            "Lcom/snapchat/android/analytics/framework/EasyMetric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 7
    check-cast p1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    iput-object v0, p1, Lcom/snapchat/android/analytics/framework/EasyMetric;->c:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    iput-object v0, p1, Lcom/snapchat/android/analytics/framework/EasyMetric;->d:Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric_MembersInjector;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    iput-object v0, p1, Lcom/snapchat/android/analytics/framework/EasyMetric;->e:Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    return-void
.end method
