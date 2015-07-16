.class public final Laks;
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
        "Lakp;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCashProviderManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lqx;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlightlySecurePreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Laze;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserDatabaseLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Laks;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laks;->$assertionsDisabled:Z

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
            "Laze;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lqx;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lakq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Laks;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Laks;->mSlightlySecurePreferencesProvider:Ljavax/inject/Provider;

    .line 18
    sget-boolean v0, Laks;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_1
    iput-object p2, p0, Laks;->mCashProviderManagerProvider:Ljavax/inject/Provider;

    .line 20
    sget-boolean v0, Laks;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_2
    iput-object p3, p0, Laks;->mUserDatabaseLoaderProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbvk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Laze;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lqx;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lakq;",
            ">;)",
            "Lbvk",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Laks;

    invoke-direct {v0, p0, p1, p2}, Laks;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 9
    check-cast p1, Lakp;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Laks;->mSlightlySecurePreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laze;

    iput-object v0, p1, Lakp;->mSlightlySecurePreferences:Laze;

    iget-object v0, p0, Laks;->mCashProviderManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqx;

    iput-object v0, p1, Lakp;->mCashProviderManager:Lqx;

    iget-object v0, p0, Laks;->mUserDatabaseLoaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakq;

    iput-object v0, p1, Lakp;->mUserDatabaseLoader:Lakq;

    return-void
.end method
