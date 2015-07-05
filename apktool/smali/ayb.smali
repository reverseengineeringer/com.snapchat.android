.class public final Layb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbuo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbuo",
        "<",
        "Laya;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final apiTaskFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lpk;",
            ">;"
        }
    .end annotation
.end field

.field private final developerSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lazn;",
            ">;"
        }
    .end annotation
.end field

.field private final gsonWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lato;",
            ">;"
        }
    .end annotation
.end field

.field private final slightlySecurePreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Layg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Layb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Layb;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Layg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lato;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lpk;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lazn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Layb;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Layb;->slightlySecurePreferencesProvider:Ljavax/inject/Provider;

    .line 20
    sget-boolean v0, Layb;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_1
    iput-object p2, p0, Layb;->gsonWrapperProvider:Ljavax/inject/Provider;

    .line 22
    sget-boolean v0, Layb;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_2
    iput-object p3, p0, Layb;->apiTaskFactoryProvider:Ljavax/inject/Provider;

    .line 24
    sget-boolean v0, Layb;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_3
    iput-object p4, p0, Layb;->developerSettingsProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbuo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Layg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lato;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lpk;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lazn;",
            ">;)",
            "Lbuo",
            "<",
            "Laya;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Layb;

    invoke-direct {v0, p0, p1, p2, p3}, Layb;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 10
    new-instance v4, Laya;

    iget-object v0, p0, Layb;->slightlySecurePreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layg;

    iget-object v1, p0, Layb;->gsonWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lato;

    iget-object v2, p0, Layb;->apiTaskFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpk;

    iget-object v3, p0, Layb;->developerSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lazn;

    invoke-direct {v4, v0, v1, v2, v3}, Laya;-><init>(Layg;Lato;Lpk;Lazn;)V

    return-object v4
.end method
