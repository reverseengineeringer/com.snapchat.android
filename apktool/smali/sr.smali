.class public final Lsr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbuj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbuj",
        "<",
        "Lsq;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCashAuthManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lxn;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ltl;",
            ">;"
        }
    .end annotation
.end field

.field private final mSquareOkHttpClientFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Luj;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeInjector:Lbuj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbuj",
            "<",
            "Ltv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lsr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lsr;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbuj;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuj",
            "<",
            "Ltv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lxn;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Luj;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ltl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-boolean v0, Lsr;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lsr;->supertypeInjector:Lbuj;

    .line 21
    sget-boolean v0, Lsr;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_1
    iput-object p2, p0, Lsr;->mCashAuthManagerProvider:Ljavax/inject/Provider;

    .line 23
    sget-boolean v0, Lsr;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_2
    iput-object p3, p0, Lsr;->mSquareOkHttpClientFactoryProvider:Ljavax/inject/Provider;

    .line 25
    sget-boolean v0, Lsr;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_3
    iput-object p4, p0, Lsr;->mEntityFactoryProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method public static a(Lbuj;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbuj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuj",
            "<",
            "Ltv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lxn;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Luj;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ltl;",
            ">;)",
            "Lbuj",
            "<",
            "Lsq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lsr;

    invoke-direct {v0, p0, p1, p2, p3}, Lsr;-><init>(Lbuj;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 11
    check-cast p1, Lsq;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsr;->supertypeInjector:Lbuj;

    invoke-interface {v0, p1}, Lbuj;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lsr;->mCashAuthManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxn;

    iput-object v0, p1, Lsq;->mCashAuthManager:Lxn;

    iget-object v0, p0, Lsr;->mSquareOkHttpClientFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luj;

    iput-object v0, p1, Lsq;->mSquareOkHttpClientFactory:Luj;

    iget-object v0, p0, Lsr;->mEntityFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltl;

    iput-object v0, p1, Lsq;->mEntityFactory:Ltl;

    return-void
.end method
