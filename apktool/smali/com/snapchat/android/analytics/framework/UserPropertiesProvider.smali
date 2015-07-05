.class public Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;


# static fields
.field private static final a:Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;->a:Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;->b:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static d()Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;->a:Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lbfs;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 40
    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lajv;->p()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method
