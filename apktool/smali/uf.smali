.class public final Luf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbvp",
        "<",
        "Lue;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Laum;",
            ">;"
        }
    .end annotation
.end field

.field private final membersInjector:Lbvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbvk",
            "<",
            "Lue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Luf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Luf;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbvk;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Lue;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Laum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-boolean v0, Luf;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Luf;->membersInjector:Lbvk;

    .line 17
    sget-boolean v0, Luf;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_1
    iput-object p2, p0, Luf;->gsonProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static a(Lbvk;Ljavax/inject/Provider;)Lbvp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Lue;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Laum;",
            ">;)",
            "Lbvp",
            "<",
            "Lue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Luf;

    invoke-direct {v0, p0, p1}, Luf;-><init>(Lbvk;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    new-instance v1, Lue;

    iget-object v0, p0, Luf;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laum;

    invoke-direct {v1, v0}, Lue;-><init>(Laum;)V

    iget-object v0, p0, Luf;->membersInjector:Lbvk;

    invoke-interface {v0, v1}, Lbvk;->a(Ljava/lang/Object;)V

    return-object v1
.end method
