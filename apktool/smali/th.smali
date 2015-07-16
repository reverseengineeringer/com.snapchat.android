.class public final Lth;
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
        "Ltg;",
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
            "Lyj;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lub;",
            ">;"
        }
    .end annotation
.end field

.field private final mSquareOkHttpClientFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lva;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeInjector:Lbvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbvk",
            "<",
            "Lul;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lth;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lth;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbvk;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Lul;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lyj;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lva;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lub;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-boolean v0, Lth;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lth;->supertypeInjector:Lbvk;

    .line 21
    sget-boolean v0, Lth;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_1
    iput-object p2, p0, Lth;->mCashAuthManagerProvider:Ljavax/inject/Provider;

    .line 23
    sget-boolean v0, Lth;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_2
    iput-object p3, p0, Lth;->mSquareOkHttpClientFactoryProvider:Ljavax/inject/Provider;

    .line 25
    sget-boolean v0, Lth;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_3
    iput-object p4, p0, Lth;->mEntityFactoryProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method public static a(Lbvk;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbvk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Lul;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lyj;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lva;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lub;",
            ">;)",
            "Lbvk",
            "<",
            "Ltg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lth;

    invoke-direct {v0, p0, p1, p2, p3}, Lth;-><init>(Lbvk;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 11
    check-cast p1, Ltg;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lth;->supertypeInjector:Lbvk;

    invoke-interface {v0, p1}, Lbvk;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lth;->mCashAuthManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj;

    iput-object v0, p1, Ltg;->mCashAuthManager:Lyj;

    iget-object v0, p0, Lth;->mSquareOkHttpClientFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva;

    iput-object v0, p1, Ltg;->mSquareOkHttpClientFactory:Lva;

    iget-object v0, p0, Lth;->mEntityFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lub;

    iput-object v0, p1, Ltg;->mEntityFactory:Lub;

    return-void
.end method
